package nutcore

import chisel3._

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import bus.simplebus._
import top.Settings
import difftest._

object CSA {
    def apply(src1: UInt, src2: UInt, src3: UInt) : (UInt, UInt) = {
        val t1 = src1 ^ src2
        val sum = t1 ^ src3
        val carry = VecInit((0 until t1.getWidth).map(i => Mux(t1(i), src3(i), src1(i)))).asUInt // Mux(t1, src3, src1)
        (sum, carry)
    }
}

object CP53 {
    def apply(src1: Bool, src2: Bool, src3: Bool, src4: Bool, cin: Bool) = {
        val t1 = src1 ^ src2
        val t2 = src3 ^ src4
        val cout = Mux(t1, src3, src1)
        val t3 = t1 ^ t2
        val sum = t3 ^ cin
        val carry = Mux(t3, cin, src4)
        Cat(sum, carry, cout)
    }
}

object CP42 {
    def apply(src1: UInt, src2: UInt, src3: UInt, src4: UInt) = {
        val Width = src1.getWidth
        val all =Wire(Vec(Width, UInt(3.W)))
        all(0) := CP53(src1(0),src2(0),src3(0),src4(0), false.B)
        (1 until Width).map(i => all(i) := CP53(src1(i), src2(i), src3(i), src4(i), all(i-1)(0)))
        
        (Cat(all(Width-1)(0), VecInit((0 until Width).map(all(_)(2))).asUInt),
          Cat(VecInit((0 until Width).map(all(_)(1))).asUInt, 0.U(1.W)))
    }
}

object EXT {
    def apply(src: UInt, p: Int, s: Int) = {
        if(p==0)
            if(s==0) src
            else     Cat(src, 0.U(s.W))
        else
            if(s==0) Cat(0.U(p.W), src)
            else     Cat(0.U(p.W), src, 0.U(s.W))
    }
}

class MulAddIO(val len: Int = 65) extends NutCoreBundle {
    val in = Flipped(DecoupledIO(new Bundle{
        val DecodeIn = new DecodeIO
        val srcs     = Vec(3, Output(UInt(len.W)))
        val Pctrl = new PIDUIO
    }))
    val out = Decoupled(new Bundle{
        val result = Output(UInt((2*len).W))
        val DecodeOut = new DecodeIO
        val OV     = Output(Bool())
        val Pctrl = new PIDUIO
    })
    //val sub = Input(Bool()) //mul-sub
    val flush = Input(Bool()) 
    val FirstStageFire = Output(Bool())
}

class MulAdd65(len: Int = 65) extends NutCoreModule {
    val io = IO(new MulAddIO(len)) // TODO: len only supports 65
    /* assume signed-unsigned is hangled by MDU*/
    // val X = io.in.bits.src1
    // val Y = io.in.bits.src2
    // val Z = io.in.bits.src3
    val valid = io.in.valid
    val X = io.in.bits.srcs(0)
    val Y = io.in.bits.srcs(1)
    //val Z = io.in.bits.srcs(2)
    // X * Y + Z. X,Y,Z is both 65-bits, pre-processed by out-module
    // -(X * Y) + Z
    
    // 1st stage: generate partial
    // 2nd stage: compress
    // 3rd stage: add
    // 4th stage: neg
    val s1Fire = Wire(Bool())
    val s2Fire = Wire(Bool())
    val s3Fire = Wire(Bool())
    //val s4Fire = Wire(Bool())
    val s1_valid = io.in.valid
    val s2_valid = RegEnable(false.B, init = false.B, s2Fire || io.flush)
    val s3_valid = RegEnable(false.B, init = false.B, s3Fire || io.flush)
    //val s4_valid = RegEnable(false.B, init = false.B, s4Fire || io.flush)
    val s2_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s2Fire)
    val s3_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s3Fire)
    val s2_Pctrl = RegEnable(0.U.asTypeOf(new PIDUIO),init = 0.U.asTypeOf(new PIDUIO),s2Fire)
    val s3_Pctrl = RegEnable(0.U.asTypeOf(new PIDUIO),init = 0.U.asTypeOf(new PIDUIO),s3Fire)
    //val s4_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s4Fire)
    val subS3 = Reg(Bool()) // for mul-sub, get into s4Stage
    when (s1Fire) { 
        s2_valid := true.B 
        s2_decodein := io.in.bits.DecodeIn
        s2_Pctrl := io.in.bits.Pctrl
    }
    when (s2Fire) { 
        s3_valid := true.B
        s3_decodein := s2_decodein
        s3_Pctrl := s2_Pctrl
    }
    /*
    when (s3Fire && subS3) { 
        s4_valid := true.B 
        s4_decodein :=s3_decodein
    }
    */
    val s1_ready = !s1_valid || s1Fire
    val s2_ready = !s2_valid || s2Fire
    val s3_ready = !s3_valid || s3Fire
    //val s4_ready = !s4_valid || s4Fire
    s1Fire := s1_valid && s2_ready
    s2Fire := s2_valid && s3_ready
    s3Fire := s3_valid && io.out.ready //Mux(s3_valid && !subS3, s3_valid && io.out.ready, s3_valid && s4_ready)
    //s4Fire := s4_valid && io.out.ready
    
    // first stage
    val lenOdd = len % 2 == 1
    assert(lenOdd)
    val Len = if(lenOdd) len+1 else len //
    val NBooth:Int = Len / 2 //
    
    val y_extend = if(lenOdd) Cat(Y(len-1), Y, 0.U(1.W)) else Cat(Y, 0.U(1.W))
    val y_part = Wire(Vec(NBooth, UInt(3.W))) // radix-4 booth
    (0 until NBooth).map(i => y_part(i) := y_extend(i*2+2, i*2))
    val booth_x = Wire(Vec(NBooth, UInt(Len.W)))
    (0 until NBooth).map(i => booth_x(i) := LookupTree(y_part(i), List(
        "b000".U  -> 0.U(Len.W),
        "b001".U  -> SignExt(X, Len),
        "b010".U  -> SignExt(X, Len),
        "b011".U  -> SignExt(X << 1.U, Len),
        "b100".U  -> SignExt(~(X << 1.U), Len),
        "b101".U  -> ~SignExt(X, Len),
        "b110".U  -> ~SignExt(X, Len),
        "b111".U  -> 0.U(Len.W)
    ))) // FIXME: handle the case that len is not odd, 2*X is hard to handle.
    
    val isSub = VecInit((0 until NBooth).map(i => y_part(i)(2).asBool && y_part(i) =/= "b111".U)).asUInt
    val isNeg = VecInit((0 until NBooth).map(i => booth_x(i)(Len-1))).asUInt
    
    val boothWire = Wire(Vec(NBooth, UInt((Len+3).W)))
    (1 until NBooth).map(i => boothWire(i) := Cat(1.U(1.W), ~isNeg(i), booth_x(i)(Len-2, 0), 0.U(1.W), isSub(i-1)))
    boothWire(0) := Cat(0.U(2.W), 1.U(1.W), ~isNeg(0), booth_x(0)(Len-2,0))
    
    // second stage
    val booth = RegEnable(boothWire, s1Fire)
    //val Z_reg = RegEnable(Z, s1Fire)
    //val subS2 = RegEnable(false.B, s1Fire)
    //val Z_add = Mux(subS2, ~Z_reg, Z_reg)
    
    val last_booth = booth(NBooth-1)(Len+1, 0)
    
    // 33+1 => 32 + 2 => 16 + 2    => 8 + 2 =>
    // first layer, use 42-compressor
    val boothZ = Cat(0.U(1.W), 1.U(1.W), 0.U(65.W))//Cat(0.U(1.W), ~Z_add(64), Z_add(64,0)) // 2+65 = 67
    val (s0_0, c0_0) = CP42(EXT(boothZ,4,0),EXT(booth(0),2,0),  EXT(booth(1),2,0),  EXT(booth(2),0,2)) //72
    val (s0_1, c0_1) = CP42(EXT(booth(3),6,0),  EXT(booth(4),4,2),  EXT(booth(5),2,4),  EXT(booth(6),0,6)) //76
    val (s0_2, c0_2) = CP42(EXT(booth(7),6,0),  EXT(booth(8),4,2),  EXT(booth(9),2,4),  EXT(booth(10),0,6))
    val (s0_3, c0_3) = CP42(EXT(booth(11),6,0), EXT(booth(12),4,2), EXT(booth(13),2,4), EXT(booth(14),0,6))
    val (s0_4, c0_4) = CP42(EXT(booth(15),6,0), EXT(booth(16),4,2), EXT(booth(17),2,4), EXT(booth(18),0,6))
    val (s0_5, c0_5) = CP42(EXT(booth(19),6,0), EXT(booth(20),4,2), EXT(booth(21),2,4), EXT(booth(22),0,6))
    val (s0_6, c0_6) = CP42(EXT(booth(23),6,0), EXT(booth(24),4,2), EXT(booth(25),2,4), EXT(booth(26),0,6))
    val (s0_7, c0_7) = CP42(EXT(booth(27),6,0), EXT(booth(28),4,2), EXT(booth(29),2,4), EXT(booth(30),0,6))
    val add1_0 = s0_0(3,0)
    val add2_0 = c0_0(3,0)
    // second layer
    val (s1_0, c1_0) = CP42(EXT(s0_0(71,4),8,0), EXT(c0_0(71,4),8,0), s0_1, c0_1) // 77
    val (s1_1, c1_1) = CP42(EXT(s0_2,8,0), EXT(c0_2,8,0), EXT(s0_3,0,8), EXT(c0_3,0,8)) //85
    val (s1_2, c1_2) = CP42(EXT(s0_4,8,0), EXT(c0_4,8,0), EXT(s0_5,0,8), EXT(c0_5,0,8)) //85
    val (s1_3, c1_3) = CP42(EXT(s0_6,8,0), EXT(c0_6,8,0), EXT(s0_7,0,8), EXT(c0_7,0,8)) //85
    val add1_1 = s1_0(7,0)
    val add2_1 = c1_0(7,0)
    // third layer
    val (s2_0, c2_0) = CP42(EXT(s1_0(76,8),16,0), EXT(c1_0(76,8),16,0), s1_1, c1_1) // 86
    val (s2_1, c2_1) = CP42(EXT(s1_2,16,0), EXT(c1_2,16,0), EXT(s1_3,0,16), EXT(c1_3,0,16))// 102
    val add1_2 = s2_0(15,0)
    val add2_2 = c2_0(15,0)
    // fourth layer
    val (s3_0, c3_0) = CP42(EXT(s2_0(85,16),32,0), EXT(c2_0(85,16),32,0), s2_1, c2_1)//.map(_(101,0))
    val add1_3 = s3_0(31,0)
    val add2_3 = c3_0(31,0)
    // firth layer
    val (s4_0, c4_0) = CP42(s3_0(101,32), c3_0(101,32), EXT(booth(NBooth-2),1,0), EXT(last_booth,0,2))
    val add1_4 = s4_0(69,0)
    val add2_4 = c4_0(69,0)
    
    // third stage
    val add1 = RegEnable(Cat(add1_4, add1_3, add1_2, add1_1, add1_0), s2Fire)
    val add2 = RegEnable(Cat(add2_4, add2_3, add2_2, add2_1, add2_0), s2Fire)
    //when(s2Fire) { subS3 := subS2 } // assign subS3 here
    val res = add1 + add2 //+ subS3
    
    // fourth stage
    //val resS4 = RegEnable(res(len-1, 0), s3Fire)
    //val resSub = ~resS4 + 1.U
    
    io.in.ready := s1_ready
    io.out.bits.result := res(2*len-1,0) //Mux(s3_valid && !subS3, res(2*len-1,0), ZeroExt(resSub, 2*len))
    io.out.bits.DecodeOut := s3_decodein //Mux(s3_valid && !subS3, s3_decodein, s4_decodein)
    io.out.bits.Pctrl := s3_Pctrl //Mux(s3_valid && !subS3, s3_Pctrl, s4_Pctrl)
    io.out.valid := s3_valid //Mux(s3_valid && !subS3, s3_valid, s4_valid)
    io.out.bits.OV := false.B
    io.FirstStageFire := s1Fire
}

class MulAdd33(len: Int = 33) extends NutCoreModule {
    val io = IO(new MulAddIO(len)) // TODO: len only supports 65
    /* assume signed-unsigned is hangled by MDU*/
    // val X = io.in.bits.src1
    // val Y = io.in.bits.src2
    // val Z = io.in.bits.src3
    val valid = io.in.valid
    val X = io.in.bits.srcs(0)
    val Y = io.in.bits.srcs(1)
    //val Z = io.in.bits.srcs(2)
    // X * Y + Z. X,Y,Z is both 65-bits, pre-processed by out-module
    // -(X * Y) + Z
    
    // 1st stage: generate partial
    // 2nd stage: compress
    // 3rd stage: add
    // 4th stage: neg
    val s1Fire = Wire(Bool())
    val s2Fire = Wire(Bool())
    val s3Fire = Wire(Bool())
    //val s4Fire = Wire(Bool())
    val s1_valid = io.in.valid
    val s2_valid = RegEnable(false.B, init = false.B, s2Fire || io.flush)
    val s3_valid = RegEnable(false.B, init = false.B, s3Fire || io.flush)
    //val s4_valid = RegEnable(false.B, init = false.B, s4Fire || io.flush)
    val s2_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s2Fire)
    val s3_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s3Fire)
    //val s4_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s4Fire)
    val subS3 = Reg(Bool()) // for mul-sub, get into s4Stage
    when (s1Fire) { 
        s2_valid := true.B 
        s2_decodein := io.in.bits.DecodeIn
    }
    when (s2Fire) { 
        s3_valid := true.B
        s3_decodein := s2_decodein
    }
    /*
    when (s3Fire && subS3) { 
        s4_valid := true.B 
        s4_decodein :=s3_decodein
    }
    */
    val s1_ready = !s1_valid || s1Fire
    val s2_ready = !s2_valid || s2Fire
    val s3_ready = !s3_valid || s3Fire
    //val s4_ready = !s4_valid || s4Fire
    s1Fire := s1_valid && s2_ready
    s2Fire := s2_valid && s3_ready
    s3Fire := s3_valid && io.out.ready //Mux(s3_valid && !subS3, s3_valid && io.out.ready, s3_valid && s4_ready)
    //s4Fire := s4_valid && io.out.ready
    
    // First Stage
    val lenOdd = len % 2 == 1
    assert(lenOdd)
    val Len = if(lenOdd) len+1 else len //
    val NBooth:Int = Len / 2 //
    
    val y_extend = if(lenOdd) Cat(Y(len-1), Y, 0.U(1.W)) else Cat(Y, 0.U(1.W))
    val y_part = Wire(Vec(NBooth, UInt(3.W))) // radix-4 booth
    (0 until NBooth).map(i => y_part(i) := y_extend(i*2+2, i*2))
    val booth_x = Wire(Vec(NBooth, UInt(Len.W)))
    (0 until NBooth).map(i => booth_x(i) := LookupTree(y_part(i), List(
        "b000".U  -> 0.U(Len.W),
        "b001".U  -> SignExt(X, Len),
        "b010".U  -> SignExt(X, Len),
        "b011".U  -> SignExt(X << 1.U, Len),
        "b100".U  -> SignExt(~(X << 1.U), Len),
        "b101".U  -> ~SignExt(X, Len),
        "b110".U  -> ~SignExt(X, Len),
        "b111".U  -> 0.U(Len.W)
    ))) // FIXME: handle the case that len is not odd, 2*X is hard to handle.
    
    val isSub = VecInit((0 until NBooth).map(i => y_part(i)(2).asBool && y_part(i) =/= "b111".U)).asUInt
    val isNeg = VecInit((0 until NBooth).map(i => booth_x(i)(Len-1))).asUInt
    
    val boothWire = Wire(Vec(NBooth, UInt((Len+3).W)))
    (1 until NBooth).map(i => boothWire(i) := Cat(1.U(1.W), ~isNeg(i), booth_x(i)(Len-2, 0), 0.U(1.W), isSub(i-1)))
    boothWire(0) := Cat(0.U(2.W), 1.U(1.W), ~isNeg(0), booth_x(0)(Len-2,0))
    
    // second stage
    val booth = RegEnable(boothWire, s1Fire)
    //val Z_reg = RegEnable(Z, s1Fire)
    //val subS2 = RegEnable(false.B, s1Fire)
    //val Z_add = Mux(subS2, ~Z_reg, Z_reg)
    
    val last_booth = booth(NBooth-1)(Len+1, 0)
    
    // 17+1
    // => 4 + 4 + 4 + 4 + 2
    // => 4 + 4 + 2
    // => 4 + 2 (or 3 + 3)
    // => 4
    // => 2
    val boothZ = Cat(0.U(1.W), 1.U(1.W), 0.U(33.W)) //Cat(0.U(1.W), ~Z_add(32), Z_add(32,0)) // 2+len=35
    val (s0_0, c0_0) = CP42(EXT(boothZ,4,0),    EXT(booth(0),2,0),  EXT(booth(1),2,0),  EXT(booth(2),0,2)) //40
    val (s0_1, c0_1) = CP42(EXT(booth(3),6,0),  EXT(booth(4),4,2),  EXT(booth(5),2,4),  EXT(booth(6),0,6)) //44
    val (s0_2, c0_2) = CP42(EXT(booth(7),6,0),  EXT(booth(8),4,2),  EXT(booth(9),2,4),  EXT(booth(10),0,6))
    val (s0_3, c0_3) = CP42(EXT(booth(11),6,0), EXT(booth(12),4,2), EXT(booth(13),2,4), EXT(booth(14),0,6)) //44
    val add1_0 = s0_0(3,0)
    val add2_0 = c0_0(3,0)
    // seconde layer
    val (s1_0, c1_0) = CP42(EXT(s0_0(39,4),8,0), EXT(c0_0(39,4),8,0), s0_1, c0_1) // 45
    val (s1_1, c1_1) = CP42(EXT(s0_2,8,0), EXT(c0_2,8,0), EXT(s0_3,0,8), EXT(c0_3,0,8)) //53
    val add1_1 = s1_0(7,0)
    val add2_1 = c1_0(7,0)
    // third layer
    val (s2_0, c2_0) = CP42(EXT(s1_0(44,8),16,0), EXT(c1_0(44,8),16,0), s1_1, c1_1) // 54
    val add1_2 = s2_0(15,0)
    val add2_2 = c2_0(15,0)
    // fouth layer
    // val (s3_0, c3_0) = cp42(s2_0(53,16), c2_0(53,16), s0_4, Cat(c0_4(c0_4.getWidth-2,0),0.U(1.W))) //39
    val (s3_0, c3_0) = CP42(s2_0(53,16), c2_0(53,16), EXT(booth(NBooth-2),1,0), EXT(last_booth,0,2))
    val add1_3 = s3_0(37,0)
    val add2_3 = c3_0(37,0)
    
    // Third stage
    // 4 + 8 + 16 + 38 => 66
    val add1 = RegEnable(Cat(add1_3, add1_2, add1_1, add1_0), s2Fire)
    val add2 = RegEnable(Cat(add2_3, add2_2, add2_1, add2_0), s2Fire)
    //when(s2Fire) { subS3 := subS2 } // assign subS3 here
    val res = add1 + add2 //+ subS3
    
    // fourth stage
    //val resS4 = RegEnable(res(len-1, 0), s3Fire)
    //val resSub = ~resS4 + 1.U
    
    io.in.ready := s1_ready
    io.out.bits.result := res(2*len-1,0)//Mux(s3_valid && !subS3, res(2*len-1,0), ZeroExt(resSub, 2*len))
    io.out.bits.DecodeOut := s3_decodein//Mux(s3_valid && !subS3, s3_decodein, s4_decodein)
    io.out.bits.Pctrl := DontCare
    io.out.valid := s3_valid//Mux(s3_valid && !subS3, s3_valid, s4_valid)
    io.out.bits.OV := false.B
    io.FirstStageFire := s1Fire
}

class MulAdd17(len: Int = 17) extends NutCoreModule {
    val io = IO(new MulAddIO(len)) // TODO: len only supports 17
    /* assume signed-unsigned is hangled by MDU*/
    // val X = io.in.bits.src1
    // val Y = io.in.bits.src2
    // val Z = io.in.bits.src3
    val valid = io.in.valid
    val X = io.in.bits.srcs(0)
    val Y = io.in.bits.srcs(1)
    //val Z = io.in.bits.srcs(2)
    // X * Y + Z. X,Y,Z is both 65-bits, pre-processed by out-module
    // -(X * Y) + Z
    
    // 1st stage: generate partial
    // 2nd stage: compress
    // 3rd stage: add
    // 4th stage: neg
    val s1Fire = Wire(Bool())
    val s2Fire = Wire(Bool())
    val s3Fire = Wire(Bool())
    //val s4Fire = Wire(Bool())
    val s1_valid = io.in.valid
    val s2_valid = RegEnable(false.B, init = false.B, s2Fire || io.flush)
    val s3_valid = RegEnable(false.B, init = false.B, s3Fire || io.flush)
    //val s4_valid = RegEnable(false.B, init = false.B, s4Fire || io.flush)
    val s2_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s2Fire)
    val s3_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s3Fire)
    //val s4_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s4Fire)
    val subS3 = Reg(Bool()) // for mul-sub, get into s4Stage
    when (s1Fire) { 
        s2_valid := true.B 
        s2_decodein := io.in.bits.DecodeIn
    }
    when (s2Fire) { 
        s3_valid := true.B
        s3_decodein := s2_decodein
    }
    /*
    when (s3Fire && subS3) { 
        s4_valid := true.B 
        s4_decodein :=s3_decodein
    }
    */
    val s1_ready = !s1_valid || s1Fire
    val s2_ready = !s2_valid || s2Fire
    val s3_ready = !s3_valid || s3Fire
    //val s4_ready = !s4_valid || s4Fire
    s1Fire := s1_valid && s2_ready
    s2Fire := s2_valid && s3_ready
    s3Fire := s3_valid && io.out.ready//Mux(s3_valid && !subS3, s3_valid && io.out.ready, s3_valid && s4_ready)
    //s4Fire := s4_valid && io.out.ready
    
    // First Stage
    val lenOdd = len % 2 == 1
    assert(lenOdd)
    val Len = if(lenOdd) len+1 else len //
    val NBooth:Int = Len / 2 //
    
    val y_extend = if(lenOdd) Cat(Y(len-1), Y, 0.U(1.W)) else Cat(Y, 0.U(1.W))
    val y_part = Wire(Vec(NBooth, UInt(3.W))) // radix-4 booth
    (0 until NBooth).map(i => y_part(i) := y_extend(i*2+2, i*2))
    val booth_x = Wire(Vec(NBooth, UInt(Len.W)))
    (0 until NBooth).map(i => booth_x(i) := LookupTree(y_part(i), List(
        "b000".U  -> 0.U(Len.W),
        "b001".U  -> SignExt(X, Len),
        "b010".U  -> SignExt(X, Len),
        "b011".U  -> SignExt(X << 1.U, Len),
        "b100".U  -> SignExt(~(X << 1.U), Len),
        "b101".U  -> ~SignExt(X, Len),
        "b110".U  -> ~SignExt(X, Len),
        "b111".U  -> 0.U(Len.W)
    ))) // FIXME: handle the case that len is not odd, 2*X is hard to handle.
    
    val isSub = VecInit((0 until NBooth).map(i => y_part(i)(2).asBool && y_part(i) =/= "b111".U)).asUInt
    val isNeg = VecInit((0 until NBooth).map(i => booth_x(i)(Len-1))).asUInt
    
    val boothWire = Wire(Vec(NBooth, UInt((Len+3).W)))
    (1 until NBooth).map(i => boothWire(i) := Cat(1.U(1.W), ~isNeg(i), booth_x(i)(Len-2, 0), 0.U(1.W), isSub(i-1)))
    boothWire(0) := Cat(0.U(2.W), 1.U(1.W), ~isNeg(0), booth_x(0)(Len-2,0))
    
    // Second Stage
    val booth = RegEnable(boothWire, s1Fire)
    //val Z_reg = RegEnable(Z, s1Fire)
    //val subS2 = RegEnable(false.B, s1Fire)
    //val Z_add = Mux(subS2, ~Z_reg, Z_reg)
    
    val last_booth = booth(NBooth-1)(Len+1, 0)
    
    // 9 + 1 => 4 + 4 + 2 => 4 + 2 => 4 => 2
    // first layer, use 42-compressor
    val boothZ = Cat(0.U(1.W), 1.U(1.W), 0.U(17.W))//Cat(0.U(1.W), ~Z_add(16), Z_add(16,0)) // 2+17=19
    val (s0_0, c0_0) = CP42(EXT(boothZ,4,0), EXT(booth(0),2,0), EXT(booth(1),2,0), EXT(booth(2),0,2)) //24
    val (s0_1, c0_1) = CP42(EXT(booth(3),6,0), EXT(booth(4),4,2), EXT(booth(5),2,4), EXT(booth(6),0,6)) //28
    val add1_0 = s0_0(3,0)
    val add2_0 = c0_0(3,0)
    // second layer
    val (s1_0, c1_0) = CP42(EXT(s0_0(23,4),8,0), EXT(c0_0(23,4),8,0), s0_1, c0_1) // 29
    val add1_1 = s1_0(7,0)
    val add2_1 = c1_0(7,0)
    // third layer
    val (s2_0, c2_0) = CP42(EXT(s1_0(28,8),1,0), EXT(c1_0(28,8),1,0), EXT(booth(NBooth-2),1,0), EXT(last_booth,0,2))
    val add1_2 = s2_0(21,0)
    val add2_2 = c2_0(21,0)
    
    // Third Stage
    // 4 + 8 + 22 => 34
    val add1 = RegEnable(Cat(add1_2, add1_1, add1_0), s2Fire)
    val add2 = RegEnable(Cat(add2_2, add2_1, add2_0), s2Fire)
    //when(s2Fire) { subS3 := subS2 } // assign subS3 here
    val res = add1 + add2 //+ subS3
    
    // fourth stage
    //val resS4 = RegEnable(res(len-1, 0), s3Fire)
    //val resSub = ~resS4 + 1.U
    
    io.in.ready := s1_ready
    io.out.bits.result := res(2*len-1,0) //Mux(s3_valid && !subS3, res(2*len-1,0), ZeroExt(resSub, 2*len))
    io.out.bits.DecodeOut := s3_decodein //Mux(s3_valid && !subS3, s3_decodein, s4_decodein)
    io.out.bits.Pctrl := DontCare
    io.out.valid := s3_valid //Mux(s3_valid && !subS3, s3_valid, s4_valid)
    io.out.bits.OV := false.B
    io.FirstStageFire := s1Fire
}

class MulAdd9(len: Int = 9) extends NutCoreModule {
    val io = IO(new MulAddIO(len)) // TODO: len only supports 65
    /* assume signed-unsigned is hangled by MDU*/
    // val X = io.in.bits.src1
    // val Y = io.in.bits.src2
    // val Z = io.in.bits.src3
    val valid = io.in.valid
    val X = io.in.bits.srcs(0)
    val Y = io.in.bits.srcs(1)
    //val Z = io.in.bits.srcs(2)
    // X * Y + Z. X,Y,Z is both 65-bits, pre-processed by out-module
    // -(X * Y) + Z
    
    // 1st stage: generate partial
    // 2nd stage: compress
    // 3rd stage: add
    // 4th stage: neg
    val s1Fire = Wire(Bool())
    val s2Fire = Wire(Bool())
    val s3Fire = Wire(Bool())
    //val s4Fire = Wire(Bool())
    val s1_valid = io.in.valid
    val s2_valid = RegEnable(false.B, init = false.B, s2Fire || io.flush)
    val s3_valid = RegEnable(false.B, init = false.B, s3Fire || io.flush)
    //val s4_valid = RegEnable(false.B, init = false.B, s4Fire || io.flush)
    val s2_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s2Fire)
    val s3_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s3Fire)
    //val s4_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s4Fire)
    val subS3 = Reg(Bool()) // for mul-sub, get into s4Stage
    when (s1Fire) { 
        s2_valid := true.B 
        s2_decodein := io.in.bits.DecodeIn
    }
    when (s2Fire) { 
        s3_valid := true.B
        s3_decodein := s2_decodein
    }
    /*
    when (s3Fire && subS3) { 
        s4_valid := true.B 
        s4_decodein :=s3_decodein
    }
    */
    val s1_ready = !s1_valid || s1Fire
    val s2_ready = !s2_valid || s2Fire
    val s3_ready = !s3_valid || s3Fire
    //val s4_ready = !s4_valid || s4Fire
    s1Fire := s1_valid && s2_ready
    s2Fire := s2_valid && s3_ready
    s3Fire := s3_valid && io.out.ready //Mux(s3_valid && !subS3, s3_valid && io.out.ready, s3_valid && s4_ready)
    //s4Fire := s4_valid && io.out.ready
    
    // First Stage
    val lenOdd = len % 2 == 1
    assert(lenOdd)
    val Len = if(lenOdd) len+1 else len //
    val NBooth = Len / 2 //
    
    val y_extend = if(lenOdd) Cat(Y(len-1), Y, 0.U(1.W)) else Cat(Y, 0.U(1.W))
    val y_part = Wire(Vec(NBooth, UInt(3.W))) // radix-4 booth
    (0 until NBooth).map(i => y_part(i) := y_extend(i*2+2, i*2))
    val booth_x = Wire(Vec(NBooth, UInt(Len.W)))
    (0 until NBooth).map(i => booth_x(i) := LookupTree(y_part(i), List(
        "b000".U  -> 0.U(Len.W),
        "b001".U  -> SignExt(X, Len),
        "b010".U  -> SignExt(X, Len),
        "b011".U  -> SignExt(X << 1.U, Len),
        "b100".U  -> SignExt(~(X << 1.U), Len),
        "b101".U  -> ~SignExt(X, Len),
        "b110".U  -> ~SignExt(X, Len),
        "b111".U  -> 0.U(Len.W)
    ))) // FIXME: handle the case that len is not odd, 2*X is hard to handle.
    
    val isSub = VecInit((0 until NBooth).map(i => y_part(i)(2).asBool && y_part(i) =/= "b111".U)).asUInt
    val isNeg = VecInit((0 until NBooth).map(i => booth_x(i)(Len-1))).asUInt
    
    val boothWire = Wire(Vec(NBooth, UInt((Len+3).W)))
    (1 until NBooth).map(i => boothWire(i) := Cat(1.U(1.W), ~isNeg(i), booth_x(i)(Len-2, 0), 0.U(1.W), isSub(i-1)))
    boothWire(0) := Cat(0.U(2.W), 1.U(1.W), ~isNeg(0), booth_x(0)(Len-2,0))
    
    // Second Stage
    val booth = RegEnable(boothWire, s1Fire)
    //val Z_reg = RegEnable(Z, s1Fire)
    //val subS2 = RegEnable(false.B, s1Fire)
    //val Z_add = Mux(subS2, ~Z_reg, Z_reg)
    
    val last_booth = booth(NBooth-1)(Len+1, 0)
    
    // 5+1 => 4 + 2 => 4 => 2
    // first layer, use 42-compressor
    val boothZ = Cat(0.U(1.W), 1.U(1.W), 0.U(9.W)) //Cat(0.U(1.W), ~Z_add(8), Z_add(8,0)) // 2+9 = 11
    val (s0_0, c0_0) = CP42(EXT(boothZ,4,0), EXT(booth(0),2,0), EXT(booth(1),2,0), EXT(booth(2),0,2)) //16
    val add1_0 = s0_0(3,0)
    val add2_0 = c0_0(3,0)
    // second layer
    val (s1_0, c1_0) = CP42(EXT(s0_0(15,4),2,0), EXT(c0_0(15,4),2,0), EXT(booth(NBooth-2),1,0), EXT(last_booth,0,2))
    val add1_1 = s1_0(13,0)
    val add2_1 = c1_0(13,0)
    
    // Third Stage
    val add1 = RegEnable(Cat(add1_1, add1_0), s2Fire)
    val add2 = RegEnable(Cat(add2_1, add2_0), s2Fire)
    //when(s2Fire) { subS3 := subS2 } // assign subS3 here
    val res = add1 + add2 //+ subS3
    
    // fourth stage
    //val resS4 = RegEnable(res(len-1, 0), s3Fire)
    //val resSub = ~resS4 + 1.U
    
    // io
    io.in.ready := s1_ready
    io.out.bits.result := res(2*len-1,0) //Mux(s3_valid && !subS3, res(2*len-1,0), ZeroExt(resSub, 2*len))
    io.out.bits.DecodeOut := s3_decodein //Mux(s3_valid && !subS3, s3_decodein, s4_decodein)
    io.out.bits.Pctrl := DontCare
    io.out.valid := s3_valid //Mux(s3_valid && !subS3, s3_valid, s4_valid)
    io.out.bits.OV := false.B
    io.FirstStageFire := s1Fire
}

class MulAdd(len: Int = 9) extends NutCoreModule {
    val io = IO(new MulAddIO(len)) 
    val valid = io.in.valid
    val X = io.in.bits.srcs(0)
    val Y = io.in.bits.srcs(1)
    val s1Fire = Wire(Bool())
    val s2Fire = Wire(Bool())
    val s1_valid = io.in.valid
    val s2_valid = RegEnable(false.B, init = false.B, s2Fire || io.flush)
    val s2_decodein = RegEnable(0.U.asTypeOf(new DecodeIO),init = 0.U.asTypeOf(new DecodeIO),s2Fire)
    val s2_Pctrl = RegEnable(0.U.asTypeOf(new PIDUIO),init = 0.U.asTypeOf(new PIDUIO),s2Fire)
    when (s1Fire) { 
        s2_valid := true.B 
        s2_decodein := io.in.bits.DecodeIn
        s2_Pctrl := io.in.bits.Pctrl
    }
    val s1_ready = !s1_valid || s1Fire
    val s2_ready = !s2_valid || s2Fire
    s1Fire := s1_valid && s2_ready
    s2Fire := s2_valid && io.out.ready
    
    // First Stage
    val xy = X.asSInt * Y.asSInt
    
    // Second Stage
    val res = RegEnable(xy, s1Fire)
    
    // io
    io.in.ready := s1_ready
    io.out.bits.result := res(2*len-1,0)
    io.out.bits.DecodeOut := s2_decodein
    io.out.bits.Pctrl := s2_Pctrl
    io.out.valid := s2_valid //Mux(s3_valid && !subS3, s3_valid, s4_valid)
    io.out.bits.OV := false.B
    io.FirstStageFire := s1Fire
}


class PMDUIO extends PALUIO {
    val flush = Input(Bool())
    val FirstStageFire = Output(Bool())
    
}

class PMDU extends NutCoreModule {
    val io = IO(new PMDUIO)

    val valid = io.in.valid
    val src1  = io.in.bits.DecodeIn.data.src1
    val src2  = io.in.bits.DecodeIn.data.src2
    val src3  = io.in.bits.DecodeIn.data.src3
    val func  = io.in.bits.DecodeIn.ctrl.fuOpType
    val funct3= io.in.bits.DecodeIn.ctrl.funct3

    def isMul_16(func:UInt,funct3:UInt)   = {func(2) === 0.U && funct3 === 0.U}
    def isMul_8 (func:UInt,funct3:UInt)   = {func(2) === 1.U && funct3 === 0.U && func(6,3) =/= "b1100".U}
    def isMSW_3232(func:UInt,funct3:UInt) = {func(6,5) === "b01".U && func(2,1) === "b00".U && funct3 === 1.U}
    def isMSW_3216(func:UInt,funct3:UInt) = {(func(6,5) === "b01".U && func(2,1) === "b01".U || func(6) === "b1".U && func(2,0) === "b111".U) && funct3 === 1.U}
    def isS1632(func:UInt,funct3:UInt)    = {(!func(6).asBool && (func(2,0) === "b100".U || func(2,0) === "b101".U && func(6,3) > 2.U || func(2,0) === "b110".U && func(5).asBool || func === "b0100111".U)) && funct3 === 1.U}
    def isS1664(func:UInt,funct3:UInt)    = {func === "b0101111".U && funct3 === 1.U}
    def is832(func:UInt,funct3:UInt)      = {func(6,3) === "b1100".U && func(2,0) =/= "b111".U && funct3 === 0.U}
    def is3264(func:UInt,funct3:UInt)     = {func(6,5) === "b10".U && func(2,1) === "b01".U && funct3 === "b001".U}
    def is1664(func:UInt,funct3:UInt)     = {func(6,5) === "b10".U && func(2,0) =/= "b111".U && funct3 === "b001".U}
    def isQ15orQ31(func:UInt,funct3:UInt)      = {(func(6,5) === "b00".U && (func(2,0) === "b110".U || func(2,0) === "b101".U) || func(6,5) === "b11".U && func(2,0) === "b001".U && func(4,3) =/= "b00".U) && funct3 === "b001".U}
    //def isQ31_type0(func:UInt,funct3:UInt)= {func(6,5) === "b00".U && func(2,0) === "b101".U && funct3 === "b001".U}
    //def isQ31_type1(func:UInt,funct3:UInt)= {func(6,5) === "b11".U && func(2,0) === "b001".U && func(4,3) =/= "b00".U && funct3 === "b001".U}
    def isC31(func:UInt,funct3:UInt)      = {(func(6,4) === "b111".U && func(2,0) === "b000".U || func(6,3) === "b1100".U && func(2,1) === "b01".U) && funct3 === "b001".U}
    def isQ15_64ONLY(func:UInt,funct3:UInt)={func(6,5) === "b11".U && func(4,3)=/="b00".U && func(2) === "b1".U && func(1,0) =/= "b11".U && funct3 === "b001".U}
    def isQ63_64ONLY(func:UInt,funct3:UInt)={func(6,5) === "b01".U && func(4,3)=/="b00".U && func(2,0) === "b101".U && funct3 === "b010".U}
    def isMul_32_64ONLY(func:UInt,funct3:UInt) = {(func(6,3) === "b0010".U || func(6,3) === "b0001".U) && func(2,0) === "b100".U && funct3 === "b010".U}
    def isPMA_64ONLY(func:UInt,funct3:UInt)={(func(6,3)==="b0011".U && func(2,1) === "b10".U || func(6,3)==="b0100".U && func(2).asBool || (func(2,0) === "b100".U || func(2,0) === "b110".U) && func(6,5)==="b01".U && func(4,3)=/="b00".U) && funct3 === "b010".U}
    def SrcSigned(func:UInt)  = {func(6,3) =/= "b1011".U}
    def Xsrc(func:UInt)       = {func(1,0) ===  "b01".U || func(6,3) === "b1001".U}
    def Saturating(func:UInt) = {func(1,0) ===  "b11".U}

    def extender(SrcSigned:Bool,src:UInt,width:Int)={
        val a = WireInit(0.U(width.W))
        when(SrcSigned){
            a := SignExt(src,width)
        }.otherwise{
            a := ZeroExt(src,width)
        }
        a
    }
    def SrcSetter(width:Int,src:UInt,Xsrc:Bool)={
        var l = List(0.U)
        for(i <- 0 until XLEN/width){
            val SrcClip = WireInit(src(i * width + width - 1, i * width))
            when(Xsrc){
                if(i%2 == 0 && XLEN/width > 1){
                    SrcClip :=src((i+1) * width + width - 1, (i+1) * width)
                }else if(i >= 1){
                    SrcClip :=src((i-1) * width + width - 1, (i-1) * width)
                }
            }
            l = List.concat(List(SrcClip) ,l)
        }
        l.dropRight(1).reduce(Cat(_,_))
    }


    io.out.valid := io.in.valid
    io.in.ready  := io.out.fire() || !io.in.valid

    io.out.bits.DecodeOut := io.in.bits.DecodeIn
    io.out.bits.result := 0.U
    io.out.bits.DecodeOut.pext.OV := false.B
    io.FirstStageFire := io.out.fire()

    val func_out = io.out.bits.DecodeOut.ctrl.fuOpType
    val funct3_out = io.out.bits.DecodeOut.ctrl.funct3
    val src1_out = io.out.bits.DecodeOut.data.src1
    val src2_out = io.out.bits.DecodeOut.data.src2
    val src3_out = io.out.bits.DecodeOut.data.src3

    val adder34_0= WireInit(0.U.asTypeOf(Vec(2,UInt(34.W))))
    val adder34_1= WireInit(0.U.asTypeOf(Vec(2,UInt(34.W))))
    val adder34_2= WireInit(0.U.asTypeOf(Vec(2,UInt(34.W))))
    val adder34_3= WireInit(0.U.asTypeOf(Vec(2,UInt(34.W))))
    val adder34_4= WireInit(0.U.asTypeOf(Vec(2,UInt(34.W))))

    val tmp68 = Wire(UInt(71.W))
    val adder68_0= WireInit(0.U(71.W))
    val adder68_1= WireInit(0.U(71.W))
    val adder68_2= WireInit(0.U(71.W))
    val adder68_3= WireInit(0.U(71.W))
    val adder68_4= WireInit(0.U(71.W))
    tmp68 := adder68_0 + adder68_1 + adder68_2 + adder68_3 + adder68_4

    adder68_0 := Cat(adder34_0(1),0.U(3.W),adder34_0(0))
    adder68_1 := Cat(adder34_1(1),0.U(3.W),adder34_1(0))
    adder68_2 := Cat(adder34_2(1),0.U(3.W),adder34_2(0))
    adder68_3 := Cat(adder34_3(1),0.U(3.W),adder34_3(0))
    adder68_4 := Cat(adder34_4(1),0.U(3.W),adder34_4(0))

    if(XLEN == 64){
        when(io.in.bits.Pctrl.isMul_16){
            val src1_out = io.out.bits.DecodeOut.data.src1
            val src2_out = SrcSetter(16,io.out.bits.DecodeOut.data.src2,Xsrc(func_out))
            when(Saturating(func_out)){
                io.out.bits.result := {
                    var l = List(0.U)
                    val width = 16
                    for(i <- 0 to 3){
                        val tmp = WireInit(0.U(32.W))
                        when(src2_out(i*width+width-1,i*width) === Cat(1.U,Fill(15,0.U)) && src1_out(i*width+width-1,i*width) === Cat(1.U,Fill(15,0.U))){
                            io.out.bits.DecodeOut.pext.OV := true.B
                            tmp := Cat(Fill(17,0.U),Fill(15,1.U))
                        }.otherwise{
                            if(i == 0){
                                tmp := (io.in.bits.Pctrl.mulres17_0(31,0).asSInt >> 15).asUInt
                            }else if(i == 1){
                                tmp := (io.in.bits.Pctrl.mulres17_1(31,0).asSInt >> 15).asUInt
                            }else if(i ==2){
                                tmp := (io.in.bits.Pctrl.mulres33_0(31,0).asSInt >> 15).asUInt
                            }else{
                                tmp := (io.in.bits.Pctrl.mulres65_0(31,0).asSInt >> 15).asUInt
                            }
                        }
                        Debug("[PMDU] tmp %x \n",tmp)
                        l = List.concat(List(tmp(15,0)),l)
                    }
                    l.dropRight(1).reduce(Cat(_,_))
                }
            }.otherwise{
                io.out.bits.result := {
                    var l = List(0.U)
                    val width = 16
                    for(i <- 0 to 1){
                        val tmp = WireInit(0.U(32.W))
                        if(i == 0){
                            tmp := io.in.bits.Pctrl.mulres17_0(31,0)
                        }else{
                            tmp := io.in.bits.Pctrl.mulres65_0(31,0)
                        }
                        l = List.concat(List(tmp),l)
                    }
                    l.dropRight(1).reduce(Cat(_,_))
                }
            }
        }.elsewhen(io.in.bits.Pctrl.isMul_8){
            val src1_out = io.out.bits.DecodeOut.data.src1
            val src2_out = SrcSetter(8,io.out.bits.DecodeOut.data.src2,Xsrc(func_out))
            when(Saturating(func_out)){
                io.out.bits.result := {
                    var l = List(0.U)
                    val width = 8
                    for(i <- 0 to 7){
                        val tmp = WireInit(0.U(16.W))
                        when(src2_out(i*width+width-1,i*width) === Cat(1.U,Fill(7,0.U)) && src1_out(i*width+width-1,i*width) === Cat(1.U,Fill(7,0.U))){
                            io.out.bits.DecodeOut.pext.OV := true.B
                            tmp := Cat(Fill(9,0.U),Fill(7,1.U))
                        }.otherwise{
                            if(i == 0){
                                tmp := (io.in.bits.Pctrl.mulres9_0(15,0).asSInt >> 7).asUInt
                            }else if(i == 1){
                                tmp := (io.in.bits.Pctrl.mulres9_1(15,0).asSInt >> 7).asUInt
                            }else if(i == 2){
                                tmp := (io.in.bits.Pctrl.mulres9_2(15,0).asSInt >> 7).asUInt
                            }else if(i == 3){
                                tmp := (io.in.bits.Pctrl.mulres9_3(15,0).asSInt >> 7).asUInt
                            }else if(i == 4){
                                tmp := (io.in.bits.Pctrl.mulres17_0(15,0).asSInt >> 7).asUInt
                            }else if(i == 5){
                                tmp := (io.in.bits.Pctrl.mulres17_1(15,0).asSInt >> 7).asUInt
                            }else if(i == 6){
                                tmp := (io.in.bits.Pctrl.mulres33_0(15,0).asSInt >> 7).asUInt
                            }else{
                                tmp := (io.in.bits.Pctrl.mulres65_0(15,0).asSInt >> 7).asUInt
                            }
                        }
                        Debug("[PMDU] tmp %x \n",tmp)
                        l = List.concat(List(tmp(7,0)),l)
                    }
                    l.dropRight(1).reduce(Cat(_,_))
                }
            }.otherwise{
                io.out.bits.result := {
                    var l = List(0.U)
                    val width = 8
                    for(i <- 0 to 3){
                        val tmp = WireInit(0.U(16.W))
                        if(i == 0){
                            tmp := io.in.bits.Pctrl.mulres9_0(15,0)
                        }else if(i == 1){
                            tmp := io.in.bits.Pctrl.mulres9_1(15,0)
                        }else if(i == 2){
                            tmp := io.in.bits.Pctrl.mulres9_2(15,0)
                        }else{
                            tmp := io.in.bits.Pctrl.mulres65_0(15,0)
                        }
                        Debug("[PMDU] tmp %x \n",tmp)
                        l = List.concat(List(tmp),l)
                    }
                    l.dropRight(1).reduce(Cat(_,_))
                }
            }
        }.elsewhen(io.in.bits.Pctrl.isQ15_64ONLY){
            io.out.bits.result :={
                val bb = func_out(4,3) === "b01".U 
                val bt = func_out(4,3) === "b10".U 
                var l = List(0.U)
                for(i <- 0 until 64/32){
                    val src1_clip = Mux(bb,src1_out(i*32+15,i*32),Mux(bt,src1_out(i*32+15,i*32),src1_out(i*32+31,i*32+16)))
                    val src2_clip = Mux(bb,src2_out(i*32+15,i*32),src2_out(i*32+31,i*32+16))
                    val mul = {if(i == 0){
                                io.in.bits.Pctrl.mulres33_0(31,0)
                            }else{
                                io.in.bits.Pctrl.mulres65_0(31,0)
                            }}
                    val adder0 = SignExt(Mux(func_out(2,0)==="b100".U,src3_out(i*32+32-1,i*32),0.U(32.W)),33)
                    val adder1 = WireInit(0.U(33.W))
                    when(src1_clip === "h8000".U && src2_clip === "h8000".U){
                        io.out.bits.DecodeOut.pext.OV := true.B
                        when(func_out(2,0) === "b110".U){
                            adder1 := "h7fff".U
                        }.otherwise{
                            adder1 := "h7fffffff".U
                        }
                    }.otherwise{
                        when(func_out(2,0) === "b110".U){
                            adder1 := SignExt(mul(30,15),33)
                        }.otherwise{
                            adder1 := SignExt((SignExt(mul,33) << 1)(31,0),33)
                        }
                    }
                    adder34_0(i) := adder0
                    adder34_1(i) := adder1
                    adder34_2(i) := 0.U
                    val res = WireInit(tmp68(i*37+33,i*37)(31,0))
                    when(func_out(2,0) === "b100".U){
                        when((Fill(33,tmp68(i*37+33,i*37)(32))^tmp68(i*37+33,i*37))(32,31) =/= 0.U){
                            io.out.bits.DecodeOut.pext.OV := true.B
                            when(tmp68(i*37+33,i*37)(32).asBool){
                                res:= Cat(1.U,Fill(31,0.U))
                            }.otherwise{
                                res := Cat(0.U,Fill(31,1.U))
                            }
                        }
                    }
                    //Debug("[PMDUisQ1564ONLY] adder34_0 %x adder34_1 %x adder34_2 %x res %x tmp68%x \n",adder34_0(i),adder34_1(i),adder34_2(i),res,tmp68)
                    l = List.concat(List(res),l)
                }
                l.dropRight(1).reduce(Cat(_,_))
            }
        }.elsewhen(io.in.bits.Pctrl.isMul_32_64ONLY){
            io.out.bits.result := io.in.bits.Pctrl.mulres65_0(63,0)
        }.elsewhen(io.in.bits.Pctrl.isQ63_64ONLY){
            io.out.bits.result := {
                adder68_0 := SignExt(src3_out,65)
                adder68_1 := SignExt(io.in.bits.Pctrl.mulres65_0(63,0),65)
                adder68_2 := 0.U
                val res = WireInit(tmp68(63,0))
                when((Fill(65,tmp68(64))^tmp68)(64,63) =/= 0.U){
                    io.out.bits.DecodeOut.pext.OV := true.B
                    when(tmp68(64).asBool){
                        res := Cat(1.U,Fill(63,0.U))
                    }.otherwise{
                        res := Cat(0.U,Fill(63,1.U))
                    }
                }
                res
            }
        }.elsewhen(io.in.bits.Pctrl.isPMA_64ONLY){
            io.out.bits.result := {
                val usesrc3 = !(func_out(2,0)==="b100".U || func_out === "b0011101".U)
                val mul1sub = func_out(6,3) === "b0101".U || func_out(6,3) === "b0111".U || func_out(6,1) === "b010011".U
                val mul2sub = func_out(6,3) === "b0110".U || func_out(6,1) === "b010011".U
                val saturating = !(func_out(6,5) === "b01".U && func_out(2,0) === "b100".U)
                adder68_0 := Mux(usesrc3,SignExt(src3_out,66),0.U)
                adder68_1 := (Fill(66,mul1sub)^SignExt(io.in.bits.Pctrl.mulres33_0(63,0),66))
                adder68_2 := (Fill(66,mul2sub)^SignExt(io.in.bits.Pctrl.mulres65_0(63,0),66)) 
                adder68_3 := (mul1sub.asUInt +& mul2sub.asUInt)
                val res = WireInit(tmp68(63,0))
                when(saturating){
                    when((Fill(66,tmp68(65))^tmp68)(65,63)=/=0.U){
                    io.out.bits.DecodeOut.pext.OV := true.B                       
                        when(tmp68(65)){
                            res := Cat(1.U,Fill(63,0.U))
                        }.otherwise{
                            res := Cat(0.U,Fill(63,1.U))
                        }
                    }
                }
                Debug("[PMDUisPMA64ONLY] usesrc3 %x mul1sub %x mul2sub %x saturating %x res %x tmp68 %x\n",usesrc3,mul1sub,mul2sub,saturating,res,tmp68)
                Debug("[PMDUisPMA64ONLY] adder68_0 %x adder68_1 %x adder68_2 %x MulAdd33_0 %x MulAdd65_0 %x\n",adder68_0,adder68_1,adder68_2,io.in.bits.Pctrl.mulres33_0(63,0),io.in.bits.Pctrl.mulres65_0(63,0))
                res
            }
        }
    }
    when(io.in.bits.Pctrl.isMSW_3232){
        io.out.bits.result := {
            var l = List(0.U)
            for(i <- 0 until XLEN/32){
                val sub = func_out(6,4)==="b010".U && func_out(2,0) === "b001".U
                val add = func_out(6,4)==="b011".U && func_out(2,0) === "b000".U
                val sat = func_out(6,4)==="b011".U && func_out(2,0) === "b001".U
                val round = Mux(!sat,Mux(func_out(3).asBool,if(i == 0 && XLEN == 64){io.in.bits.Pctrl.mulres33_0(63,31)+1.U}else{io.in.bits.Pctrl.mulres65_0(63,31)+1.U},if(i == 0 && XLEN == 64){io.in.bits.Pctrl.mulres33_0(63,31)}else{io.in.bits.Pctrl.mulres65_0(63,31)})(32,1)
                                    ,Mux(func_out(3).asBool,if(i == 0 && XLEN == 64){io.in.bits.Pctrl.mulres33_0(63,30)+1.U}else{io.in.bits.Pctrl.mulres65_0(63,30)+1.U},if(i == 0 && XLEN == 64){io.in.bits.Pctrl.mulres33_0(63,30)}else{io.in.bits.Pctrl.mulres65_0(63,30)})(32,1))
                adder34_0(i) := SignExt(src3_out(i * 32 + 32 -1, i * 32),33)
                adder34_1(i) := (Fill(33,sub.asUInt)^SignExt(round,33))
                adder34_2(i) := sub.asBool
                //val tmp   = SignExt(src3_out(i * 32 + 32 -1, i * 32),33) + (Fill(33,sub.asUInt)^SignExt(round,33))+sub.asBool
                val res   = WireInit(tmp68(i*37+33,i*37)(31,0))
                Debug("[PMDU] sub %x add %x sat %x round %x tmp %x res%x \n",sub,add,sat,round,tmp68(i*37+33,i*37)(31,0),res)
                when(add || sub){
                    when((Fill(33,tmp68(i*37+33,i*37)(32))^tmp68(i*37+33,i*37))(32,31) =/= 0.U){
                        io.out.bits.DecodeOut.pext.OV := true.B
                        when(tmp68(i*37+33,i*37)(32).asBool){
                            res := Cat(1.U,Fill(31,0.U))
                        }.otherwise{
                            res := Cat(0.U,Fill(31,1.U))
                        }
                    }
                }.elsewhen(sat){
                    when(src1_out(i * 32 + 32 -1, i * 32) === Cat(1.U,Fill(31,0.U)) && src2_out(i * 32 + 32 -1, i * 32) === Cat(1.U,Fill(31,0.U))){
                        io.out.bits.DecodeOut.pext.OV := true.B
                        res := Cat(0.U,Fill(31,1.U))
                    }
                }
                l = List.concat(List(res),l)
            }
            l.dropRight(1).reduce(Cat(_,_))
        }
    }.elsewhen(io.in.bits.Pctrl.isMSW_3216){
        io.out.bits.result := {
            var l = List(0.U)
            for(i <- 0 until XLEN/32){
                val add = func_out(2,0) === "b011".U || func_out(6,5) === "b11".U
                val sat = func_out(2,0) === "b111".U
                val src2_use_top = func_out(6,4) === "b011".U || func_out(6,4) === "b101".U || func_out(6,4) === "b111".U
                val src2_clip = Mux(src2_use_top,src2_out(i * 32 + 32 -1, i * 32+16),src2_out(i * 32 + 16 -1, i * 32))
                val round0 = Mux(!sat,Mux(func_out(3).asBool,if(i == 0 && XLEN == 64){io.in.bits.Pctrl.mulres33_0(47,15)+1.U}else{io.in.bits.Pctrl.mulres65_0(47,15)+1.U},if(i == 0 && XLEN == 64){io.in.bits.Pctrl.mulres33_0(47,15)}else{io.in.bits.Pctrl.mulres65_0(47,15)})(32,1)
                                    ,Mux(func_out(3).asBool,if(i == 0 && XLEN == 64){io.in.bits.Pctrl.mulres33_0(46,14)+1.U}else{io.in.bits.Pctrl.mulres65_0(46,14)+1.U},if(i == 0 && XLEN == 64){io.in.bits.Pctrl.mulres33_0(46,14)}else{io.in.bits.Pctrl.mulres65_0(46,14)})(32,1))
                val round = Wire(UInt(32.W))
                round := round0
                when(sat && src1_out(i * 32 + 32 -1, i * 32) === Cat(1.U,Fill(31,0.U)) && src2_clip === Cat(1.U,Fill(15,0.U))){
                    io.out.bits.DecodeOut.pext.OV := true.B
                    round := Cat(0.U,Fill(31,1.U))
                }
                adder34_0(i) := SignExt(src3_out(i * 32 + 32 -1, i * 32),33)
                adder34_1(i) := SignExt(round,33)
                adder34_2(i) := 0.U
                //val tmp   = SignExt(src3_out(i * 32 + 32 -1, i * 32),33) + SignExt(round,33)
                val res   = WireInit(tmp68(i*37+33,i*37)(31,0))
                Debug("[PMDU] add %x sat %x round0 %x round %x tmp %x res %x src2_clip %x\n",add,sat,round0,round,tmp68(i*37+33,i*37),res,src2_clip)
                
                when(add){
                    when((Fill(33,tmp68(i*37+33,i*37)(32))^tmp68(i*37+33,i*37))(32,31) =/= 0.U){
                        io.out.bits.DecodeOut.pext.OV := true.B
                        when(tmp68(i*37+33,i*37)(32).asBool){
                            res := Cat(1.U,Fill(31,0.U))
                        }.otherwise{
                            res := Cat(0.U,Fill(31,1.U))
                        }
                    }
                }
                l = List.concat(List(res),l)
            }
            l.dropRight(1).reduce(Cat(_,_))
        }
    }.elsewhen(io.in.bits.Pctrl.isS1632){
        val twopairs = func_out(6,3) < 3.U || func_out(2,0) === "b101".U && func_out(6,5) === "b01".U && func_out(4,3) =/= "b00".U
        val submul1 = func_out === "b0110100".U || func_out === "b0110110".U || func_out(6,1) === "b010011".U
        val submul2 =(func_out(6,3) === "b0101".U || func_out(6,3) === "b0111".U) && (func_out(2,0) === "b100".U || func_out(2,0) === "b110".U)  || func_out(6,1) === "b010011".U
        val checkmode1 = func_out(6,1) === "b001110".U
        val checkmode2 = func_out(6,3) === "b0100".U || func_out(2,0) === "b101".U || func_out(2,0) === "b110".U
        io.out.bits.result :={
            var l = List(0.U)
            for(i <- 0 until XLEN/32){
                val (mul1,mul2,res) = (WireInit(0.U(32.W)),WireInit(0.U(32.W)),WireInit(0.U(32.W)))
                mul1:= {if(XLEN==64){
                        if(i == 0){Mux(twopairs,io.in.bits.Pctrl.mulres33_0(31,0),io.in.bits.Pctrl.mulres17_1(31,0))}else{io.in.bits.Pctrl.mulres65_0(31,0)}
                       }else{
                        io.in.bits.Pctrl.mulres65_0(31,0)
                       }}
                mul2:= {if(XLEN==64){
                        if(i == 0){Mux(twopairs,0.U(32.W),io.in.bits.Pctrl.mulres17_0(31,0))}else{Mux(twopairs,0.U(32.W),io.in.bits.Pctrl.mulres33_0(31,0))}
                       }else{
                        Mux(twopairs,0.U(32.W),io.in.bits.Pctrl.mulres33_0(31,0))
                       }}
                adder34_0(i) := SignExt(src3_out(i * 32 + 32 -1, i * 32),34)
                adder34_1(i) := (Fill(34,submul1.asUInt)^SignExt(mul1,34))
                adder34_2(i) := Fill(34,submul2.asUInt)^SignExt(mul2,34)
                adder34_3(i) := (submul1.asUInt +& submul2.asUInt)
                //val tmp = SignExt(src3_out(i * 32 + 32 -1, i * 32),34) + ((Fill(34,submul1.asUInt)^SignExt(mul1,34)) + submul1.asUInt) + ((Fill(34,submul2.asUInt)^SignExt(mul2,34)) + submul2.asUInt)
                res := tmp68(i*37+33,i*37)(31,0)
                when(checkmode1 && src1_out(i * 32 + 32 -1, i * 32) === Cat(Cat(1.U,Fill(15,0.U)),Cat(1.U,Fill(15,0.U))) && src2_out(i * 32 + 32 -1, i * 32) === Cat(Cat(1.U,Fill(15,0.U)),Cat(1.U,Fill(15,0.U)))){
                    res := Cat(0.U,Fill(31,1.U))
                    io.out.bits.DecodeOut.pext.OV := true.B
                }
                when(checkmode2){
                    when((Fill(34,tmp68(i*37+33,i*37)(33))^tmp68(i*37+33,i*37))(33,31) =/= 0.U){
                        io.out.bits.DecodeOut.pext.OV := true.B
                        when(tmp68(i*37+33,i*37)(33).asBool){
                            res := Cat(1.U,Fill(31,0.U))
                        }.otherwise{
                            res := Cat(0.U,Fill(31,1.U))
                        }
                    }
                }
                l = List.concat(List(res),l)
                Debug("[PMDUis1632] mul1 %x res %x tmp %x src3 %x \n",mul1,res,tmp68(i*37+33,i*37),src3_out(i * 32 + 32 -1, i * 32))
            }
            l.dropRight(1).reduce(Cat(_,_))
        }
        Debug("[PMDUis1632] twopairs %x submul1 %x submul2 %x checkmode1 %x checkmode2 %x\n",twopairs,submul1,submul2,checkmode1,checkmode2)
    }.elsewhen(io.in.bits.Pctrl.isS1664){
        adder68_0 := src1_out
        adder68_1 := SignExt(io.in.bits.Pctrl.mulres65_0(31,0),64)
        adder68_2 := SignExt(io.in.bits.Pctrl.mulres33_0(31,0),64)
        io.out.bits.result := tmp68(63,0)
    }.elsewhen(io.in.bits.Pctrl.is832){
        val isunsigned = func_out(2,0) === "b110".U
        io.out.bits.result := {
            var l = List(0.U)
            for(i <- 0 until XLEN/32){
                val add0 = WireInit(0.U(32.W))
                val add1 = WireInit(0.U(32.W))
                val add2 = WireInit(0.U(32.W))
                val add3 = WireInit(0.U(32.W))
                if(i == 0){
                    if(XLEN == 32){
                        add0 := extender(!isunsigned,io.in.bits.Pctrl.mulres17_0(16,0),32)
                        add1 := extender(!isunsigned,io.in.bits.Pctrl.mulres17_1(16,0),32)
                        add2 := extender(!isunsigned,io.in.bits.Pctrl.mulres33_0(16,0),32)
                        add3 := extender(!isunsigned,io.in.bits.Pctrl.mulres65_0(16,0),32)
                    }else{
                        add0 := extender(!isunsigned,io.in.bits.Pctrl.mulres9_0(16,0),32)
                        add1 := extender(!isunsigned,io.in.bits.Pctrl.mulres9_1(16,0),32)
                        add2 := extender(!isunsigned,io.in.bits.Pctrl.mulres9_2(16,0),32)
                        add3 := extender(!isunsigned,io.in.bits.Pctrl.mulres9_3(16,0),32)
                    }
                }else{
                    add0 := extender(!isunsigned,io.in.bits.Pctrl.mulres17_0(16,0),32)
                    add1 := extender(!isunsigned,io.in.bits.Pctrl.mulres17_1(16,0),32)
                    add2 := extender(!isunsigned,io.in.bits.Pctrl.mulres33_0(16,0),32)
                    add3 := extender(!isunsigned,io.in.bits.Pctrl.mulres65_0(16,0),32)
                }
                adder34_0(i) := src3_out(32*i+32-1,32*i)
                adder34_1(i) := add0 
                adder34_2(i) := add1
                adder34_3(i) := add2 
                adder34_4(i) := add3
                val res = tmp68(i*37+33,i*37)(31,0)
                l = List.concat(List(res),l)
                Debug("[PMDU] add0 %x add1 %x add2 %x add3 %x src3_out %x res %x \n",add0,add1,add2,add3,src3_out(32*i+32-1,32*i),res)
            }
            l.dropRight(1).reduce(Cat(_,_))
        }
    }.elsewhen(io.in.bits.Pctrl.is3264){
        val issigned = !func_out(4).asBool
        val issub    =  func_out(0).asBool
        val saturating = func_out(3).asBool
        io.out.bits.result := {
            val add0 = WireInit(0.U(66.W))
            val add1 = WireInit(0.U(66.W))
            add0 := extender(issigned,io.in.bits.Pctrl.mulres33_0(64,0),66)
            add1 := extender(issigned,io.in.bits.Pctrl.mulres65_0(64,0),66)
            adder68_0 :=  extender(issigned,src3_out(63,0),66)
            adder68_1 := (Fill(66,issub)^add0)
            adder68_2 := (Fill(66,issub)^add1)
            adder68_3 := Cat(issub.asUInt,0.U(1.W))
            val res = WireInit(tmp68(63,0))
            when(saturating){
                when(issigned){
                    when((Fill(66,tmp68(65))^tmp68)(65,63) =/= 0.U){
                        io.out.bits.DecodeOut.pext.OV := true.B
                        when(tmp68(65).asBool){
                            res := Cat(1.U,Fill(63,0.U))
                        }.otherwise{
                            res := Cat(0.U,Fill(63,1.U))
                        }
                    }
                }.otherwise{
                    when(issub && tmp68(65).asBool){
                        io.out.bits.DecodeOut.pext.OV := true.B
                        res := Fill(64,0.U)
                    }.elsewhen(!issub && tmp68(65,64)=/=0.U){
                        io.out.bits.DecodeOut.pext.OV := true.B
                        res := Fill(64,1.U)
                    }
                }
            }
            Debug("[PMDU] add0 %x add1 %x src3_out %x res %x issigned %x issub %x saturating %x\n",add0,add1,src3_out,res,issigned,issub,saturating)
            res
        }
    }.elsewhen(io.in.bits.Pctrl.is1664){
        val twopairs = func_out(2,0) === "b100".U
        val submul1 = func_out === "b1000101".U || func_out === "b1010101".U || func_out === "b1010110".U || func_out === "b1011110".U
        val submul2 = func_out === "b1001101".U || func_out === "b1010110".U || func_out === "b1011110".U
        io.out.bits.result := {
            val (mul1,mul2,mul3,mul4,res) = (WireInit(0.U(32.W)),WireInit(0.U(32.W)),WireInit(0.U(32.W)),WireInit(0.U(32.W)),WireInit(0.U(64.W)))
            mul1:= Mux(twopairs,io.in.bits.Pctrl.mulres33_0(31,0),io.in.bits.Pctrl.mulres17_0(31,0))
            mul2:= Mux(twopairs,io.in.bits.Pctrl.mulres65_0(31,0),io.in.bits.Pctrl.mulres17_1(31,0))
            mul3:= Mux(twopairs,0.U,io.in.bits.Pctrl.mulres33_0(31,0))
            mul4:= Mux(twopairs,0.U,io.in.bits.Pctrl.mulres65_0(31,0))
            adder68_0 := src3_out(63,0)
            adder68_1 := (Fill(64,submul1.asUInt)^SignExt(mul1,64)) + (Cat(submul1.asUInt,0.U(1.W)) +& Cat(submul2.asUInt,0.U(1.W)))
            adder68_2 := (Fill(64,submul1.asUInt)^SignExt(mul3,64))
            adder68_3 := (Fill(64,submul2.asUInt)^SignExt(mul2,64))
            adder68_4 := (Fill(64,submul2.asUInt)^SignExt(mul4,64))
            //val tmp = SignExt(src3_out(i * 32 + 32 -1, i * 32),34) + ((Fill(34,submul1.asUInt)^SignExt(mul1,34)) + submul1.asUInt) + ((Fill(34,submul2.asUInt)^SignExt(mul2,34)) + submul2.asUInt)
            res := tmp68(63,0)
            
            Debug("[PMDUis1632] res %x tmp %x src3 %x adder68_1 %x adder68_2 %x\n",res,tmp68(63,0),src3_out,adder68_1,adder68_2)
            Debug("[PMDUis1632] mul1 %x mul2 %x mul3 %x mul4 %x \n",mul1,mul2,mul3,mul4)
            res
        }
        Debug("[PMDUis1632] twopairs %x submul1 %x submul2 %x\n",twopairs,submul1,submul2)
    }.elsewhen(io.in.bits.Pctrl.isQ15orQ31){
        io.out.bits.result := {
            val isQ31_type1 = func_out(2,0) === "b001".U
            val isQ31_type0 = func_out(2,0) === "b101".U
            val isQ15       = func_out(2,0) === "b110".U
            val bb = Mux(isQ31_type1,func_out(4,3) === "b01".U,func_out(4,3) === "b00".U)
            val bt = Mux(isQ31_type1,func_out(4,3) === "b10".U,func_out(4,3) === "b01".U)
            val src1_clip1 = Mux(bb,src1_out(15,0),Mux(bt,src1_out(15,0),src1_out(31,16)))
            val src2_clip1 = Mux(bb,src2_out(15,0),src2_out(31,16))
            val tmp = io.in.bits.Pctrl.mulres65_0(31,0)
            val add1= Wire(UInt(XLEN.W))
            val res = WireInit(add1)
            when(src1_clip1 === "h8000".U && src2_clip1=== "h8000".U){
                io.out.bits.DecodeOut.pext.OV := true.B
                add1 := Mux(isQ15,ZeroExt("h00007fff".U,XLEN),ZeroExt("h7fffffff".U,XLEN))
            }.otherwise{
                add1 := Mux(isQ15,SignExt((tmp.asSInt >> 15).asUInt,XLEN),SignExt(tmp << 1,XLEN))
            }
            adder68_0 := SignExt(src3_out(31,0),33)
            adder68_1 := SignExt(add1(31,0),33)
            //adder68_2 := 0.U
            when(isQ31_type1){
                res := SignExt(tmp68(31,0),XLEN)
                when((Fill(33,tmp68(32))^tmp68)(32,31) =/= 0.U){
                    io.out.bits.DecodeOut.pext.OV := true.B
                    when(tmp68(32).asBool){
                        res := SignExt(Cat(1.U,Fill(31,0.U)),XLEN)
                    }.otherwise{
                        res := SignExt(Cat(0.U,Fill(31,1.U)),XLEN)
                    }
                }
            }
            res
        }
    }.elsewhen(io.in.bits.Pctrl.isC31){
        io.out.bits.result :={
            val tmp = io.in.bits.Pctrl.mulres65_0(63,0)
            adder68_0 := Mux(func_out(4).asBool,0.U,src3_out(31,0))
            adder68_1 := Mux(func_out(4).asBool,tmp,(Fill(32,func_out(0))^tmp(31,0)))
            adder68_2 := func_out(0)
            Mux(func_out(4).asBool,tmp68(63,0),SignExt(tmp68(31,0),XLEN))
        }
    }
    


    Debug("[PMDU] in_valid %x out_valid %x inPC %x func_in %x outPC %x func_out %x \n",io.in.valid,io.out.valid,io.in.bits.DecodeIn.cf.pc,func,io.out.bits.DecodeOut.cf.pc,io.out.bits.DecodeOut.ctrl.fuOpType)
    Debug("[PMDU] OV %x in_mul16 %x in_mul8 %x in_msw3232 %x in_msw3216 %x in_s1632 %x in3264 %x\n",io.out.bits.DecodeOut.pext.OV,isMul_16(func,funct3),isMul_8(func,funct3),isMSW_3232(func,funct3),isMSW_3216(func,funct3),isS1632(func,funct3),is3264(func,funct3))
    Debug("[PMDU] out_mul16 %x out_mul8 %x out_msw3232 %x out_msw3232 %x out_s1632 %x out3264 %x\n",isMul_16(func_out,funct3_out),isMul_8(func_out,funct3_out),isMSW_3232(func_out,funct3_out),isMSW_3216(func_out,funct3_out),isS1632(func_out,funct3_out),is3264(func_out,funct3_out))
    //Debug("[PMDU] Madd90 src1 %x src2 %x src3 %x out %x \n",MulAdd9_0.io.in.bits.srcs(0),MulAdd9_0.io.in.bits.srcs(1),MulAdd9_0.io.in.bits.srcs(2),io.in.bits.Pctrl.mulres9_0)
}