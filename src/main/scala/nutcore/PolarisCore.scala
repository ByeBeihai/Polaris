/**************************************************************************************
* Copyright (c) 2025 Institute of Computing Technology, CAS
* Copyright (c) 2025 University of Chinese Academy of Sciences
* 
* polaris is licensed under Mulan PSL v2.
* You can use this software according to the terms and conditions of the Mulan PSL v2. 
* You may obtain a copy of Mulan PSL v2 at:
*             http://license.coscl.org.cn/MulanPSL2 
* 
* THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER 
* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT, MERCHANTABILITY OR 
* FIT FOR A PARTICULAR PURPOSE.  
*
* See the Mulan PSL v2 for more details.  
***************************************************************************************/

/**************************************************************************************
* Copyright (c) 2020 Institute of Computing Technology, CAS
* Copyright (c) 2020 University of Chinese Academy of Sciences
* 
* NutShell is licensed under Mulan PSL v2.
* You can use this software according to the terms and conditions of the Mulan PSL v2. 
* You may obtain a copy of Mulan PSL v2 at:
*             http://license.coscl.org.cn/MulanPSL2 
* 
* THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER 
* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT, MERCHANTABILITY OR 
* FIT FOR A PARTICULAR PURPOSE.  
*
* See the Mulan PSL v2 for more details.  
***************************************************************************************/
/**************************************************************************************
* Reference:
* Zong, J., Wang, J., Li, G., Wu, R., Zhao D.*, Polaris 23: a high throughput neuromorphic processing element by RISC-V customized instruction extension for spiking neural network (RV-SNN 2.0) and SIMD-style implementation of LIF model with backpropagation STDP. J Supercomput 81, 398 (2025)
***************************************************************************************/

package polaris

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import bus.simplebus._
import bus.axi4._
import utils._
import top.Settings

trait HasPolarisCoreParameter {
  // General Parameter for NutShell
  val XLEN = if (Settings.get("IsRV32")) 32 else 64
  val HasMExtension = true
  val HasCExtension = Settings.get("EnableRVC")
  val HasDiv = true
  val HasIcache = Settings.get("HasIcache")
  val HasDcache = Settings.get("HasDcache")
  val HasITLB = Settings.get("HasITLB")
  val HasDTLB = Settings.get("HasDTLB")
  val AddrBits = 64 // AddrBits is used in some cases
  val VAddrBits = if (Settings.get("IsRV32")) 32 else 39 // VAddrBits is Virtual Memory addr bits
  val PAddrBits = 32 // PAddrBits is Phyical Memory addr bits
  val AddrBytes = AddrBits / 8 // unused
  val DataBits = XLEN
  val DataBytes = DataBits / 8
  val EnableVirtualMemory = if (Settings.get("HasDTLB") && Settings.get("HasITLB")) true else false
  val EnablePerfCnt = true
  // Parameter for Argo's OoO backend
  val EnableMultiIssue = Settings.get("EnableMultiIssue")
  val EnableOutOfOrderExec = Settings.get("EnableOutOfOrderExec")
  val EnableMultiCyclePredictor = false // false unless a customized condition branch predictor is included
  val EnableOutOfOrderMemAccess = false // enable out of order mem access will improve OoO backend's performance
  //parameter for SIMD backend
  val Issue_Num = Settings.getInt("Issue_Num")
  val Queue_num = 32
  val Polaris_Independent_Bru = Settings.getInt("Polaris_Independent_Bru") //0 or 1
  val Polaris_SIMDU_WAY_NUM = Settings.getInt("Polaris_SIMDU_WAY_NUM")   //1 or 2
  val Polaris_SNN_WAY_NUM = Settings.getInt("Polaris_SNN_WAY_NUM")// 1 or 2
  val Forward_num = 4 + Polaris_SIMDU_WAY_NUM + Polaris_SNN_WAY_NUM
  val Commit_num = 3
  
}

trait HasPolarisCoreConst extends HasPolarisCoreParameter {
  val CacheReadWidth = 8
  val ICacheUserBundleWidth = VAddrBits*2 + 9
  val DCacheUserBundleWidth = 16
  val IndependentBru = if (Settings.get("EnableOutOfOrderExec")) true else false
}

trait HasPolarisLog { this: RawModule =>
  implicit val moduleName: String = this.name
}

abstract class PolarisCoreModule extends Module with HasPolarisCoreParameter with HasPolarisCoreConst with HasExceptionNO with HasBackendConst with HasPolarisLog
abstract class PolarisCoreBundle extends Bundle with HasPolarisCoreParameter with HasPolarisCoreConst with HasBackendConst

case class PolarisConfig (
  FPGAPlatform: Boolean = true,
  EnableDebug: Boolean = Settings.get("EnableDebug"),
  EnhancedLog: Boolean = true 
)
// Enable EnhancedLog will slow down simulation, 
// but make it possible to control debug log using emu parameter

object AddressSpace extends HasPolarisCoreParameter {
  // (start, size)
  // address out of MMIO will be considered as DRAM
  def mmio = List(
    //(0x02000000L,0x00010000L),
    (0x30000000L, 0x40000000L),  // internal devices, such as CLINT and PLIC
    (Settings.getLong("MMIOBase"), Settings.getLong("MMIOSize")) // external devices
  )

  def isMMIO(addr: UInt) = mmio.map(range => {
    require(isPow2(range._2))
    val bits = log2Up(range._2)
    (addr >= range._1.U) && (addr < (range._1 + range._2).U)
  }).reduce(_ || _)
}

class PolarisCore(implicit val p: PolarisConfig) extends PolarisCoreModule {
  class PolarisIO extends Bundle {
    val imem = new SimpleBusC
    val dmem = new SimpleBusC
    val mmio = new SimpleBusUC
    val frontend = Flipped(new SimpleBusUC())
  }
  val io = IO(new PolarisIO)

  // Frontend
  val frontend = Module(new Frontend_SIMD)
  
  // Backend
  /*
  if (EnableOutOfOrderExec) {
    val mmioXbar = Module(new SimpleBusCrossbarNto1(if (HasDcache) 2 else 3))
    val backend = Module(new Backend_ooo)
    PipelineVector2Connect(new DecodeIO, frontend.io.out(0), frontend.io.out(1), backend.io.in(0), backend.io.in(1), frontend.io.flushVec(1), 16)
    backend.io.flush := frontend.io.flushVec(2)
    frontend.io.redirect <> backend.io.redirect

    val dmemXbar = Module(new SimpleBusAutoIDCrossbarNto1(4, userBits = if (HasDcache) DCacheUserBundleWidth else 0))

    val itlb = TLB(in = frontend.io.imem, mem = dmemXbar.io.in(2), flush = frontend.io.flushVec(0) | frontend.io.bpFlush, csrMMU = backend.io.memMMU.imem)(TLBConfig(name = "itlb", userBits = ICacheUserBundleWidth, totalEntry = 4))
    frontend.io.ipf := itlb.io.ipf
    io.imem <> Cache(in = itlb.io.out, mmio = mmioXbar.io.in.take(1), flush = Fill(2, frontend.io.flushVec(0) | frontend.io.bpFlush), empty = itlb.io.cacheEmpty)(
      CacheConfig(ro = true, name = "icache", userBits = ICacheUserBundleWidth)
    )
    
    val dtlb = TLB(in = backend.io.dtlb, mem = dmemXbar.io.in(1), flush = frontend.io.flushVec(3), csrMMU = backend.io.memMMU.dmem)(TLBConfig(name = "dtlb", userBits = DCacheUserBundleWidth, totalEntry = 64))
    dtlb.io.out := DontCare //FIXIT
    dtlb.io.out.req.ready := true.B //FIXIT

    if (EnableVirtualMemory) {
      dmemXbar.io.in(3) <> backend.io.dmem
      io.dmem <> Cache(in = dmemXbar.io.out, mmio = mmioXbar.io.in.drop(1), flush = "b00".U, empty = dtlb.io.cacheEmpty, enable = HasDcache)(
        CacheConfig(ro = false, name = "dcache", userBits = DCacheUserBundleWidth, idBits = 4))
    } else {
      dmemXbar.io.in(1) := DontCare
      dmemXbar.io.in(3) := DontCare
      dmemXbar.io.out := DontCare
      io.dmem <> Cache(in = backend.io.dmem, mmio = mmioXbar.io.in.drop(1), flush = "b00".U, empty = dtlb.io.cacheEmpty, enable = HasDcache)(
        CacheConfig(ro = false, name = "dcache", userBits = DCacheUserBundleWidth))
    }

    // Make DMA access through L1 DCache to keep coherence
    val expender = Module(new SimpleBusUCExpender(userBits = DCacheUserBundleWidth, userVal = 0.U))
    expender.io.in <> io.frontend
    dmemXbar.io.in(0) <> expender.io.out

    io.mmio <> mmioXbar.io.out

  } else {
    */
    val backend = Module(new new_Backend_inorder)
    //newPipelineVector2Connect(new DecodeIO, frontend.io.out(0), frontend.io.out(1), backend.io.in(0), backend.io.in(1),backend.io.isufire(0),backend.io.isufire(1) ,frontend.io.flushVec(1), 4)
    PipelineVector2Connect(new DecodeIO, frontend.io.out(0), frontend.io.out(1), backend.io.in(0), backend.io.in(1),frontend.io.flushVec(1), 8)
    //backend.io.in :=DontCare
    //frontend.io.out(1).ready := false.B
    //PipelineConnect(frontend.io.out(0), backend.io.in(0), backend.io.isufire(0), frontend.io.flushVec(1))
    //PipelineConnect(frontend.io.out(1), backend.io.in(1), backend.io.isufire(1), frontend.io.flushVec(1))

    val mmioXbar = Module(new SimpleBusCrossbarNto1(2))
    val dmemXbar = Module(new SimpleBusCrossbarNto1(4))

    val itlb = EmbeddedTLB(in = frontend.io.imem, mem = dmemXbar.io.in(1), flush = frontend.io.flushVec(0) | frontend.io.bpFlush, csrMMU = backend.io.memMMU.imem, enable = HasITLB)(TLBConfig(name = "itlb", userBits = ICacheUserBundleWidth, totalEntry = 8))
    frontend.io.ipf := itlb.io.ipf
    io.imem <> Cache(in = itlb.io.out, mmio = mmioXbar.io.in.take(1), flush = Fill(2, frontend.io.flushVec(0) | frontend.io.bpFlush), empty = itlb.io.cacheEmpty, enable = HasIcache)(CacheConfig(ro = true, name = "icache", userBits = ICacheUserBundleWidth))
    
    // dtlb
    val dtlb = EmbeddedTLB(in = backend.io.dmem, mem = dmemXbar.io.in(2), flush = backend.io.flush(0), csrMMU = backend.io.memMMU.dmem, enable = HasDTLB)(TLBConfig(name = "dtlb", totalEntry = 128))
    dmemXbar.io.in(0) <> dtlb.io.out
    io.dmem <> Cache(in = dmemXbar.io.out, mmio = mmioXbar.io.in.drop(1), flush = "b00".U, empty = dtlb.io.cacheEmpty, enable = HasDcache)(CacheConfig(ro = false, name = "dcache"))

    // redirect
    frontend.io.redirect <> backend.io.redirect
    backend.io.flush := frontend.io.flushVec(3,2)

    // Make DMA access through L1 DCache to keep coherence
    dmemXbar.io.in(3) <> io.frontend

    io.mmio <> mmioXbar.io.out
  //}
}
