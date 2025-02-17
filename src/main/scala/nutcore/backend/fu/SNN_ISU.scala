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
* Reference:
* Zong, J., Wang, J., Li, G., Wu, R., Zhao D.*, Polaris 23: a high throughput neuromorphic processing element by RISC-V customized instruction extension for spiking neural network (RV-SNN 2.0) and SIMD-style implementation of LIF model with backpropagation STDP. J Supercomput 81, 398 (2025)
***************************************************************************************/

package polaris 

import chisel3._
import chisel3.util._

import utils._

object SRFAddr {
    def VR  = "b00".U
    def LR  = "b01".U
    def TAU = "b10".U
    def ACC = "b11".U
}

class SCtrlIO extends PolarisCoreBundle with HasPolarisCoreConst{
    val isNup = Output(Bool())
    val isBpo = Output(Bool())
    val isExp = Output(Bool())
    val isTdr = Output(Bool())
    val isSum = Output(Bool())
    val isSvr = Output(Bool())
    val hasTs = Output(Bool())
    val hasAcc = Output(Bool())
    val DIn1 = Output(Vec(4, UInt(16.W)))
    val DIn2 = Output(Vec(4, UInt(16.W)))
    val SRF4 = Output(Vec(4, UInt(64.W))) 
}

class SNNISU(len: Int = 16) extends PolarisCoreModule{
    val io = IO(new Bundle{
        val validIn = Input(Bool())
        val dcIn = Flipped(new DecodeIO) // input
        val SCtrl= new SCtrlIO // output
        val dcOut = new DecodeIO
        val LNUsumres = Input(UInt(64.W))
        val LNUvalid = Input(Bool())
    })

    val src1  = io.dcIn.data.src1
    val src2  = io.dcIn.data.src2
    val func  = io.dcIn.ctrl.fuOpType

    val srf = new SRegFile

    io.dcOut := io.dcIn

    io.SCtrl.isNup  := func === SNNOpType.nup
    io.SCtrl.isBpo  := func === SNNOpType.bpo 
    io.SCtrl.isExp  := func === SNNOpType.exp 
    io.SCtrl.isTdr  := func === SNNOpType.tdr 
    io.SCtrl.isSum  := func === SNNOpType.sum 
    io.SCtrl.isSvr  := func === SNNOpType.svr 
    def isSrfWr(isSlr: Bool, isSvr: Bool, isStau: Bool):Bool = isSlr || isSvr || isStau
    io.SCtrl.hasTs  := func === SNNOpType.nup && io.dcIn.cf.instr(25) === "b1".U
    io.SCtrl.hasAcc := func === SNNOpType.sum && io.dcIn.cf.instr(25) === "b1".U
    
    
    for(i <- 0 until( XLEN/ len)){
        io.SCtrl.DIn1(i) := src1(len * i + len - 1, len * i)
        io.SCtrl.DIn2(i) := src2(len * i + len - 1, len * i)
        io.SCtrl.SRF4(i) := srf.read(i.U)
    }
    when(io.SCtrl.isSvr){
        srf.write(SRFAddr.TAU, ZeroExt(io.SCtrl.DIn1(SRFAddr.TAU), 64))
        srf.write(SRFAddr.VR, ZeroExt(io.SCtrl.DIn1(SRFAddr.VR), 64))
        srf.write(SRFAddr.LR, ZeroExt(io.SCtrl.DIn1(SRFAddr.LR), 64))
        srf.write(SRFAddr.ACC, src2)
    }

    when(io.LNUvalid){
        srf.write(SRFAddr.ACC, io.LNUsumres)
    }

    for(i <- 0 to 3){
        Debug("[SNN_ISU] srf(%d): %x DIn1(i): %x DIn2(i): %x hasAcc: %b hasTs: %b\n", i.U, io.SCtrl.SRF4(i.U), io.SCtrl.DIn1(i.U), io.SCtrl.DIn2(i.U), io.SCtrl.hasAcc, io.SCtrl.hasTs)
    }
}