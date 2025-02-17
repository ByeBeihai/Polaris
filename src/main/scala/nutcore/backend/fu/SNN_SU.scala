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

class SU_IO extends PolarisCoreBundle{
    val in = Flipped(Decoupled(new Bundle{
        val dcIn = new DecodeIO
        val SCtrl = new SCtrlIO
    }))

    val out = Decoupled(new Bundle{
        val res = Output(UInt(XLEN.W))
        val dcOut = new DecodeIO
    })
}


class CalcQ extends PolarisCoreModule{
    val io = IO(new Bundle{
        val en = Input(Bool())
        val din = Input(UInt(16.W))
        val Q = Output(UInt(16.W))
        val Y = Output(UInt(16.W))
        val valid = Output(Bool())
    })

    val paraQ = 5909.U
    val paraY = 2839.U
    val tmpQ = RegInit(0.U(32.W))
    val tmpY = RegInit(0.U(32.W))

    val s_idle :: s_calcQ :: s_calcY :: s_out :: Nil = Enum(4)
    val state = RegInit(s_idle)
       
    switch(state){
        is(s_idle){
          when(io.en){
            state := s_calcQ
          }.otherwise{
            state := state
          }

            
        }
        is(s_calcQ){
 
            state := s_calcY//Mux(mulq.io.valid, s_calcY, s_calcQ)
            tmpQ := io.din * paraQ// Mux(mulq.io.valid, mulq.io.res,0.U)
        }
        is(s_calcY){
            state := s_out// Mux(muly.io.valid, s_out, s_calcY)         
            tmpY := tmpQ(23, 12) * paraY// Mux(muly.io.valid, muly.io.res,0.U)
        }
        is(s_out){
            state := Mux(io.en, state, s_idle)
        }
    }

    
   
    val Q = Cat(Fill(12, 0.U), tmpQ(27, 24))
    io.Q := Q 

    val Y = Mux(tmpY(31), Cat(Fill(4, 1.U), tmpY(27, 12)), tmpY >> 12)
    io.Y := Y

    io.valid := state === s_out
}

class EXP extends PolarisCoreModule{
  val io = IO(new Bundle{
    val en = Input(Bool())
    val din = Input(SInt(16.W))
    val dout = Output(SInt(16.W))
    val valid = Output(Bool())
  })

  val calcQ = Module(new CalcQ)
  calcQ.io.din := io.din.asUInt
  calcQ.io.en := io.en
  val Q = RegInit(0.U(16.W))
  val Y = RegInit(0.U(16.W))
  Q := Mux(calcQ.io.valid, calcQ.io.Q, Q)
  Y := Mux(calcQ.io.valid, calcQ.io.Y, Y)

  val An = VecInit(Array(
    ("b0000100011001010".U).zext,
    ("b0000010000010110".U).zext,
    ("b0000001000000011".U).zext,
    ("b0000000100000000".U).zext,
    ("b0000000100000000".U).zext,
    ("b0000000010000000".U).zext,
    ("b0000000001000000".U).zext,
    ("b0000000000100000".U).zext,
    ("b0000000000010000".U).zext,
    ("b0000000000001000".U).zext,
    ("b0000000000000100".U).zext,
    ("b0000000000000010".U).zext
    
  ))

  val y = RegInit(VecInit(Seq.fill(13)(0.S(16.W))))
  val z = RegInit(VecInit(Seq.fill(13)(0.S(16.W))))
  val x = RegInit(VecInit(Seq.fill(13)(0.S(16.W))))
  val valid = RegInit(VecInit(Seq.fill(13)(false.B)))
  valid(0) := Mux(valid.reduce( _ || _), false.B, calcQ.io.valid)

  for(i <- 0 to 12){
    when(valid(12)){
      x(i) := 0.S
      y(i) := 0.S
      z(i) := 0.S
      valid(i) := false.B
    }.elsewhen(calcQ.io.valid && io.en){
      if(i == 0){
        x(i) := ("b0001001101000111".U).zext
        y(i) := 0.S
        z(i) := Mux(Y(15), Y.asSInt, Y.zext)
      }else if(i % 2 == 1){
        val tmp_x = Mux(z(i-1)(15), x(i-1) - (y(i-1) >> i), x(i-1) + (y(i-1) >> i))
        val tmp_y = Mux(z(i-1)(15), y(i-1) - (x(i-1) >> i), y(i-1) + (x(i-1) >> i))
        val tmp_z = Mux(z(i-1)(15), z(i-1) + An(i-1), z(i-1) - An(i-1))
        val tmp_valid = valid(i - 1)
        x(i) := tmp_x
        y(i) := tmp_y
        z(i) := tmp_z
        valid(i) := tmp_valid
        x(i+1) := Mux(tmp_z(15), tmp_x - (tmp_y >> (i + 1)), tmp_x + (tmp_y >> (i + 1)))
        y(i+1) := Mux(tmp_z(15), tmp_y - (tmp_x >> (i + 1)), tmp_y + (tmp_x >> (i + 1)))
        z(i+1) := Mux(tmp_z(15), tmp_z + An(i), tmp_z - An(i))
        valid(i + 1) := valid(i)
      }
    }.otherwise{
      x(i) := 0.S
      y(i) := 0.S
      z(i) := 0.S
      valid(i) := false.B
    }
  }  
  val res = x(12) + y(12)

  io.valid := valid(12)
  io.dout := res << Q

}


class SUForward extends PolarisCoreModule{
    val io = IO(new Bundle{
        val in_valid = Input(Bool())
        val src1 = Input(Vec(4, UInt(16.W)))
        val src2 = Input(Vec(4, UInt(16.W)))
        val isTdr = Input(Bool())
        val isExp = Input(Bool())
        val res = Output(Vec(4, UInt(16.W)))
        val valid = Output(Bool())
    })

    val ts0 = RegInit(VecInit(Seq.fill(4)(0.U(8.W))))
    val ts1 = RegInit(VecInit(Seq.fill(4)(0.U(8.W))))
    val ts_res = RegInit(VecInit(Seq.fill(4)(0.U(8.W))))
    val res = RegInit(VecInit(Seq.fill(4)(0.S(16.W))))
    val valid = RegInit(VecInit(Seq.fill(2)(false.B)))
    valid(0) := Mux(valid.reduce(_ || _), false.B, io.in_valid && io.isTdr)



    when(io.in_valid &&io.isTdr){
        for(i <- 0 until 4){
            ts0(i) := (io.src1(i)(15, 8))
            ts1(i) := (io.src2(i)(15, 8))
            ts_res(i) := ts0(i) - ts1(i)
        }
        io.valid := RegNext(RegNext(io.in_valid))
    }.elsewhen(io.in_valid &&io.isExp){
        val exp0 = Module(new EXP)
        val exp1 = Module(new EXP)
        val exp2 = Module(new EXP)
        val exp3 = Module(new EXP)
        exp0.io.din := Mux(io.src1(0)(15), io.src1(0).asSInt, io.src1(0).zext)
        exp1.io.din := Mux(io.src1(1)(15), io.src1(1).asSInt, io.src1(1).zext)
        exp2.io.din := Mux(io.src1(2)(15), io.src1(2).asSInt, io.src1(2).zext)
        exp3.io.din := Mux(io.src1(3)(15), io.src1(3).asSInt, io.src1(3).zext)
        exp0.io.en := io.in_valid 
        exp1.io.en := io.in_valid 
        exp2.io.en := io.in_valid 
        exp3.io.en := io.in_valid 
        res(0) := Mux(exp3.io.valid, exp3.io.dout, res(0))
        res(1) := Mux(exp2.io.valid, exp2.io.dout, res(1))
        res(2) := Mux(exp1.io.valid, exp1.io.dout, res(2))
        res(3) := Mux(exp0.io.valid, exp0.io.dout, res(3))
        io.valid := RegNext(exp0.io.valid && exp1.io.valid && exp2.io.valid && exp3.io.valid)
    }.otherwise{
        io.valid := false.B
    }

    for(i <- 0 until 4){
        io.res(i) := Mux(io.isExp, res(i).asUInt, Mux(ts_res(i)(7), SignExt(ts_res(i), 16), ZeroExt(ts_res(i), 16)))
        Debug(io.in_valid &&io.isTdr, "[SNN_SU_SUF] ts0 %x ts1 %x res %x\n", ts0(i), ts1(i), io.res(i))
    }
    
}

class SU(len: Int = 16) extends PolarisCoreModule{
    val io = IO(new SU_IO)

    val (src1, src2, acc) = (io.in.bits.SCtrl.DIn1, io.in.bits.SCtrl.DIn2, io.in.bits.SCtrl.SRF4(SRFAddr.ACC))

    val suf = Module(new SUForward)
    suf.io.src1 := src1
    suf.io.src2 := src2
    suf.io.isTdr := io.in.bits.SCtrl.isTdr
    suf.io.isExp := io.in.bits.SCtrl.isExp
    suf.io.in_valid := io.in.valid

    val res = WireInit(0.U(XLEN.W))
    val bp_valid = WireInit(false.B)

    when(io.in.bits.SCtrl.isBpo){
      val sp03 = src1
      val target = src2
      var l = List(0.U)

      for(i <- 0 until XLEN/len){
        val tmp = Mux(target(i) === 1.U, 
                    Mux(sp03(i) === 1.U, 0.U, 1.U), 
                    Mux(sp03(i) === 1.U, Fill(len , 1.U), 0.U))
        l = tmp :: l  
      }
     res := l.dropRight(1).reduce(Cat(_, _))
     io.out.bits.res := res 
     bp_valid := io.in.valid


    }.otherwise{
     res := suf.io.res.reverse.reduce(Cat(_, _))
    }
    Debug(io.in.bits.SCtrl.isTdr, "[SNN_SU] valid %b isTdr %b \n", io.in.valid, io.in.bits.SCtrl.isTdr)
    Debug("[SNN_SU] src1 %x src2 %x res %x io.res %x invalid %b outvalid %b\n", src1.reduce(Cat(_,_)), src2.reduce(Cat(_,_)), res, io.out.bits.res, io.in.valid, io.out.valid)
    io.out.bits.res := res 
    io.in.ready := !io.in.valid // Mux(io.in.bits.SCtrl.isTdr || io.in.bits.SCtrl.isExp, !suf.io.valid, !bp_valid)
    io.out.valid := Mux(io.in.bits.SCtrl.isTdr || io.in.bits.SCtrl.isExp, suf.io.valid, bp_valid)
    io.out.bits.dcOut := Mux(suf.io.valid || bp_valid, io.in.bits.dcIn, 0.U.asTypeOf(new DecodeIO))
}