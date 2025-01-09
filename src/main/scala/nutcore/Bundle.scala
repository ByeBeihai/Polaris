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

class CtrlSignalIO extends PolarisCoreBundle {
  val src1Type = Output(SrcType())
  val src2Type = Output(SrcType())
  val fuType = Output(FuType())
  val fuOpType = Output(FuOpType())
  val funct3 = Output(UInt(3.W))
  val func24 = Output(UInt(1.W))
  val func23 = Output(UInt(1.W))
  val rfSrc1 = Output(UInt(5.W))
  val rfSrc2 = Output(UInt(5.W))
  val rfSrc3 = Output(UInt(5.W))
  val rfWen = Output(Bool())
  val rfDest = Output(UInt(5.W))
  val isPolarisTrap = Output(Bool())
  val isSrc1Forward = Output(Bool())
  val isSrc2Forward = Output(Bool())
  val noSpecExec = Output(Bool())  // This inst can not be speculated
  val isBlocked = Output(Bool())   // This inst requires pipeline to be blocked
  val isBru = Output(Bool())
  val isMou = Output(Bool())
}

class DataSrcIO extends PolarisCoreBundle {
  val src1 = Output(UInt(XLEN.W))
  val src2 = Output(UInt(XLEN.W))
  val src3 = Output(UInt(XLEN.W))
  val imm  = Output(UInt(XLEN.W))
}

class RedirectIO extends PolarisCoreBundle {
  val target = Output(UInt(VAddrBits.W))
  val rtype = Output(UInt(1.W)) // 1: branch mispredict: only need to flush frontend  0: others: flush the whole pipeline
  val valid = Output(Bool())
}

class MisPredictionRecIO extends PolarisCoreBundle {
  val redirect = new RedirectIO
  val valid = Output(Bool())
  val checkpoint = Output(UInt(brTagWidth.W))
  val prfidx = Output(UInt(prfAddrWidth.W))
}
class PEXT extends PolarisCoreBundle {
  val OV = Output(Bool())
}
class CtrlFlowIO extends PolarisCoreBundle {
  val instr = Output(UInt(64.W))
  val pc = Output(UInt(VAddrBits.W))
  val pnpc = Output(UInt(VAddrBits.W))
  val redirect = new RedirectIO
  val exceptionVec = Output(Vec(16, Bool()))
  val intrVec = Output(Vec(12, Bool()))
  val brIdx = Output(UInt(4.W))
  val isRVC = Output(Bool())
  val crossPageIPFFix = Output(Bool())
  val runahead_checkpoint_id = Output(UInt(64.W))
  val isBranch = Output(Bool())
  val instrType = Output(UInt(5.W))
}

class DecodeIO extends PolarisCoreBundle with HasPolarisCoreParameter{
  val cf = new CtrlFlowIO
  val ctrl = new CtrlSignalIO
  val data = new DataSrcIO
  val pext = new PEXT
  val InstNo = Output(UInt(log2Up(Queue_num).W))
  val InstFlag = Output(UInt(1.W))
}

class WriteBackIO extends PolarisCoreBundle {
  val rfWen = Output(Bool())
  val rfDest = Output(UInt(5.W))
  val rfData = Output(UInt(XLEN.W))
}

class SIMD_WriteBackIO() extends PolarisCoreBundle with HasPolarisCoreParameter{
  val rfWen = Vec(Issue_Num,Output(Bool()))
  val rfDest = Vec(Issue_Num,Output(UInt(5.W)))
  val WriteData = Vec(Issue_Num,Output(UInt(XLEN.W)))
  val rfSrc1 = Vec(Issue_Num,Input(UInt(5.W)))
  val rfSrc2 = Vec(Issue_Num,Input(UInt(5.W)))
  val ReadData1 = Vec(Issue_Num,Output(UInt(XLEN.W)))
  val ReadData2 = Vec(Issue_Num,Output(UInt(XLEN.W)))
  val valid = Vec(Issue_Num,Output(Bool()))
  val InstNo = Vec(Issue_Num,Output(UInt(log2Up(Queue_num).W)))
}
class new_SIMD_WriteBackIO() extends PolarisCoreBundle with HasPolarisCoreParameter{
  val rfWen = Vec(Commit_num,Output(Bool()))
  val rfDest = Vec(Commit_num,Output(UInt(5.W)))
  val WriteData = Vec(Commit_num,Output(UInt(XLEN.W)))
  val rfSrc1 = Vec(Issue_Num,Input(UInt(5.W)))
  val rfSrc2 = Vec(Issue_Num,Input(UInt(5.W)))
  val rfSrc3 = Vec(Issue_Num,Input(UInt(5.W)))
  val ReadData1 = Vec(Issue_Num,Output(UInt(XLEN.W)))
  val ReadData2 = Vec(Issue_Num,Output(UInt(XLEN.W)))
  val ReadData3 = Vec(Issue_Num,Output(UInt(XLEN.W)))
  val valid = Vec(Commit_num,Output(Bool()))
  val InstNo = Vec(Commit_num,Output(UInt(log2Up(Queue_num).W)))
}

class CommitIO extends PolarisCoreBundle {
  val decode = new DecodeIO
  val isMMIO = Output(Bool())
  val intrNO = Output(UInt(XLEN.W))
  val commits = Output(Vec(FuType.num, UInt(XLEN.W)))
}
class SIMD_CommitIO extends PolarisCoreBundle {
  val decode = new DecodeIO
  val isMMIO = Output(Bool())
  val intrNO = Output(UInt(XLEN.W))
  val commits = Output(UInt(XLEN.W))
}

class OOCommitIO extends PolarisCoreBundle with HasBackendConst{
  val decode = new DecodeIO
  val isMMIO = Output(Bool())
  val intrNO = Output(UInt(XLEN.W))
  val commits = Output(UInt(XLEN.W))
  val prfidx = Output(UInt(prfAddrWidth.W)) //also as robidx
  val exception = Output(Bool())
  val store = Output(Bool())
  val brMask = Output(UInt(checkpointSize.W))
}

class FunctionUnitIO extends PolarisCoreBundle {
  val in = Flipped(Decoupled(new Bundle {
    val src1 = Output(UInt(XLEN.W))
    val src2 = Output(UInt(XLEN.W))
    val func = Output(FuOpType())
  }))
  val out = Decoupled(Output(UInt(XLEN.W)))
}

class ForwardIO extends PolarisCoreBundle {
  val valid = Output(Bool())
  val wb = new WriteBackIO
  val fuType = Output(FuType())
  val InstNo = Output(UInt(log2Up(Queue_num).W))
}

class MMUIO extends PolarisCoreBundle {
  // val ptev = Output(Bool())
  // val pteu = Output(Bool())
  // val ptex = Output(Bool())
  // val valid = Output(Bool())
  // val isStore = Output(Bool())

  val priviledgeMode = Input(UInt(2.W))
  val status_sum = Input(Bool())
  val status_mxr = Input(Bool())

  val loadPF = Output(Bool())
  val storePF = Output(Bool())
  val addr = Output(UInt(VAddrBits.W)) 
  
  def isPF() = loadPF || storePF
}

class MemMMUIO extends PolarisCoreBundle {
  val imem = new MMUIO
  val dmem = new MMUIO
}

class TLBExuIO extends PolarisCoreBundle {
  val satp = Output(UInt(XLEN.W))
  val sfence = new Bundle {
    val valid = Output(Bool())
    val asid  = Output(UInt(9.W))
    val vaddr = Output(UInt(XLEN.W))
  }

  def access(valid: Bool, src1: UInt, src2: UInt, func: UInt, satp: UInt) = {//func no use here for just sfence.vma only
    this.sfence.valid := valid
    this.sfence.vaddr := src1
    this.sfence.asid  := src2(8,0)
    this.satp := satp
  }
}

class InstFetchIO extends PolarisCoreBundle {
  val pc = Output(UInt(VAddrBits.W)) // real PC will be regenerated in IBF 
  val pnpc = Output(UInt(VAddrBits.W))
  val brIdx = Output(UInt(4.W))
  val instValid = Output(UInt(4.W))
  //above will be used as user bits in icache
  val icachePF = Output(Bool())
  val instr = Output(UInt(64.W))
}

// Micro OP
class RenamedDecodeIO extends PolarisCoreBundle with HasBackendConst {
  val decode = new DecodeIO
  val prfDest = Output(UInt(prfAddrWidth.W))
  val prfSrc1 = Output(UInt(prfAddrWidth.W))
  val prfSrc2 = Output(UInt(prfAddrWidth.W))
  val src1Rdy = Output(Bool())
  val src2Rdy = Output(Bool())
  val brMask = Output(UInt(checkpointSize.W))
}