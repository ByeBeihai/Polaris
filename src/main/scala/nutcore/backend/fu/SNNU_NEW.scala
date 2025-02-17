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

class SNNU_IO_2WAY extends PolarisCoreBundle{
    val flush = Input(Bool())
    val dcIn = Vec(2,Flipped(new DecodeIO))
    val dcOut = Vec(2,new DecodeIO)
    val FirstStageFire = Vec(2,Output(Bool())) 
    val in = Vec(2,Flipped(Decoupled(new Bundle {
        val src1 = Output(UInt(XLEN.W))
        val src2 = Output(UInt(XLEN.W))
        val func = Output(FuOpType())
    })))
    val out = Vec(2,Decoupled(Output(UInt(XLEN.W))))
}

class SNNU_2WAY extends PolarisCoreModule{
    val io = IO(new SNNU_IO_2WAY)

    val (valid0, src01, src02, func0) = (io.in(0).valid, io.in(0).bits.src1, io.in(0).bits.src2, io.in(0).bits.func)
    val (valid1, src11, src12, func1) = (io.in(1).valid, io.in(1).bits.src1, io.in(1).bits.src2, io.in(1).bits.func)
    def access(valid0: Bool, src01: UInt, src02: UInt, func0: UInt,valid1: Bool, src11: UInt, src12: UInt, func1: UInt): (UInt,UInt) = {
      this.valid0:= valid0
      this.src01 := src01
      this.src02 := src02
      this.func0 := func0
      this.valid1:= valid1
      this.src11 := src11
      this.src12 := src12
      this.func1 := func1
      (io.out(0).bits,io.out(1).bits)
    }
    def notafter(ptr1:UInt,ptr2:UInt,flag1:UInt,flag2:UInt):Bool= (ptr1 <= ptr2) && (flag1 === flag2) || (ptr1 > ptr2) && (flag1 =/= flag2)
    def isSU(func: UInt): Bool = func === SNNOpType.bpo || func === SNNOpType.tdr || func === SNNOpType.exp

    // modules define 
    val SNNISU = Module(new SNNISU_NEW)
    val LNU0 = Module(new LNU_NEW)
    val LNU1 = Module(new LNU_NEW)
    val SU0 = Module(new SU)
    val SU1 = Module(new SU)

    // in/ out signals
    io.in(0).ready := !valid0  || io.FirstStageFire(0) 
    io.in(1).ready := !valid1  || io.FirstStageFire(1)

    io.out(0).bits := 0.U
    io.out(1).bits := 0.U
    io.dcOut(0) := 0.U.asTypeOf(new DecodeIO)
    io.dcOut(1) := 0.U.asTypeOf(new DecodeIO)
    io.out(0).valid := false.B
    io.out(1).valid := false.B
    SNNISU.io.LNUvalid := false.B
    SNNISU.io.LNUsumres := 0.U
    LNU0.io.out.ready := false.B
    SU0.io.out.ready := false.B
    LNU1.io.out.ready := false.B
    SU1.io.out.ready := false.B
    // SRF.io.out.ready := false.B
    io.FirstStageFire(0) := false.B 
    io.FirstStageFire(1) := false.B 

    // connect SNNISUs
    SNNISU.io.dcIn := io.dcIn
    SNNISU.io.validIn(0) := valid0
    SNNISU.io.validIn(1) := valid1
    SNNISU.io.LNUvalid := LNU0.io.out.valid && LNU0.io.out.bits.dcOut.ctrl.fuOpType === SNNOpType.sum && LNU0.io.out.bits.dcOut.cf.instr(25) === "b1".U || LNU1.io.out.valid && LNU1.io.out.bits.dcOut.ctrl.fuOpType === SNNOpType.sum && LNU1.io.out.bits.dcOut.cf.instr(25) === "b1".U
    SNNISU.io.LNUsumres := Mux(LNU0.io.out.valid, LNU0.io.out.bits.res, Mux(LNU1.io.out.valid, LNU1.io.out.bits.res, 0.U))

    //init LNUs
    val LNU0_bits_next = Wire(new Bundle{val dcIn = new DecodeIO;val SCtrl = new SCtrlIO})
    val LNU0_bits      = RegInit(0.U.asTypeOf(new Bundle{val dcIn = new DecodeIO;val SCtrl = new SCtrlIO}))
    LNU0_bits_next := LNU0_bits
    val LNU0_valid = RegInit(0.U.asTypeOf(Bool()))
    val LNU0_valid_next = Wire(Bool())
    LNU0_valid_next:= LNU0_valid
    when(LNU0.io.out.fire()){LNU0_valid_next := false.B}

    val LNU1_bits_next = Wire(new Bundle{val dcIn = new DecodeIO;val SCtrl = new SCtrlIO})
    val LNU1_bits      = RegInit(0.U.asTypeOf(new Bundle{val dcIn = new DecodeIO;val SCtrl = new SCtrlIO}))
    LNU1_bits_next := LNU1_bits
    val LNU1_valid = RegInit(0.U.asTypeOf(Bool()))
    val LNU1_valid_next = Wire(Bool())
    LNU1_valid_next:= LNU1_valid
    when(LNU1.io.out.fire()){LNU1_valid_next := false.B}

    //init SUs
    val SU0_bits_next = Wire(new Bundle{val dcIn = new DecodeIO;val SCtrl = new SCtrlIO})
    val SU0_bits      = RegInit(0.U.asTypeOf(new Bundle{val dcIn = new DecodeIO;val SCtrl = new SCtrlIO}))
    SU0_bits_next := SU0_bits
    val SU0_valid = RegInit(0.U.asTypeOf(Bool()))
    val SU0_valid_next = Wire(Bool())
    SU0_valid_next:= SU0_valid
    when(SU0.io.out.fire()){SU0_valid_next := false.B}

    val SU1_bits_next = Wire(new Bundle{val dcIn = new DecodeIO;val SCtrl = new SCtrlIO})
    val SU1_bits      = RegInit(0.U.asTypeOf(new Bundle{val dcIn = new DecodeIO;val SCtrl = new SCtrlIO}))
    SU1_bits_next := SU1_bits
    val SU1_valid = RegInit(0.U.asTypeOf(Bool()))
    val SU1_valid_next = Wire(Bool())
    SU1_valid_next:= SU1_valid
    when(SU1.io.out.fire()){SU1_valid_next := false.B}
    Debug("[SNNU] LNU0FIRE %x LNU1FIRE %x SU0FIRE %x SU1FIRE %x\n", LNU0.io.out.fire(), LNU1.io.out.fire(), SU0.io.out.fire(), SU1.io.out.fire())

    //connect 2 way in
    val match_operator = WireInit(0.U.asTypeOf(Vec(4,Bool())))
    val firstidx = Mux(io.in(0).valid,Mux(io.in(1).valid,Mux(notafter(io.dcIn(0).InstNo,io.dcIn(1).InstNo,io.dcIn(0).InstFlag,io.dcIn(1).InstFlag),0.U,1.U),0.U),1.U)
    Debug("[SNNU] io.in(0).valid %x io.in(1).valid %x\n", io.in(0).valid, io.in(1).valid)
    val secondidx = Mux(firstidx === 0.U,1.U,0.U)
    when(io.in(firstidx).valid && (io.in(firstidx).bits.func === SNNOpType.sum ||io.in(firstidx).bits.func === SNNOpType.svr || io.in(firstidx).bits.func === SNNOpType.nup)){
        when(LNU0.io.in.ready){
          match_operator(0) := true.B
          LNU0_valid_next := true.B
          LNU0_bits_next.dcIn := io.dcIn(firstidx)
          LNU0_bits_next.SCtrl    := Mux(firstidx === 0.U,SNNISU.io.SCtrl(0),SNNISU.io.SCtrl(1))
          io.FirstStageFire(firstidx) := true.B
        }.elsewhen(LNU1.io.in.ready && LNU0_valid){
          match_operator(1) := true.B
          LNU1_valid_next := true.B
          LNU1_bits_next.dcIn := io.dcIn(firstidx)
          LNU1_bits_next.SCtrl    := Mux(firstidx === 0.U,SNNISU.io.SCtrl(0),SNNISU.io.SCtrl(1))
          io.FirstStageFire(firstidx) := true.B
        } 
    }.elsewhen(io.in(firstidx).valid && isSU(io.in(firstidx).bits.func)){
        when(SU0.io.in.ready){
          match_operator(2) := true.B
          SU0_valid_next := true.B
          SU0_bits_next.dcIn := io.dcIn(firstidx)
          SU0_bits_next.SCtrl    := Mux(firstidx === 0.U,SNNISU.io.SCtrl(0),SNNISU.io.SCtrl(1))
          io.FirstStageFire(firstidx) := true.B
        }.elsewhen(SU1.io.in.ready && SU0_valid){
          match_operator(3) := true.B
          SU1_valid_next := true.B
          SU1_bits_next.dcIn := io.dcIn(firstidx)
          SU1_bits_next.SCtrl    := Mux(firstidx === 0.U,SNNISU.io.SCtrl(0),SNNISU.io.SCtrl(1))
          io.FirstStageFire(firstidx) := true.B
        }
    }
    when(io.in(secondidx).valid && (io.in(secondidx).bits.func === SNNOpType.sum ||io.in(secondidx).bits.func === SNNOpType.svr || io.in(secondidx).bits.func === SNNOpType.nup)){
        when(LNU0.io.in.ready && !match_operator(0)){
          LNU0_valid_next := true.B
          LNU0_bits_next.dcIn := io.dcIn(secondidx)
          LNU0_bits_next.SCtrl    := Mux(secondidx === 0.U,SNNISU.io.SCtrl(0),SNNISU.io.SCtrl(1))
          io.FirstStageFire(secondidx) := true.B
        }.elsewhen(LNU1.io.in.ready && !match_operator(1)){
          LNU1_valid_next := true.B
          LNU1_bits_next.dcIn := io.dcIn(secondidx)
          LNU1_bits_next.SCtrl    := Mux(secondidx === 0.U,SNNISU.io.SCtrl(0),SNNISU.io.SCtrl(1))
          io.FirstStageFire(secondidx) := true.B
        }
    }.elsewhen(io.in(secondidx).valid && isSU(io.in(secondidx).bits.func)){
        when(SU0.io.in.ready && !match_operator(2)){
            SU0_valid_next := true.B
            SU0_bits_next.dcIn := io.dcIn(secondidx)
            SU0_bits_next.SCtrl    := Mux(secondidx === 0.U,SNNISU.io.SCtrl(0),SNNISU.io.SCtrl(1))
            io.FirstStageFire(secondidx) := true.B
        }.elsewhen(SU1.io.in.ready && !match_operator(3)){
            SU1_valid_next := true.B
            SU1_bits_next.dcIn := io.dcIn(secondidx)
            SU1_bits_next.SCtrl    := Mux(secondidx === 0.U,SNNISU.io.SCtrl(0),SNNISU.io.SCtrl(1))
            io.FirstStageFire(secondidx) := true.B
        }
    }
    Debug("FIRSTIDX %x SECONDIDX %x FIRSTIDXVALID %x SECONDIDXVALID %x\n", firstidx, secondidx, io.in(firstidx).valid, io.in(secondidx).valid)
    when(io.flush){LNU0_valid_next := false.B}
    LNU0_valid := LNU0_valid_next
    LNU0_bits  := LNU0_bits_next
    LNU0.io.in.valid := LNU0_valid
    LNU0.io.in.bits  := LNU0_bits
    when(io.flush){LNU1_valid_next := false.B}
    LNU1_valid := LNU1_valid_next
    LNU1_bits  := LNU1_bits_next
    LNU1.io.in.valid := LNU1_valid
    LNU1.io.in.bits  := LNU1_bits
    when(io.flush){SU0_valid_next := false.B}
    SU0_valid := SU0_valid_next
    SU0_bits  := SU0_bits_next
    SU0.io.in.valid := SU0_valid
    SU0.io.in.bits  := SU0_bits
    when(io.flush){SU1_valid_next := false.B}
    SU1_valid := SU1_valid_next
    SU1_bits  := SU1_bits_next
    SU1.io.in.valid := SU1_valid
    SU1.io.in.bits  := SU1_bits

    //connect 2 way out 
    val commit_operator = WireInit(0.U.asTypeOf(Vec(4,Bool())))
    val winner0 = Mux(LNU0.io.out.valid,Mux(LNU1.io.out.valid,Mux(notafter(LNU0.io.out.bits.dcOut.InstNo,LNU1.io.out.bits.dcOut.InstNo,LNU0.io.out.bits.dcOut.InstFlag,LNU1.io.out.bits.dcOut.InstFlag),0.U,1.U),0.U),1.U)
    val winner1 = Mux(SU0.io.out.valid,Mux(SU1.io.out.valid,Mux(notafter(SU0.io.out.bits.dcOut.InstNo,SU1.io.out.bits.dcOut.InstNo,SU0.io.out.bits.dcOut.InstFlag,SU1.io.out.bits.dcOut.InstFlag),2.U,3.U),2.U),3.U)
    val InstNo0 = Mux(winner0 === 0.U,LNU0.io.out.bits.dcOut.InstNo,LNU1.io.out.bits.dcOut.InstNo)
    val InstNo1 = Mux(winner1 === 2.U,SU0.io.out.bits.dcOut.InstNo,SU1.io.out.bits.dcOut.InstNo)
    val InstFlag0 = Mux(winner0 === 0.U,LNU0.io.out.bits.dcOut.InstFlag,LNU1.io.out.bits.dcOut.InstFlag)
    val InstFlag1 = Mux(winner1 === 2.U,SU0.io.out.bits.dcOut.InstFlag,SU1.io.out.bits.dcOut.InstFlag)
    val outvalid0 = Mux(winner0 === 0.U,LNU0.io.out.valid,LNU1.io.out.valid)
    val outvalid1 = Mux(winner1 === 2.U,SU0.io.out.valid,SU1.io.out.valid)
    val king  = Mux(outvalid0,Mux(outvalid1,Mux(notafter(InstNo0,InstNo1,InstFlag0,InstFlag1),winner0,winner1),winner0),winner1) 
    val queen0= Mux(king === winner0,winner1,winner0)
    val queen1= Mux(king === winner0,Mux(king === 0.U,1.U,0.U),Mux(king === 2.U,3.U,2.U))
    val InstNo2 = Mux(queen0 === 0.U,LNU0.io.out.bits.dcOut.InstNo,Mux(queen0 === 1.U,LNU1.io.out.bits.dcOut.InstNo,Mux(queen0 === 2.U,SU0.io.out.bits.dcOut.InstNo,SU1.io.out.bits.dcOut.InstNo)))
    val InstNo3 = Mux(queen1 === 0.U,LNU0.io.out.bits.dcOut.InstNo,Mux(queen1 === 1.U,LNU1.io.out.bits.dcOut.InstNo,Mux(queen1 === 2.U,SU0.io.out.bits.dcOut.InstNo,SU1.io.out.bits.dcOut.InstNo)))
    val InstFlag2 = Mux(queen0 === 0.U,LNU0.io.out.bits.dcOut.InstFlag,Mux(queen0 === 1.U,LNU1.io.out.bits.dcOut.InstFlag,Mux(queen0 === 2.U,SU0.io.out.bits.dcOut.InstFlag,SU1.io.out.bits.dcOut.InstFlag)))
    val InstFlag3 = Mux(queen1 === 0.U,LNU0.io.out.bits.dcOut.InstFlag,Mux(queen1 === 1.U,LNU1.io.out.bits.dcOut.InstFlag,Mux(queen1 === 2.U,SU0.io.out.bits.dcOut.InstFlag,SU1.io.out.bits.dcOut.InstFlag)))
    val outvalid2 = Mux(queen0 === 0.U,LNU0.io.out.valid,Mux(queen0 === 1.U,LNU1.io.out.valid,Mux(queen0 === 2.U,SU0.io.out.valid,SU1.io.out.valid)))
    val outvalid3 = Mux(queen1 === 0.U,LNU0.io.out.valid,Mux(queen1 === 1.U,LNU1.io.out.valid,Mux(queen1 === 2.U,SU0.io.out.valid,SU1.io.out.valid)))
    val queen = Mux(outvalid2,Mux(outvalid3,Mux(notafter(InstNo2,InstNo3,InstFlag2,InstFlag3),queen0,queen1),queen0),queen1)

    when(king === 0.U){
      io.out(0).bits := LNU0.io.out.bits.res
      io.dcOut(0):= LNU0.io.out.bits.dcOut
      io.out(0).valid:= LNU0.io.out.valid
      LNU0.io.out.ready := io.out(0).ready
    }.elsewhen(king === 1.U){
      io.out(0).bits := LNU1.io.out.bits.res
      io.dcOut(0):= LNU1.io.out.bits.dcOut
      io.out(0).valid:= LNU1.io.out.valid
      LNU1.io.out.ready := io.out(0).ready
    }.elsewhen(king === 2.U){
      io.out(0).bits := SU0.io.out.bits.res
      io.dcOut(0):= SU0.io.out.bits.dcOut
      io.out(0).valid:= SU0.io.out.valid
      SU0.io.out.ready := io.out(0).ready
    }.otherwise{
      io.out(0).bits := SU1.io.out.bits.res
      io.dcOut(0):= SU1.io.out.bits.dcOut
      io.out(0).valid:= SU1.io.out.valid
      SU1.io.out.ready := io.out(0).ready
    }
    when(queen === 0.U){
      io.out(1).bits := LNU0.io.out.bits.res
      io.dcOut(1):= LNU0.io.out.bits.dcOut
      io.out(1).valid:= LNU0.io.out.valid
      LNU0.io.out.ready := io.out(1).ready
    }.elsewhen(queen === 1.U){
      io.out(1).bits := LNU1.io.out.bits.res
      io.dcOut(1):= LNU1.io.out.bits.dcOut
      io.out(1).valid:= LNU1.io.out.valid
      LNU1.io.out.ready := io.out(1).ready
    }.elsewhen(queen === 2.U){
      io.out(1).bits := SU0.io.out.bits.res
      io.dcOut(1):= SU0.io.out.bits.dcOut
      io.out(1).valid:= SU0.io.out.valid
      SU0.io.out.ready := io.out(1).ready
    }.otherwise{
      io.out(1).bits := SU1.io.out.bits.res
      io.dcOut(1):= SU1.io.out.bits.dcOut
      io.out(1).valid:= SU1.io.out.valid
      SU1.io.out.ready := io.out(1).ready
    }
    Debug("[SNNU] king %x queen %x\n", king, queen)

    Debug("[SNNU] LNU0READY %x LNU1READY %x SU0READY %x SU1READY %x\n", LNU0.io.in.ready, LNU1.io.in.ready, SU0.io.in.ready, SU1.io.in.ready)
    Debug("[SNNU] io.out(0).ready %x io.out(1).ready %x\n", io.out(0).ready, io.out(1).ready)
    Debug("[SNNU] LNU0VALID %x SU0VALID %x LNU0PC %x SU0PC %x LNU0InstNo %x SU0InstNo %x \n", LNU0_valid,SU0_valid, LNU0.io.out.bits.dcOut.cf.pc,SU0.io.out.bits.dcOut.cf.pc,LNU0.io.out.bits.dcOut.InstNo,SU0.io.out.bits.dcOut.InstNo)
    Debug("[SNNU] LNU1VALID %x SU1VALID %x LNU1PC %x SU1PC %x LNU1InstNo %x SU1InstNo %x \n", LNU1_valid,SU1_valid, LNU1.io.out.bits.dcOut.cf.pc,SU1.io.out.bits.dcOut.cf.pc,LNU1.io.out.bits.dcOut.InstNo,SU1.io.out.bits.dcOut.InstNo)
}