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

package polaris

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import top.Settings
import difftest._

object CSROpType {
  def jmp  = "b000".U
  def wrt  = "b001".U
  def set  = "b010".U
  def clr  = "b011".U
  def wrti = "b101".U
  def seti = "b110".U
  def clri = "b111".U
}

trait HasCSRConst {
  // User Trap Setup
  val Ustatus       = 0x000 
  val Uie           = 0x004
  val Utvec         = 0x005
  
  // User Trap Handling
  val Uscratch      = 0x040
  val Uepc          = 0x041
  val Ucause        = 0x042
  val Utval         = 0x043
  val Uip           = 0x044

  // User Floating-Point CSRs (not implemented)
  val Fflags        = 0x001
  val Frm           = 0x002
  val Fcsr          = 0x003

  // User Counter/Timers
  val Cycle         = 0xC00
  val Time          = 0xC01
  val Instret       = 0xC02
  
  // Supervisor Trap Setup
  val Sstatus       = 0x100
  val Sedeleg       = 0x102
  val Sideleg       = 0x103
  val Sie           = 0x104
  val Stvec         = 0x105
  val Scounteren    = 0x106

  // Supervisor Trap Handling
  val Sscratch      = 0x140
  val Sepc          = 0x141
  val Scause        = 0x142
  val Stval         = 0x143
  val Sip           = 0x144

  // Supervisor Protection and Translation
  val Satp          = 0x180

  // Machine Information Registers 
  val Mvendorid     = 0xF11 
  val Marchid       = 0xF12 
  val Mimpid        = 0xF13 
  val Mhartid       = 0xF14 

  // Machine Trap Setup
  val Mstatus       = 0x300
  val Misa          = 0x301
  val Medeleg       = 0x302
  val Mideleg       = 0x303
  val Mie           = 0x304
  val Mtvec         = 0x305
  val Mcounteren    = 0x306 

  // Machine Trap Handling
  val Mscratch      = 0x340 
  val Mepc          = 0x341
  val Mcause        = 0x342
  val Mtval         = 0x343
  val Mip           = 0x344

  // Machine Memory Protection
  // TBD
  val Pmpcfg0       = 0x3A0
  val Pmpcfg1       = 0x3A1
  val Pmpcfg2       = 0x3A2
  val Pmpcfg3       = 0x3A3
  val PmpaddrBase   = 0x3B0 

  val VXSAT         = 0x009
  
  // Machine Counter Setup (not implemented)
  // Debug/Trace Registers (shared with Debug Mode) (not implemented)
  // Debug Mode Registers (not implemented)

  def privEcall  = 0x000.U
  def privEbreak = 0x001.U
  def privMret   = 0x302.U
  def privSret   = 0x102.U
  def privUret   = 0x002.U

  def ModeM     = 0x3.U
  def ModeH     = 0x2.U
  def ModeS     = 0x1.U
  def ModeU     = 0x0.U

  def IRQ_UEIP  = 0 
  def IRQ_SEIP  = 1
  def IRQ_MEIP  = 3 

  def IRQ_UTIP  = 4 
  def IRQ_STIP  = 5 
  def IRQ_MTIP  = 7 

  def IRQ_USIP  = 8 
  def IRQ_SSIP  = 9 
  def IRQ_MSIP  = 11 

  val IntPriority = Seq(
    IRQ_MEIP, IRQ_MSIP, IRQ_MTIP,
    IRQ_SEIP, IRQ_SSIP, IRQ_STIP,
    IRQ_UEIP, IRQ_USIP, IRQ_UTIP
  )
}

trait HasExceptionNO {
  def instrAddrMisaligned = 0
  def instrAccessFault    = 1
  def illegalInstr        = 2
  def breakPoint          = 3
  def loadAddrMisaligned  = 4
  def loadAccessFault     = 5
  def storeAddrMisaligned = 6
  def storeAccessFault    = 7
  def ecallU              = 8
  def ecallS              = 9
  def ecallM              = 11
  def instrPageFault      = 12
  def loadPageFault       = 13
  def storePageFault      = 15

  val ExcPriority = Seq(
      breakPoint, // TODO: different BP has different priority
      instrPageFault,
      instrAccessFault,
      illegalInstr,
      instrAddrMisaligned,
      ecallM, ecallS, ecallU,
      storeAddrMisaligned,
      loadAddrMisaligned,
      storePageFault,
      loadPageFault,
      storeAccessFault,
      loadAccessFault
  )
}


class CSRIO extends FunctionUnitIO {
  val cfIn = Flipped(new CtrlFlowIO)
  val redirect = new RedirectIO
  // for exception check
  val instrValid = Input(Bool())
  val isBackendException = Input(Bool())
  // for differential testing
  val intrNO = Output(UInt(XLEN.W))
  val imemMMU = Flipped(new MMUIO)
  val dmemMMU = Flipped(new MMUIO)
  val wenFix = Output(Bool())
}

class CSR(implicit val p: PolarisConfig) extends PolarisCoreModule with HasCSRConst{
  val io = IO(new CSRIO)

  val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)
  def access(valid: Bool, src1: UInt, src2: UInt, func: UInt): UInt = {
    this.valid := valid
    this.src1 := src1
    this.src2 := src2
    this.func := func
    io.out.bits
  }

  // CSR define

  class Priv extends Bundle {
    val m = Output(Bool())
    val h = Output(Bool())
    val s = Output(Bool())
    val u = Output(Bool())
  }

  val csrNotImplemented = RegInit(UInt(XLEN.W), 0.U)
   
  class MstatusStruct extends Bundle {
    val sd = Output(UInt(1.W))

    val pad1 = if (XLEN == 64) Output(UInt(27.W)) else null
    val sxl  = if (XLEN == 64) Output(UInt(2.W))  else null
    val uxl  = if (XLEN == 64) Output(UInt(2.W))  else null
    val pad0 = if (XLEN == 64) Output(UInt(9.W))  else Output(UInt(8.W))

    val tsr = Output(UInt(1.W))
    val tw = Output(UInt(1.W))
    val tvm = Output(UInt(1.W))
    val mxr = Output(UInt(1.W))
    val sum = Output(UInt(1.W))
    val mprv = Output(UInt(1.W))
    val xs = Output(UInt(2.W))
    val fs = Output(UInt(2.W))
    val mpp = Output(UInt(2.W))
    val hpp = Output(UInt(2.W))
    val spp = Output(UInt(1.W))
    val pie = new Priv
    val ie = new Priv
  }

  class SatpStruct extends Bundle {
    val mode = UInt(4.W)
    val asid = UInt(16.W)
    val ppn  = UInt(44.W)
  }

  class Interrupt extends Bundle {
    val e = new Priv
    val t = new Priv
    val s = new Priv
  }

  // Machine-Level CSRs
  
  val mtvec = RegInit(UInt(XLEN.W), 0.U)
  val mcounteren = RegInit(UInt(XLEN.W), 0.U)
  val mcause = RegInit(UInt(XLEN.W), 0.U)
  val mtval = RegInit(UInt(XLEN.W), 0.U)
  val mepc = Reg(UInt(XLEN.W))

  val mie = RegInit(0.U(XLEN.W))
  val mipWire = WireInit(0.U.asTypeOf(new Interrupt))
  val mipReg  = RegInit(0.U.asTypeOf(new Interrupt).asUInt)
  val mipFixMask = "h77f".U
  val mip = (mipWire.asUInt | mipReg).asTypeOf(new Interrupt)

  def getMisaMxl(mxl: Int): UInt = {mxl.U << (XLEN-2)}
  def getMisaExt(ext: Char): UInt = {1.U << (ext.toInt - 'a'.toInt)} 
  var extList = List('a', 's', 'i', 'u')
  if(HasMExtension){ extList = extList :+ 'm'}
  if(HasCExtension){ extList = extList :+ 'c'}
  val misaInitVal = 1.U << 63 | 0x14112d.U //getMisaMxl(2) | extList.foldLeft(0.U)((sum, i) => sum | getMisaExt(i)) //"h8000000000141105".U 
  val misa = RegInit(UInt(XLEN.W), misaInitVal) 
  // MXL = 2          | 0 | EXT = b 00 0000 0100 0001 0001 0000 0101
  // (XLEN-1, XLEN-2) |   |(25, 0)  ZY XWVU TSRQ PONM LKJI HGFE DCBA

  val mvendorid = RegInit(UInt(XLEN.W), 0.U) // this is a non-commercial implementation
  val marchid = RegInit(UInt(XLEN.W), 0.U) // return 0 to indicate the field is not implemented
  val mimpid = RegInit(UInt(XLEN.W), 0.U) // provides a unique encoding of the version of the processor implementation
  val mhartid = RegInit(UInt(XLEN.W), 0.U) // the hardware thread running the code
  val mstatus = RegInit(UInt(XLEN.W), "h00001800".U)
  // val mstatus = RegInit(UInt(XLEN.W), "h8000c0100".U)
  // mstatus Value Table
  // | sd   |
  // | pad1 |
  // | sxl  | hardlinked to 10, use 00 to pass xv6 test  
  // | uxl  | hardlinked to 00
  // | pad0 |
  // | tsr  |
  // | tw   |
  // | tvm  |
  // | mxr  |
  // | sum  |
  // | mprv |
  // | xs   | 00 |
  // | fs   | 00 |
  // | mpp  | 00 |
  // | hpp  | 00 |
  // | spp  | 0 |
  // | pie  | 0000 |
  // | ie   | 0000 | uie hardlinked to 0, as N ext is not implemented
  val mstatusStruct = mstatus.asTypeOf(new MstatusStruct)
  def mstatusUpdateSideEffect(mstatus: UInt): UInt = {
    val mstatusOld = WireInit(mstatus.asTypeOf(new MstatusStruct))
    val mstatusNew = Cat(mstatusOld.fs === "b11".U, mstatus(XLEN-2, 0))
    mstatusNew
  }

  val medeleg = RegInit(UInt(XLEN.W), 0.U)
  val mideleg = RegInit(UInt(XLEN.W), 0.U)
  val mscratch = RegInit(UInt(XLEN.W), 0.U)

  val pmpcfg0 = RegInit(UInt(XLEN.W), 0.U)
  val pmpcfg1 = RegInit(UInt(XLEN.W), 0.U)
  val pmpcfg2 = RegInit(UInt(XLEN.W), 0.U)
  val pmpcfg3 = RegInit(UInt(XLEN.W), 0.U)
  val pmpaddr0 = RegInit(UInt(XLEN.W), 0.U) 
  val pmpaddr1 = RegInit(UInt(XLEN.W), 0.U) 
  val pmpaddr2 = RegInit(UInt(XLEN.W), 0.U) 
  val pmpaddr3 = RegInit(UInt(XLEN.W), 0.U) 

  val vxsat = RegInit(UInt(XLEN.W), 0.U) 

  // Superviser-Level CSRs

  // val sstatus = RegInit(UInt(XLEN.W), "h00000000".U)
  val sstatusWmask = "hc6122".U
  // Sstatus Write Mask
  // -------------------------------------------------------
  //    19           9   5     2
  // 0  1100 0000 0001 0010 0010
  // 0  c    0    1    2    2
  // -------------------------------------------------------
  val sstatusRmask = sstatusWmask | "h8000000300018000".U
  // Sstatus Read Mask = (SSTATUS_WMASK | (0xf << 13) | (1ull << 63) | (3ull << 32))
  val stvec = RegInit(UInt(XLEN.W), 0.U)
  // val sie = RegInit(0.U(XLEN.W))
  val sieMask = "h222".U & mideleg
  val sipMask  = "h222".U & mideleg
  // val satp = RegInit(UInt(XLEN.W), "h8000000000087fbe".U)
  val satp = RegInit(UInt(XLEN.W), 0.U)
  val sepc = RegInit(UInt(XLEN.W), 0.U)
  val scause = RegInit(UInt(XLEN.W), 0.U)
  val stval = Reg(UInt(XLEN.W))
  val sscratch = RegInit(UInt(XLEN.W), 0.U)
  val scounteren = RegInit(UInt(XLEN.W), 0.U)

  if (Settings.get("HasDTLB")) {
    BoringUtils.addSource(satp, "CSRSATP")
  }

  // User-Level CSRs
  val uepc = Reg(UInt(XLEN.W))

  // Hart Priviledge Mode
  val priviledgeMode = RegInit(UInt(2.W), ModeM)

  // perfcnt
  //val hasPerfCnt = EnablePerfCnt && !p.FPGAPlatform
  //val nrPerfCnts = if (hasPerfCnt) 0x80 else 0x3
  //val perfCnts = List.fill(nrPerfCnts)(RegInit(0.U(64.W)))
  //val perfCntsLoMapping = (0 until nrPerfCnts).map { case i => MaskedRegMap(0xb00 + i, perfCnts(i)) }
  //val perfCntsHiMapping = (0 until nrPerfCnts).map { case i => MaskedRegMap(0xb80 + i, perfCnts(i)(63, 32)) }

  // CSR reg map
  val mapping = Map(

    // User Trap Setup
    // MaskedRegMap(Ustatus, ustatus), 
    // MaskedRegMap(Uie, uie, 0.U, MaskedRegMap.Unwritable),
    // MaskedRegMap(Utvec, utvec),
    
    // User Trap Handling
    // MaskedRegMap(Uscratch, uscratch),
    // MaskedRegMap(Uepc, uepc),
    // MaskedRegMap(Ucause, ucause),
    // MaskedRegMap(Utval, utval),
    // MaskedRegMap(Uip, uip),

    // User Floating-Point CSRs (not implemented)
    // MaskedRegMap(Fflags, fflags),
    // MaskedRegMap(Frm, frm),
    // MaskedRegMap(Fcsr, fcsr),

    // User Counter/Timers
    // MaskedRegMap(Cycle, cycle),
    // MaskedRegMap(Time, time),
    // MaskedRegMap(Instret, instret),
    
    // Supervisor Trap Setup
    MaskedRegMap(Sstatus, mstatus, sstatusWmask, mstatusUpdateSideEffect, sstatusRmask),

    // MaskedRegMap(Sedeleg, Sedeleg),
    // MaskedRegMap(Sideleg, Sideleg),
    MaskedRegMap(Sie, mie, sieMask, MaskedRegMap.NoSideEffect, sieMask),
    MaskedRegMap(Stvec, stvec),
    MaskedRegMap(Scounteren, scounteren),

    // Supervisor Trap Handling
    MaskedRegMap(Sscratch, sscratch),
    MaskedRegMap(Sepc, sepc),
    MaskedRegMap(Scause, scause),
    MaskedRegMap(Stval, stval),
    MaskedRegMap(Sip, mip.asUInt, sipMask, MaskedRegMap.Unwritable, sipMask),

    // Supervisor Protection and Translation
    MaskedRegMap(Satp, satp),

    // Machine Information Registers 
    MaskedRegMap(Mvendorid, mvendorid, 0.U, MaskedRegMap.Unwritable), 
    MaskedRegMap(Marchid, marchid, 0.U, MaskedRegMap.Unwritable), 
    MaskedRegMap(Mimpid, mimpid, 0.U, MaskedRegMap.Unwritable), 
    MaskedRegMap(Mhartid, mhartid, 0.U, MaskedRegMap.Unwritable), 

    // Machine Trap Setup
    // MaskedRegMap(Mstatus, mstatus, "hffffffffffffffee".U, (x=>{printf("mstatus write: %x time: %d\n", x, GTimer()); x})),
    MaskedRegMap(Mstatus, mstatus, "hffffffffffffffff".U, mstatusUpdateSideEffect),
    MaskedRegMap(Misa, misa), // now MXL, EXT is not changeable
    MaskedRegMap(Medeleg, medeleg, "hbbff".U),
    MaskedRegMap(Mideleg, mideleg, "h222".U),
    MaskedRegMap(Mie, mie),
    MaskedRegMap(Mtvec, mtvec),
    MaskedRegMap(Mcounteren, mcounteren), 

    // Machine Trap Handling
    MaskedRegMap(Mscratch, mscratch),
    MaskedRegMap(Mepc, mepc),
    MaskedRegMap(Mcause, mcause),
    MaskedRegMap(Mtval, mtval),
    MaskedRegMap(Mip, mip.asUInt, 0.U, MaskedRegMap.Unwritable),

    // Machine Memory Protection
    MaskedRegMap(Pmpcfg0, pmpcfg0),
    MaskedRegMap(Pmpcfg1, pmpcfg1),
    MaskedRegMap(Pmpcfg2, pmpcfg2),
    MaskedRegMap(Pmpcfg3, pmpcfg3),
    MaskedRegMap(PmpaddrBase + 0, pmpaddr0,"h3ffffffff".U),
    MaskedRegMap(PmpaddrBase + 1, pmpaddr1,"h3fffffc00".U),
    MaskedRegMap(PmpaddrBase + 2, pmpaddr2,"h3fffffc00".U),
    MaskedRegMap(PmpaddrBase + 3, pmpaddr3,"h3fffffc00".U),

    MaskedRegMap(VXSAT,vxsat,1.U,MaskedRegMap.NoSideEffect,1.U)

  ) //++ perfCntsLoMapping //++ (if (XLEN == 32) perfCntsHiMapping else Nil)

  val addr = src2(11, 0)
  val rdata = Wire(UInt(XLEN.W))
  val csri = ZeroExt(io.cfIn.instr(19,15), XLEN) //unsigned imm for csri. [TODO]
  val wdata = LookupTree(func, List(
    CSROpType.wrt  -> src1,
    CSROpType.set  -> (rdata | src1),
    CSROpType.clr  -> (rdata & ~src1),
    CSROpType.wrti -> csri,//TODO: csri --> src2
    CSROpType.seti -> (rdata | csri),
    CSROpType.clri -> (rdata & ~csri)
  ))

  // SATP wen check
  val satpLegalMode = (wdata.asTypeOf(new SatpStruct).mode === 0.U) || (wdata.asTypeOf(new SatpStruct).mode === 8.U)

  // General CSR wen check
  val wen = (valid && func =/= CSROpType.jmp) && (addr =/= Satp.U || satpLegalMode) && !io.isBackendException
  val isIllegalMode  = priviledgeMode < addr(9, 8)
  val justRead = (func === CSROpType.set || func === CSROpType.seti) && src1 === 0.U  // csrrs and csrrsi are exceptions when their src1 is zero
  val isIllegalWrite = wen && (addr(11, 10) === "b11".U) && !justRead  // Write a read-only CSR register
  val isIllegalAccess = isIllegalMode || isIllegalWrite

  MaskedRegMap.generate(mapping, addr, rdata, wen && !isIllegalAccess, wdata)
  val isIllegalAddr = MaskedRegMap.isIllegalAddr(mapping, addr)
  val resetSatp = addr === Satp.U && wen // write to satp will cause the pipeline be flushed
  io.out.bits := rdata

  // Fix Mip/Sip write
  val fixMapping = Map(
    MaskedRegMap(Mip, mipReg.asUInt, mipFixMask),
    MaskedRegMap(Sip, mipReg.asUInt, sipMask, MaskedRegMap.NoSideEffect, sipMask)
  )
  val rdataDummy = Wire(UInt(XLEN.W))
  MaskedRegMap.generate(fixMapping, addr, rdataDummy, wen && !isIllegalAccess, wdata)

  //p-ext
  val OVWEN = WireInit(false.B)
  BoringUtils.addSink(OVWEN,"OVWEN")
  when(OVWEN){vxsat := 1.U}

  // CSR inst decode
  val ret = Wire(Bool())
  val isEbreak = addr === privEbreak && func === CSROpType.jmp && !io.isBackendException
  val isEcall = addr === privEcall && func === CSROpType.jmp && !io.isBackendException
  val isMret = addr === privMret   && func === CSROpType.jmp && !io.isBackendException
  val isSret = addr === privSret   && func === CSROpType.jmp && !io.isBackendException
  val isUret = addr === privUret   && func === CSROpType.jmp && !io.isBackendException

  Debug(wen, "csr write: pc %x addr %x rdata %x wdata %x func %x\n", io.cfIn.pc, addr, rdata, wdata, func)
  Debug(wen, "[MST] time %d pc %x mstatus %x mideleg %x medeleg %x mode %x\n", GTimer(), io.cfIn.pc, mstatus, mideleg , medeleg, priviledgeMode)
  Debug("[CSR] mip %x mipreg %x mipwire %x \n", mip.asUInt,mipReg.asUInt,mipWire.asUInt)
  // MMU Permission Check


  //TODO: Havn't test if io.dmemMMU.priviledgeMode is correct yet
  io.imemMMU.priviledgeMode := priviledgeMode
  io.dmemMMU.priviledgeMode := Mux(mstatusStruct.mprv.asBool, mstatusStruct.mpp, priviledgeMode)
  io.imemMMU.status_sum := mstatusStruct.sum.asBool
  io.dmemMMU.status_sum := mstatusStruct.sum.asBool
  io.imemMMU.status_mxr := DontCare
  io.dmemMMU.status_mxr := mstatusStruct.mxr.asBool

  val hasInstrPageFault = Wire(Bool())
  val hasLoadPageFault = Wire(Bool())
  val hasStorePageFault = Wire(Bool())
  val hasStoreAddrMisaligned = Wire(Bool())
  val hasLoadAddrMisaligned = Wire(Bool())

  val dmemPagefaultAddr = Wire(UInt(VAddrBits.W))
  val dmemAddrMisalignedAddr = Wire(UInt(VAddrBits.W))
  val lsuAddr = WireInit(0.U(64.W))
  BoringUtils.addSink(lsuAddr, "LSUADDR")
  if(EnableOutOfOrderExec){
    hasInstrPageFault      := valid && io.cfIn.exceptionVec(instrPageFault)
    hasLoadPageFault       := valid && io.cfIn.exceptionVec(loadPageFault)
    hasStorePageFault      := valid && io.cfIn.exceptionVec(storePageFault)
    hasStoreAddrMisaligned := valid && io.cfIn.exceptionVec(storeAddrMisaligned)
    hasLoadAddrMisaligned  := valid && io.cfIn.exceptionVec(loadAddrMisaligned)
    dmemPagefaultAddr := src1 // LSU -> wbresult -> prf -> beUop.data.src1
    dmemAddrMisalignedAddr := src1
  }else{
    hasInstrPageFault := io.cfIn.exceptionVec(instrPageFault) && valid
    hasLoadPageFault := io.dmemMMU.loadPF
    hasStorePageFault := io.dmemMMU.storePF
    hasStoreAddrMisaligned := io.cfIn.exceptionVec(storeAddrMisaligned)
    hasLoadAddrMisaligned := io.cfIn.exceptionVec(loadAddrMisaligned)
    dmemPagefaultAddr := io.dmemMMU.addr
    dmemAddrMisalignedAddr := lsuAddr
  }

  when(hasInstrPageFault || hasLoadPageFault || hasStorePageFault){
    val tval = Mux(hasInstrPageFault, Mux(io.cfIn.crossPageIPFFix, SignExt((io.cfIn.pc + 2.U)(VAddrBits-1,0), XLEN), SignExt(io.cfIn.pc(VAddrBits-1,0), XLEN)), SignExt(dmemPagefaultAddr, XLEN))
    when(priviledgeMode === ModeM){
      mtval := tval
    }.otherwise{
      stval := tval
    }
    Debug("[PF] %d: ipf %b tval %x := addr %x pc %x priviledgeMode %x\n", GTimer(), hasInstrPageFault, tval, SignExt(dmemPagefaultAddr, XLEN), io.cfIn.pc, priviledgeMode)
  }

  when(hasLoadAddrMisaligned || hasStoreAddrMisaligned)
  {
    mtval := SignExt(dmemAddrMisalignedAddr, XLEN)
    Debug("[ML] %d: addr %x pc %x priviledgeMode %x\n", GTimer(), SignExt(dmemAddrMisalignedAddr, XLEN), io.cfIn.pc, priviledgeMode)
  }
  // Exception and Intr

  // interrupts

  val mtip = WireInit(false.B)
  val meip = WireInit(false.B)
  val msip = WireInit(false.B)
  BoringUtils.addSink(mtip, "mtip")
  BoringUtils.addSink(meip, "meip")
  BoringUtils.addSink(msip, "msip")
  mipWire.t.m := mtip
  mipWire.e.m := meip
  mipWire.s.m := msip
  
  // SEIP from PLIC is only used to raise interrupt,
  // but it is not stored in the CSR
  val seip = meip    // FIXME: PLIC should generate SEIP different from MEIP
  val mipRaiseIntr = WireInit(mip)
  mipRaiseIntr.e.s := mip.e.s | seip

  val ideleg =  (mideleg & mipRaiseIntr.asUInt)
  def priviledgedEnableDetect(x: Bool): Bool = Mux(x, ((priviledgeMode === ModeS) && mstatusStruct.ie.s) || (priviledgeMode < ModeS),
                                   ((priviledgeMode === ModeM) && mstatusStruct.ie.m) || (priviledgeMode < ModeM))

  val intrVecEnable = Wire(Vec(12, Bool()))
  intrVecEnable.zip(ideleg.asBools).map{case(x,y) => x := priviledgedEnableDetect(y)}
  val intrVec = mie(11,0) & mipRaiseIntr.asUInt & intrVecEnable.asUInt
  BoringUtils.addSource(intrVec, "intrVecIDU")
  // val intrNO = PriorityEncoder(intrVec)
  
  val intrNO = IntPriority.foldRight(0.U)((i: Int, sum: UInt) => Mux(io.cfIn.intrVec(i), i.U, sum))
  // val intrNO = PriorityEncoder(io.cfIn.intrVec)
  val raiseIntr = io.cfIn.intrVec.asUInt.orR

  // exceptions

  // TODO: merge iduExceptionVec, csrExceptionVec as raiseExceptionVec
  val csrExceptionVec = Wire(Vec(16, Bool()))
  csrExceptionVec.map(_ := false.B)
  csrExceptionVec(breakPoint) := io.in.valid && isEbreak
  csrExceptionVec(ecallM) := priviledgeMode === ModeM && io.in.valid && isEcall
  csrExceptionVec(ecallS) := priviledgeMode === ModeS && io.in.valid && isEcall
  csrExceptionVec(ecallU) := priviledgeMode === ModeU && io.in.valid && isEcall
  csrExceptionVec(illegalInstr) := (isIllegalAddr || isIllegalAccess) && wen && !io.isBackendException // Trigger an illegal instr exception when unimplemented csr is being read/written or not having enough priviledge
  csrExceptionVec(loadPageFault) := hasLoadPageFault
  csrExceptionVec(storePageFault) := hasStorePageFault
  csrExceptionVec(hasLoadAddrMisaligned) := hasLoadAddrMisaligned
  csrExceptionVec(hasStoreAddrMisaligned):= hasStoreAddrMisaligned
  val iduExceptionVec = io.cfIn.exceptionVec
  val raiseExceptionVec = csrExceptionVec.asUInt() | iduExceptionVec.asUInt()
  val raiseException = raiseExceptionVec.orR
  val exceptionNO = ExcPriority.foldRight(0.U)((i: Int, sum: UInt) => Mux(raiseExceptionVec(i), i.U, sum))
  io.wenFix := raiseException

  val causeNO = (raiseIntr << (XLEN-1)) | Mux(raiseIntr, intrNO, exceptionNO)
  io.intrNO := Mux(raiseIntr, causeNO, 0.U)

  val raiseExceptionIntr = (raiseException || raiseIntr) && io.instrValid
  val retTarget = Wire(UInt(VAddrBits.W))
  val trapTarget = Wire(UInt(VAddrBits.W))
  io.redirect.valid := (valid && func === CSROpType.jmp) || raiseExceptionIntr || resetSatp
  io.redirect.rtype := 0.U
  io.redirect.target := Mux(resetSatp, io.cfIn.pc + 4.U, Mux(raiseExceptionIntr, trapTarget, retTarget))

  Debug(raiseExceptionIntr, "excin %b excgen %b", csrExceptionVec.asUInt(), iduExceptionVec.asUInt())
  Debug(raiseExceptionIntr, "int/exc: pc %x int (%d):%x exc: (%d):%x\n",io.cfIn.pc, intrNO, io.cfIn.intrVec.asUInt, exceptionNO, raiseExceptionVec.asUInt)
  Debug(raiseExceptionIntr, "[MST] time %d pc %x mstatus %x mideleg %x medeleg %x mode %x\n", GTimer(), io.cfIn.pc, mstatus, mideleg , medeleg, priviledgeMode)
  Debug(io.redirect.valid, "redirect to %x\n", io.redirect.target)
  Debug(resetSatp, "satp reset\n")

  // Branch control

  val deleg = Mux(raiseIntr, mideleg , medeleg)
  // val delegS = ((deleg & (1 << (causeNO & 0xf))) != 0) && (priviledgeMode < ModeM);
  val delegS = (deleg(causeNO(3,0))) && (priviledgeMode < ModeM)
  val tvalWen = !(hasInstrPageFault || hasLoadPageFault || hasStorePageFault || hasLoadAddrMisaligned || hasStoreAddrMisaligned) || raiseIntr // in nutcore-riscv64, no exception will come together with PF

  ret := isMret || isSret || isUret
  trapTarget := Mux(delegS, stvec, mtvec)(VAddrBits-1, 0)
  retTarget := DontCare
  // TODO redirect target
  // val illegalEret = TODO

  when (valid && isMret) {
    val mstatusOld = WireInit(mstatus.asTypeOf(new MstatusStruct))
    val mstatusNew = WireInit(mstatus.asTypeOf(new MstatusStruct))
    // mstatusNew.mpp.m := ModeU //TODO: add mode U
    mstatusNew.ie.m := mstatusOld.pie.m
    priviledgeMode := mstatusOld.mpp
    mstatusNew.pie.m := true.B
    mstatusNew.mpp := ModeU
    mstatus := mstatusNew.asUInt
    retTarget := mepc(VAddrBits-1, 0)
  }

  when (valid && isSret) {
    val mstatusOld = WireInit(mstatus.asTypeOf(new MstatusStruct))
    val mstatusNew = WireInit(mstatus.asTypeOf(new MstatusStruct))
    // mstatusNew.mpp.m := ModeU //TODO: add mode U
    mstatusNew.ie.s := mstatusOld.pie.s
    priviledgeMode := Cat(0.U(1.W), mstatusOld.spp)
    mstatusNew.pie.s := true.B
    mstatusNew.spp := ModeU
    mstatus := mstatusNew.asUInt
    retTarget := sepc(VAddrBits-1, 0)
  }

  when (valid && isUret) {
    val mstatusOld = WireInit(mstatus.asTypeOf(new MstatusStruct))
    val mstatusNew = WireInit(mstatus.asTypeOf(new MstatusStruct))
    // mstatusNew.mpp.m := ModeU //TODO: add mode U
    mstatusNew.ie.u := mstatusOld.pie.u
    priviledgeMode := ModeU
    mstatusNew.pie.u := true.B
    mstatus := mstatusNew.asUInt
    retTarget := uepc(VAddrBits-1, 0)
  }

  when (raiseExceptionIntr) {
    val mstatusOld = WireInit(mstatus.asTypeOf(new MstatusStruct))
    val mstatusNew = WireInit(mstatus.asTypeOf(new MstatusStruct))

    when (delegS) {
      scause := causeNO
      sepc := SignExt(io.cfIn.pc, XLEN)
      mstatusNew.spp := priviledgeMode
      mstatusNew.pie.s := mstatusOld.ie.s
      mstatusNew.ie.s := false.B
      priviledgeMode := ModeS
      when(tvalWen){stval := 0.U} // TODO: should not use =/=
      // printf("[*] mstatusNew.spp %x\n", mstatusNew.spp)
      // trapTarget := stvec(VAddrBits-1. 0)
    }.otherwise {
      mcause := causeNO
      mepc := SignExt(io.cfIn.pc, XLEN)
      mstatusNew.mpp := priviledgeMode
      mstatusNew.pie.m := mstatusOld.ie.m
      mstatusNew.ie.m := false.B
      priviledgeMode := ModeM
      when(tvalWen){mtval := 0.U} // TODO: should not use =/=
      // trapTarget := mtvec(VAddrBits-1. 0)
    }
    // mstatusNew.pie.m := LookupTree(priviledgeMode, List(
    //   ModeM -> mstatusOld.ie.m,
    //   ModeH -> mstatusOld.ie.h, //ERROR
    //   ModeS -> mstatusOld.ie.s,
    //   ModeU -> mstatusOld.ie.u
    // ))

    mstatus := mstatusNew.asUInt
  }

  io.in.ready := true.B
  io.out.valid := valid

  if (!p.FPGAPlatform) {

    // for differential testing
    val difftest = Module(new DifftestCSRState)
    difftest.io.clock := clock
    difftest.io.coreid := 0.U // TODO
    difftest.io.priviledgeMode := RegNext(priviledgeMode)
    difftest.io.mstatus := RegNext(mstatus)
    difftest.io.sstatus := RegNext(mstatus & sstatusRmask)
    difftest.io.mepc := (RegNext(mepc) >> 1)<<1
    difftest.io.sepc := RegNext(sepc)
    difftest.io.mtval:= RegNext(mtval)
    difftest.io.stval:= RegNext(stval)
    difftest.io.mtvec := RegNext(mtvec)
    difftest.io.stvec := RegNext(stvec)
    difftest.io.mcause := RegNext(mcause)
    difftest.io.scause := RegNext(scause)
    difftest.io.satp := RegNext(satp)
    difftest.io.mip := RegNext(mipReg)
    difftest.io.mie := RegNext(mie)
    difftest.io.mscratch := RegNext(mscratch)
    difftest.io.sscratch := RegNext(sscratch)
    difftest.io.mideleg := RegNext(mideleg)
    difftest.io.medeleg := RegNext(medeleg)

    val difftestArchEvent = Module(new DifftestArchEvent)
    difftestArchEvent.io.clock := clock
    difftestArchEvent.io.coreid := 0.U // TODO
    difftestArchEvent.io.intrNO := RegNext(RegNext(Mux(raiseIntr && io.instrValid && valid, intrNO, 0.U)))
    difftestArchEvent.io.cause := RegNext(RegNext(Mux(raiseException && io.instrValid && valid, exceptionNO, 0.U)))
    difftestArchEvent.io.exceptionPC := RegNext(RegNext(SignExt(io.cfIn.pc, XLEN)))
    difftestArchEvent.io.exceptionInst := RegNext(RegNext(io.cfIn.instr))

  }
  Debug("[CSR!!!] mtval %x tval %x pf %x misaligned %x tvalwen %x \n",mtval,Mux(hasInstrPageFault, Mux(io.cfIn.crossPageIPFFix, SignExt((io.cfIn.pc + 2.U)(VAddrBits-1,0), XLEN), SignExt(io.cfIn.pc(VAddrBits-1,0), XLEN)), SignExt(dmemPagefaultAddr, XLEN)),hasInstrPageFault || hasLoadPageFault || hasStorePageFault,hasLoadAddrMisaligned || hasStoreAddrMisaligned,tvalWen)

}
