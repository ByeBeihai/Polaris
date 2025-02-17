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

object SNNOpType{
    def nup = "b0000".U
    def bpo = "b0001".U
    def sacc = "b0010".U
    def exp = "b0011".U
    // def spop = "b0100".U
    def tdr = "b0101".U
    def sum = "b0110".U
    def stau = "b0111".U
    def slr = "b1000".U
    def svr = "b1001".U
}

class SNNU_IO extends FunctionUnitIO{
    val dcIn = Flipped(new DecodeIO)
    val dcOut = new DecodeIO
    val FirstStageFire = Output(Bool())
    val flush = Input(Bool())
}

class SNNU extends PolarisCoreModule{
    val io = IO(new SNNU_IO)
    val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)
    def access(valid: Bool, src1: UInt, src2: UInt, func: UInt): UInt = {
        this.valid := valid
        this.src1 := src1
        this.src2 := src2
        this.func := func
        io.out.bits
    }
    val SNNISU = Module(new SNNISU)
    val LNU = Module(new LNU_NEW)
    val SU = Module(new SU)

    def isSU(func: UInt): Bool = func === SNNOpType.bpo || func === SNNOpType.tdr || func === SNNOpType.exp


    // output connection
    io.in.ready := !valid || io.FirstStageFire// Mux(isISU(func), !valid, Mux(isSU(func), SU.io.in.ready, LNU.io.in.ready))
    io.out.bits := Mux(isSU(func), SU.io.out.bits.res, LNU.io.out.bits.res)
    io.dcOut := Mux(isSU(func), SU.io.out.bits.dcOut, LNU.io.out.bits.dcOut)// io.dcIn
    // io.FirstStageFire := valid && ((LNU.io.in.ready && !isSU(funct3) && !isISU(funct3)) || (SU.io.in.ready && isSU(funct3))) 
    LNU.io.out.ready := Mux(isSU(func), false.B, io.out.ready)
    SU.io.out.ready := Mux(isSU(func), io.out.ready, false.B)
    io.out.valid := Mux(isSU(func), SU.io.out.valid, LNU.io.out.valid)
    io.FirstStageFire := false.B

    // connect SNNISU
    SNNISU.io.dcIn := io.dcIn
    SNNISU.io.validIn := valid
    SNNISU.io.LNUvalid := LNU.io.out.valid && LNU.io.out.bits.dcOut.ctrl.fuOpType === SNNOpType.sum && LNU.io.out.bits.dcOut.cf.instr(25)
    SNNISU.io.LNUsumres := Mux(LNU.io.out.valid, LNU.io.out.bits.res, 0.U)

    // connect SNNISU and LNU
    val LNU_bits_next = Wire(new Bundle{val SCtrl = new SCtrlIO; val dcIn = new DecodeIO})
    val LNU_bits      = RegInit(0.U.asTypeOf(new Bundle{val SCtrl = new SCtrlIO; val dcIn = new DecodeIO}))
    LNU_bits_next := LNU_bits
    val LNU_valid = RegInit(0.U.asTypeOf(Bool()))
    val LNU_valid_next = Wire(Bool())
    LNU_valid_next := LNU_valid
    when(LNU.io.out.fire()){LNU_valid_next := false.B}
    when(valid && LNU.io.in.ready && !isSU(func)){
        LNU_valid_next := true.B
        LNU_bits_next.SCtrl := SNNISU.io.SCtrl
        LNU_bits_next.dcIn := SNNISU.io.dcOut
        io.FirstStageFire := true.B
    }
    when(io.flush){LNU_valid_next := false.B}
    LNU_bits := LNU_bits_next
    LNU_valid := LNU_valid_next
    LNU.io.in.valid := LNU_valid
    LNU.io.in.bits := LNU_bits
    
    
    // connect SNNISU and SU
    val SU_bits_next = Wire(new Bundle{val SCtrl = new SCtrlIO; val dcIn = new DecodeIO})
    val SU_bits      = RegInit(0.U.asTypeOf(new Bundle{val SCtrl = new SCtrlIO; val dcIn = new DecodeIO}))
    SU_bits_next := SU_bits
    val SU_valid    = RegInit(0.U.asTypeOf(Bool()))
    val SU_valid_next = Wire(Bool())
    SU_valid_next := SU_valid
    when(SU.io.out.fire()){SU_valid_next := false.B}
    when(valid && SU.io.in.ready && isSU(func)){
        SU_valid_next := true.B
        SU_bits_next.SCtrl := SNNISU.io.SCtrl
        SU_bits_next.dcIn := SNNISU.io.dcOut
        io.FirstStageFire := true.B
    }
    when(io.flush){SU_valid_next := false.B}
    SU_bits := SU_bits_next
    SU_valid := SU_valid_next
    SU.io.in.bits := SU_bits
    SU.io.in.valid := SU_valid

    Debug("[SNNU]flush: %b, instr: %x, valid: %b, src1: %x, src2: %x, isSU: %b readyin %x\n", io.flush, io.dcIn.cf.instr, valid, src1, src2, isSU(func), io.in.ready)
    Debug(SU.io.out.fire() || LNU.io.out.fire(), "[SNNU] out %x io.out %x valid %b\n", Mux(SU.io.out.fire() && isSU(func), SU.io.out.bits.res, LNU.io.out.bits.res), io.out.bits, io.out.valid)
    
    
}
