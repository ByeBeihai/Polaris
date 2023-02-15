package nutcore

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import difftest._
import top.Settings

class PIDUIO extends NutCoreBundle {
    val isAdd_64 = Output(Bool())
    val isAdd_32 = Output(Bool())
    val isAdd_16 = Output(Bool())
    val isAdd_8  = Output(Bool())
    val isAdd_Q15= Output(Bool())
    val isAdd_Q31= Output(Bool())
    val isAdd_C31= Output(Bool())
    val isAve    = Output(Bool())
    val isAdd    = Output(Bool())
    val isSub_64 = Output(Bool())
    val isSub_32 = Output(Bool())
    val isSub_16 = Output(Bool())
    val isSub_8  = Output(Bool())
    val isSub_Q15= Output(Bool())
    val isSub_Q31= Output(Bool())
    val isSub_C31= Output(Bool())
    val isCras_16= Output(Bool())
    val isCrsa_16= Output(Bool())
    val isCras_32= Output(Bool())
    val isCrsa_32= Output(Bool())
    val isCr     = Output(Bool())
    val isStas_16= Output(Bool())
    val isStsa_16= Output(Bool())
    val isStas_32= Output(Bool())
    val isStsa_32= Output(Bool())
    val isSt     = Output(Bool())
    val isComp_16= Output(Bool())
    val isComp_8 = Output(Bool())
    val isCompare= Output(Bool())
    val isMaxMin_16= Output(Bool())
    val isMaxMin_8 = Output(Bool())
    val isMaxMin_XLEN= Output(Bool())
    val isMaxMin_32= Output(Bool())
    val isMaxMin = Output(Bool())
    val isPbs = Output(Bool())
    val isRs_16  = Output(Bool())
    val isLs_16  = Output(Bool())
    val isLR_16  = Output(Bool())
    val isRs_8   = Output(Bool())
    val isLs_8   = Output(Bool())
    val isLR_8   = Output(Bool())
    val isRs_32  = Output(Bool())
    val isLs_32  = Output(Bool())
    val isLR_32  = Output(Bool())
    val isLR_Q31 = Output(Bool())
    val isLs_Q31 = Output(Bool())
    val isRs_XLEN= Output(Bool())
    val isSRAIWU = Output(Bool())
    val isFSRW   = Output(Bool())
    val isWext   = Output(Bool())
    val isShifter= Output(Bool())
    val isClip_16= Output(Bool())
    val isClip_8 = Output(Bool())
    val isclip_32= Output(Bool())
    val isClip   = Output(Bool())
    val isSat_16 = Output(Bool())
    val isSat_8  = Output(Bool())
    val isSat_32 = Output(Bool())
    val isSat_W  = Output(Bool())
    val isSat    = Output(Bool())
    val isCnt_16 = Output(Bool())
    val isCnt_8  = Output(Bool())
    val isCnt_32 = Output(Bool())
    val isCnt    = Output(Bool())
    val isSwap_16= Output(Bool())
    val isSwap_8 = Output(Bool())
    val isSwap   = Output(Bool())
    val isUnpack = Output(Bool())
    val isBitrev = Output(Bool())
    val isCmix   = Output(Bool())
    val isInsertb= Output(Bool())
    val isPackbb = Output(Bool())
    val isPackbt = Output(Bool())
    val isPacktb = Output(Bool())
    val isPacktt = Output(Bool())
    val isPack   = Output(Bool())
    val isSub    = Output(UInt(8.W))
    val isAdder  = Output(Bool())
    val SrcSigned= Output(Bool())
    val Saturating= Output(Bool())
    val Translation= Output(Bool())
    val LessEqual= Output(Bool())
    val LessThan = Output(Bool())
    def MixPrecisionLen = XLEN + XLEN / 8 + XLEN / 8
    val adderRes_ori = Output(UInt(MixPrecisionLen.W))
    val adderRes = Output(UInt(XLEN.W))
    val adderRes_ori_drophighestbit = Output(UInt(MixPrecisionLen.W))
    val Round    = Output(Bool())
    val ShiftSigned= Output(Bool())
    val Arithmetic= Output(Bool())
    val isMul_16 = Output(Bool())
    val isMul_8  = Output(Bool())
    val isMSW_3232 = Output(Bool())
    val isMSW_3216 = Output(Bool())
    val isS1632  = Output(Bool())
    val isS1664  = Output(Bool())
    val is832    = Output(Bool())
    val is3264   = Output(Bool())
    val is1664   = Output(Bool())
    val isQ15orQ31 = Output(Bool())
    val isC31    = Output(Bool())
    val isQ15_64ONLY = Output(Bool())
    val isQ63_64ONLY = Output(Bool())
    val isMul_32_64ONLY = Output(Bool())
    val isPMA_64ONLY = Output(Bool())
    val mulres9_0 = Output(UInt(18.W))
    val mulres9_1 = Output(UInt(18.W))
    val mulres9_2 = Output(UInt(18.W))
    val mulres9_3 = Output(UInt(18.W))
    val mulres17_0 = Output(UInt(34.W))
    val mulres17_1 = Output(UInt(34.W))
    val mulres33_0 = Output(UInt(66.W))
    val mulres65_0 = Output(UInt(130.W))
}
class MulAdd_onestage_IO(val len: Int = 65) extends NutCoreBundle {
    val in = new Bundle{
        val srcs     = Vec(3, Input(UInt(len.W)))
    }
    val out = new Bundle{
        val result = Output(UInt((2*len).W))
    }
}
class MulAdd_onestage(len: Int = 9) extends NutCoreModule {
    val io = IO(new MulAdd_onestage_IO(len)) 
    val X = io.in.srcs(0)
    val Y = io.in.srcs(1)
    io.out.result := (X.asSInt * Y.asSInt).asUInt
}
class PIDU() extends NutCoreModule with HasInstrType{
    val io = IO(new Bundle{
        val DecodeIn = Flipped(new DecodeIO)
        val Pctrl = new PIDUIO
    })
    
    val src1  = io.DecodeIn.data.src1
    val src2  = io.DecodeIn.data.src2
    val src3  = io.DecodeIn.data.src3
    val func  = io.DecodeIn.ctrl.fuOpType
    val funct3= io.DecodeIn.ctrl.funct3
    val func24= io.DecodeIn.ctrl.func24
    val func23= io.DecodeIn.ctrl.func23

    io.Pctrl.isAdd_64 := func(6,5) === "b10".U && func(2,0) === "b000".U && funct3 === "b001".U 
    io.Pctrl.isAdd_32 := func(2,0).asUInt === 0.U && (func(6,5).asUInt === 0.U ||  func(6,3) === 4.U) && funct3 === 2.U//false.B//VALUOpType.add32 === func
    io.Pctrl.isAdd_16 := func(2,0).asUInt === 0.U && (func(6,5).asUInt === 0.U ||  func(6,3) === 4.U) && funct3 === 0.U
    io.Pctrl.isAdd_8  := func(2,0).asUInt === 4.U && (func(6,5).asUInt === 0.U ||  func(6,3) === 4.U) && funct3 === 0.U//false.B//VALUOpType.add8 === func
    io.Pctrl.isAdd_Q15:= func(6,4) === "b000".U && func(2,0) === "b010".U && funct3 === 1.U
    io.Pctrl.isAdd_Q31:= func(6,4) === "b000".U && func(2,0) === "b000".U && funct3 === 1.U
    io.Pctrl.isAdd_C31:= func(6,4) === "b001".U && func(2,0) === "b000".U && funct3 === 1.U
    io.Pctrl.isAve    := func === "b1110000".U && funct3 === "b000".U
    io.Pctrl.isAdd := io.Pctrl.isAdd_64 | io.Pctrl.isAdd_32 | io.Pctrl.isAdd_16 | io.Pctrl.isAdd_8 | io.Pctrl.isAdd_Q15 | io.Pctrl.isAdd_Q31 | io.Pctrl.isAdd_C31 | io.Pctrl.isAve

    io.Pctrl.isSub_64 := func(6,5) === "b10".U && func(2,0) === "b001".U && funct3 === "b001".U 
    io.Pctrl.isSub_32 := func(2,0).asUInt === 1.U && (func(6,5).asUInt === 0.U ||  func(6,3) === 4.U) && funct3 === 2.U//false.B//VALUOpType.sub32 === io.in.func
    io.Pctrl.isSub_16 := func(2,0).asUInt === 1.U && (func(6,5).asUInt === 0.U ||  func(6,3) === 4.U) && funct3 === 0.U//VALUOpType.sub16 === io.in.func
    io.Pctrl.isSub_8  := func(2,0).asUInt === 5.U && (func(6,5).asUInt === 0.U ||  func(6,3) === 4.U) && funct3 === 0.U//VALUOpType.sub8 === io.in.func
    io.Pctrl.isSub_Q15:= func(6,4) === "b000".U && func(2,0) === "b011".U && funct3 === 1.U
    io.Pctrl.isSub_Q31:= func(6,4) === "b000".U && func(2,0) === "b001".U && funct3 === 1.U
    io.Pctrl.isSub_C31:= func(6,4) === "b001".U && func(2,0) === "b001".U && funct3 === 1.U 

    io.Pctrl.isCras_16 := func(2,0).asUInt === 2.U && (func(6,5).asUInt === 0.U ||  func(6,3) === 4.U)&& funct3 === 0.U
    io.Pctrl.isCrsa_16 := func(2,0).asUInt === 3.U && (func(6,5).asUInt === 0.U ||  func(6,3) === 4.U)&& funct3 === 0.U
    io.Pctrl.isCras_32 := func(2,0).asUInt === 2.U && (func(6,5).asUInt === 0.U ||  func(6,3) === 4.U)&& funct3 === 2.U
    io.Pctrl.isCrsa_32 := func(2,0).asUInt === 3.U && (func(6,5).asUInt === 0.U ||  func(6,3) === 4.U)&& funct3 === 2.U
    io.Pctrl.isCr := io.Pctrl.isCras_16 | io.Pctrl.isCrsa_16 | io.Pctrl.isCras_32 | io.Pctrl.isCrsa_32

    io.Pctrl.isStas_16 := (func(6,5) === "b11".U || func(6,4) === "b101".U) && func(2,0) === "b010".U && funct3 === "b010".U
    io.Pctrl.isStsa_16 := (func(6,5) === "b11".U || func(6,4) === "b101".U) && func(2,0) === "b011".U && funct3 === "b010".U
    io.Pctrl.isStas_32 := (func(6,5) === "b11".U || func(6,4) === "b101".U) && func(2,0) === "b000".U && funct3 === "b010".U
    io.Pctrl.isStsa_32 := (func(6,5) === "b11".U || func(6,4) === "b101".U) && func(2,0) === "b001".U && funct3 === "b010".U
    io.Pctrl.isSt := io.Pctrl.isStas_16 | io.Pctrl.isStsa_16 | io.Pctrl.isStas_32 | io.Pctrl.isStsa_32

    io.Pctrl.isComp_16 := func(2,0).asUInt === 6.U && (func(6,5) === 0.U || func(6,3) === 4.U) && funct3 === 0.U 
    io.Pctrl.isComp_8  := func(2,0).asUInt === 7.U && (func(6,5) === 0.U || func(6,3) === 4.U) && funct3 === 0.U 
    io.Pctrl.isCompare := io.Pctrl.isComp_16 | io.Pctrl.isComp_8

    io.Pctrl.isMaxMin_16  := func(6,4) === 4.U && func(2,1) === 0.U && funct3 === 0.U
    io.Pctrl.isMaxMin_8   := func(6,4) === 4.U && func(2,1) === 2.U && funct3 === 0.U
    io.Pctrl.isMaxMin_XLEN:= func === "b0000101".U && funct3(2) === "b1".U  && funct3(0) === "b0".U && io.DecodeIn.cf.instr(6,0) === "b0110011".U
    io.Pctrl.isMaxMin_32  := (func(6,3) === "b1001".U || func(6,3) === "b1010".U) && func(2,1) === 0.U && funct3 === "b010".U
    io.Pctrl.isMaxMin     := io.Pctrl.isMaxMin_16 | io.Pctrl.isMaxMin_8 | io.Pctrl.isMaxMin_XLEN | io.Pctrl.isMaxMin_32

    io.Pctrl.isPbs     := func(6,1) === "b111111".U && funct3 === 0.U

    io.Pctrl.isRs_16 := func(6,5) === 1.U && func(4,3) =/= 0.U && func(2,1) === 0.U && funct3 === 0.U
    io.Pctrl.isLs_16 := func(6,5) === 1.U && func(4,3) =/= 0.U && func(2,0) === 2.U && funct3 === 0.U 
    io.Pctrl.isLR_16 :=(func(6,3) === 5.U || func(6,3) === 6.U)&& func(2,0) === 3.U && funct3 === 0.U
    io.Pctrl.isRs_8  := func(6,5) === 1.U && func(4,3) =/= 0.U && func(2,1) === 2.U && funct3 === 0.U
    io.Pctrl.isLs_8  := func(6,5) === 1.U && func(4,3) =/= 0.U && func(2,0) === 6.U && funct3 === 0.U
    io.Pctrl.isLR_8  :=(func(6,3) === 5.U || func(6,3) === 6.U)&& func(2,0) === 7.U && funct3 === 0.U
    io.Pctrl.isRs_32 :=((func(6,5)==="b01".U && func(4,3) =/= 0.U) || func(6,3) === 8.U) && func(2,1) === 0.U && funct3 === 2.U
    io.Pctrl.isLs_32 :=((func(6,5)==="b01".U && func(4,3) =/= 0.U) || func(6,3) === 8.U) && func(2,0) === 2.U && funct3 === 2.U
    io.Pctrl.isLR_32 :=(func(6,3) === 5.U || func(6,3) === 6.U) && func(2,0) === 3.U && funct3 === 2.U
    io.Pctrl.isLR_Q31:= func(6,4) === "b011".U && func(2,0) === "b111".U && funct3 === "b001".U
    io.Pctrl.isLs_Q31:= func(6,4) === "b001".U && func(2,0) === "b011".U && funct3 === "b001".U
    io.Pctrl.isRs_XLEN := (func(6,3) === "b0010".U || func(6,3)==="b1101".U) && func(2,1) === "b01".U && funct3 === "b001".U
    io.Pctrl.isSRAIWU:= func === "b0011010".U && funct3 === "b001".U
    io.Pctrl.isFSRW  := io.DecodeIn.cf.instr(26,25) === "b10".U  && funct3 === "b101".U   && func === "b0111011".U
    io.Pctrl.isWext    := func(6,4) === "b110".U && func(2,0) === "b111".U && funct3 === "b000".U
    io.Pctrl.isShifter := io.Pctrl.isRs_16 | io.Pctrl.isLs_16 | io.Pctrl.isLR_16 | io.Pctrl.isRs_8 | io.Pctrl.isLs_8 | io.Pctrl.isLR_8 | io.Pctrl.isRs_32 | io.Pctrl.isLs_32 | io.Pctrl.isLR_32 | io.Pctrl.isLs_Q31 | io.Pctrl.isLR_Q31 | io.Pctrl.isRs_XLEN | io.Pctrl.isSRAIWU | io.Pctrl.isFSRW | io.Pctrl.isWext

    io.Pctrl.isClip_16 := func === "b1000010".U & funct3 === 0.U
    io.Pctrl.isClip_8  := func === "b1000110".U & funct3 === 0.U
    io.Pctrl.isclip_32 := func(6,4) === "b111".U & func(2,0) === "b010".U & funct3 === 0.U
    io.Pctrl.isClip    := io.Pctrl.isClip_16 | io.Pctrl.isClip_8 | io.Pctrl.isclip_32

    io.Pctrl.isSat_16  := func === "b1010110".U && src2(4,0) === "b10001".U && funct3 === 0.U
    io.Pctrl.isSat_8   := func === "b1010110".U && src2(4,0) === "b10000".U && funct3 === 0.U
    io.Pctrl.isSat_32  := func === "b1010110".U && src2(4,0) === "b10010".U && funct3 === 0.U
    io.Pctrl.isSat_W   := func === "b1010110".U && src2(4,0) === "b10100".U && funct3 === 0.U
    io.Pctrl.isSat     := io.Pctrl.isSat_16 | io.Pctrl.isSat_8 | io.Pctrl.isSat_32 | io.Pctrl.isSat_W

    io.Pctrl.isCnt_16  := func === "b1010111".U && src2(4,1) === "b0100".U && funct3 === 0.U
    io.Pctrl.isCnt_8   := func === "b1010111".U && src2(4,1) === "b0000".U && funct3 === 0.U
    io.Pctrl.isCnt_32  := func === "b1010111".U && src2(4,1) === "b1100".U && funct3 === 0.U
    io.Pctrl.isCnt     := io.Pctrl.isCnt_16 | io.Pctrl.isCnt_8 | io.Pctrl.isCnt_32

    io.Pctrl.isSwap_16 := func(6,5) === 0.U && func (2,0) === "b111".U && funct3 === 1.U
    io.Pctrl.isSwap_8  := func === "b1010110".U && (src2(4,0) === "b11000".U && funct3 === 0.U && io.DecodeIn.cf.instrType === InstrPI || src2(5,0) === "b001000".U && funct3 === "b101".U && io.DecodeIn.cf.instrType === InstrPB)
    io.Pctrl.isSwap    := io.Pctrl.isSwap_16 | io.Pctrl.isSwap_8

    io.Pctrl.isUnpack  := func === "b1010110".U && (src2(4,3) === "b01".U || src2(4,0) === "b10011".U || src2(4,0) === "b10111".U) && funct3 === 0.U

    io.Pctrl.isBitrev  := (func(6,3) === "b1110".U && (func(2,0) === "b011".U || func(2,1) === "b10".U) && funct3 === 0.U
                       || func === "b0110101".U && funct3 === "b101".U && io.DecodeIn.cf.instr(6,0) === "b0010011".U && src2(4,0) === "b11111".U)

    io.Pctrl.isCmix    := io.DecodeIn.cf.instr(14,12) === "b001".U && io.DecodeIn.cf.instr(6,0) === "b0110011".U && io.DecodeIn.cf.instr(26,25) === "b11".U

    io.Pctrl.isInsertb := func === "b1010110".U && io.DecodeIn.cf.instr(24,23) === "b00".U && funct3 === "b000".U

    io.Pctrl.isPackbb  := func === "b0000100".U && funct3 === "b100".U && io.DecodeIn.cf.instr(6,0) === "b0110011".U
    io.Pctrl.isPackbt  := func === "b0001111".U && funct3 === "b010".U
    io.Pctrl.isPacktb  := func === "b0011111".U && funct3 === "b010".U
    io.Pctrl.isPacktt  := func === "b0100100".U && funct3 === "b100".U && io.DecodeIn.cf.instr(6,0) === "b0110011".U
    io.Pctrl.isPack    := io.Pctrl.isPackbb | io.Pctrl.isPackbt | io.Pctrl.isPacktb | io.Pctrl.isPacktt

    io.Pctrl.isMul_16 := {func(2) === 0.U && funct3 === 0.U}
    io.Pctrl.isMul_8  := {func(2) === 1.U && funct3 === 0.U && func(6,3) =/= "b1100".U}
    io.Pctrl.isMSW_3232 := {func(6,5) === "b01".U && func(2,1) === "b00".U && funct3 === 1.U}
    io.Pctrl.isMSW_3216 := {(func(6,5) === "b01".U && func(2,1) === "b01".U || func(6) === "b1".U && func(2,0) === "b111".U) && funct3 === 1.U}
    io.Pctrl.isS1632  := {(!func(6).asBool && (func(2,0) === "b100".U || func(2,0) === "b101".U && func(6,3) > 2.U || func(2,0) === "b110".U && func(5).asBool || func === "b0100111".U)) && funct3 === 1.U}
    io.Pctrl.isS1664  := {func === "b0101111".U && funct3 === 1.U}
    io.Pctrl.is832    := {func(6,3) === "b1100".U && func(2,0) =/= "b111".U && funct3 === 0.U}
    io.Pctrl.is3264   := {func(6,5) === "b10".U && func(2,1) === "b01".U && funct3 === "b001".U}
    io.Pctrl.is1664   := {func(6,5) === "b10".U && func(2,0) =/= "b111".U && funct3 === "b001".U}
    io.Pctrl.isQ15orQ31 := {(func(6,5) === "b00".U && (func(2,0) === "b110".U || func(2,0) === "b101".U) || func(6,5) === "b11".U && func(2,0) === "b001".U && func(4,3) =/= "b00".U) && funct3 === "b001".U}
    io.Pctrl.isC31    := {(func(6,4) === "b111".U && func(2,0) === "b000".U || func(6,3) === "b1100".U && func(2,1) === "b01".U) && funct3 === "b001".U}
    io.Pctrl.isQ15_64ONLY := {func(6,5) === "b11".U && func(4,3)=/="b00".U && func(2) === "b1".U && func(1,0) =/= "b11".U && funct3 === "b001".U}
    io.Pctrl.isQ63_64ONLY := {func(6,5) === "b01".U && func(4,3)=/="b00".U && func(2,0) === "b101".U && funct3 === "b010".U}
    io.Pctrl.isMul_32_64ONLY := {(func(6,3) === "b0010".U || func(6,3) === "b0001".U) && func(2,0) === "b100".U && funct3 === "b010".U}
    io.Pctrl.isPMA_64ONLY := {(func(6,3)==="b0011".U && func(2,1) === "b10".U || func(6,3)==="b0100".U && func(2).asBool || (func(2,0) === "b100".U || func(2,0) === "b110".U) && func(6,5)==="b01".U && func(4,3)=/="b00".U) && funct3 === "b010".U}
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

    //pmdu pre-computation
    val MulAdd17_0 = Module(new MulAdd_onestage(17))
    val MulAdd17_1 = Module(new MulAdd_onestage(17))
    val MulAdd33_0 = Module(new MulAdd_onestage(33))
    val MulAdd65_0 = Module(new MulAdd_onestage(65))
    val MulAdd9_0  = Module(new MulAdd_onestage(9))
    val MulAdd9_1  = Module(new MulAdd_onestage(9))
    val MulAdd9_2  = Module(new MulAdd_onestage(9))
    val MulAdd9_3  = Module(new MulAdd_onestage(9))

    MulAdd17_0.io.in := 0.U.asTypeOf(new MulAdd_onestage_IO(17).in)
    MulAdd17_1.io.in := 0.U.asTypeOf(new MulAdd_onestage_IO(17).in)
    MulAdd33_0.io.in := 0.U.asTypeOf(new MulAdd_onestage_IO(33).in)
    MulAdd65_0.io.in := 0.U.asTypeOf(new MulAdd_onestage_IO(65).in)
    MulAdd9_0.io.in  := 0.U.asTypeOf(new MulAdd_onestage_IO(9).in)
    MulAdd9_1.io.in  := 0.U.asTypeOf(new MulAdd_onestage_IO(9).in)
    MulAdd9_2.io.in  := 0.U.asTypeOf(new MulAdd_onestage_IO(9).in)
    MulAdd9_3.io.in  := 0.U.asTypeOf(new MulAdd_onestage_IO(9).in)

    if(XLEN == 64){
        when(io.Pctrl.isMul_16){
            val width = 16
            val realSrc2 = SrcSetter(16,src2,Xsrc(func))
            when(Saturating(func)){
                MulAdd17_0.io.in.srcs(0) := extender(SrcSigned(func),src1(0*width+width-1,0*width),17)
                MulAdd17_1.io.in.srcs(0) := extender(SrcSigned(func),src1(1*width+width-1,1*width),17)
                MulAdd33_0.io.in.srcs(0) := extender(SrcSigned(func),src1(2*width+width-1,2*width),33)
                MulAdd65_0.io.in.srcs(0) := extender(SrcSigned(func),src1(3*width+width-1,3*width),65)
                MulAdd17_0.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(0*width+width-1,0*width),17)
                MulAdd17_1.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(1*width+width-1,1*width),17)
                MulAdd33_0.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(2*width+width-1,2*width),33)
                MulAdd65_0.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(3*width+width-1,3*width),65)
                MulAdd17_0.io.in.srcs(2) := extender(SrcSigned(func),src3(0*width+width-1,0*width),17)
                MulAdd17_1.io.in.srcs(2) := extender(SrcSigned(func),src3(1*width+width-1,1*width),17)
                MulAdd33_0.io.in.srcs(2) := extender(SrcSigned(func),src3(2*width+width-1,2*width),33)
                MulAdd65_0.io.in.srcs(2) := extender(SrcSigned(func),src3(3*width+width-1,3*width),65)
            }.otherwise{
                MulAdd17_0.io.in.srcs(0) := extender(SrcSigned(func),src1(0*width+width-1,0*width),17)
                MulAdd65_0.io.in.srcs(0) := extender(SrcSigned(func),src1(1*width+width-1,1*width),65)
                MulAdd17_0.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(0*width+width-1,0*width),17)
                MulAdd65_0.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(1*width+width-1,1*width),65)
                MulAdd17_0.io.in.srcs(2) := extender(SrcSigned(func),src3(0*width+width-1,0*width),17)
                MulAdd65_0.io.in.srcs(2) := extender(SrcSigned(func),src3(1*width+width-1,1*width),65)
            }
        }.elsewhen(io.Pctrl.isMul_8){
            val width = 8
            val realSrc2 = SrcSetter(8,src2,Xsrc(func))
            when(Saturating(func)){
                MulAdd9_0.io.in.srcs(0)  := extender(SrcSigned(func),src1(0*width+width-1,0*width),9)
                MulAdd9_1.io.in.srcs(0)  := extender(SrcSigned(func),src1(1*width+width-1,1*width),9)
                MulAdd9_2.io.in.srcs(0)  := extender(SrcSigned(func),src1(2*width+width-1,2*width),9)
                MulAdd9_3.io.in.srcs(0)  := extender(SrcSigned(func),src1(3*width+width-1,3*width),9)
                MulAdd17_0.io.in.srcs(0) := extender(SrcSigned(func),src1(4*width+width-1,4*width),17)
                MulAdd17_1.io.in.srcs(0) := extender(SrcSigned(func),src1(5*width+width-1,5*width),17)
                MulAdd33_0.io.in.srcs(0) := extender(SrcSigned(func),src1(6*width+width-1,6*width),33)
                MulAdd65_0.io.in.srcs(0) := extender(SrcSigned(func),src1(7*width+width-1,7*width),65)
                MulAdd9_0.io.in.srcs(1)  := extender(SrcSigned(func),realSrc2(0*width+width-1,0*width),9)
                MulAdd9_1.io.in.srcs(1)  := extender(SrcSigned(func),realSrc2(1*width+width-1,1*width),9)
                MulAdd9_2.io.in.srcs(1)  := extender(SrcSigned(func),realSrc2(2*width+width-1,2*width),9)
                MulAdd9_3.io.in.srcs(1)  := extender(SrcSigned(func),realSrc2(3*width+width-1,3*width),9)
                MulAdd17_0.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(4*width+width-1,4*width),17)
                MulAdd17_1.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(5*width+width-1,5*width),17)
                MulAdd33_0.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(6*width+width-1,6*width),33)
                MulAdd65_0.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(7*width+width-1,7*width),65)
                MulAdd9_0.io.in.srcs(2)  := extender(SrcSigned(func),src3(0*width+width-1,0*width),9)
                MulAdd9_1.io.in.srcs(2)  := extender(SrcSigned(func),src3(1*width+width-1,1*width),9)
                MulAdd9_2.io.in.srcs(2)  := extender(SrcSigned(func),src3(2*width+width-1,2*width),9)
                MulAdd9_3.io.in.srcs(2)  := extender(SrcSigned(func),src3(3*width+width-1,3*width),9)
                MulAdd17_0.io.in.srcs(2) := extender(SrcSigned(func),src3(4*width+width-1,4*width),17)
                MulAdd17_1.io.in.srcs(2) := extender(SrcSigned(func),src3(5*width+width-1,5*width),17)
                MulAdd33_0.io.in.srcs(2) := extender(SrcSigned(func),src3(6*width+width-1,6*width),33)
                MulAdd65_0.io.in.srcs(2) := extender(SrcSigned(func),src3(7*width+width-1,7*width),65)
            }.otherwise{
                MulAdd9_0.io.in.srcs(0)  := extender(SrcSigned(func),src1(0*width+width-1,0*width),9)
                MulAdd9_1.io.in.srcs(0)  := extender(SrcSigned(func),src1(1*width+width-1,1*width),9)
                MulAdd9_2.io.in.srcs(0)  := extender(SrcSigned(func),src1(2*width+width-1,2*width),9)
                MulAdd65_0.io.in.srcs(0) := extender(SrcSigned(func),src1(3*width+width-1,3*width),65)
                MulAdd9_0.io.in.srcs(1)  := extender(SrcSigned(func),realSrc2(0*width+width-1,0*width),9)
                MulAdd9_1.io.in.srcs(1)  := extender(SrcSigned(func),realSrc2(1*width+width-1,1*width),9)
                MulAdd9_2.io.in.srcs(1)  := extender(SrcSigned(func),realSrc2(2*width+width-1,2*width),9)
                MulAdd65_0.io.in.srcs(1) := extender(SrcSigned(func),realSrc2(3*width+width-1,3*width),65)
                MulAdd9_0.io.in.srcs(2)  := extender(SrcSigned(func),src3(0*width+width-1,0*width),9)
                MulAdd9_1.io.in.srcs(2)  := extender(SrcSigned(func),src3(1*width+width-1,1*width),9)
                MulAdd9_2.io.in.srcs(2)  := extender(SrcSigned(func),src3(2*width+width-1,2*width),9)
                MulAdd65_0.io.in.srcs(2) := extender(SrcSigned(func),src3(3*width+width-1,3*width),65)
                Debug("[PMDU] MulAdd65_0 src1 %x  src2 %x src3 %x\n",MulAdd65_0.io.in.srcs(0),MulAdd65_0.io.in.srcs(1),MulAdd65_0.io.in.srcs(2))
            }
        }.elsewhen(io.Pctrl.isMSW_3232){
            val width = 32
            MulAdd33_0.io.in.srcs(0) := SignExt(src1(0*width+width-1,0*width),33)
            MulAdd33_0.io.in.srcs(1) := SignExt(src2(0*width+width-1,0*width),33)
            MulAdd33_0.io.in.srcs(2) := SignExt(0.U,33)
            MulAdd65_0.io.in.srcs(0) := SignExt(src1(1*width+width-1,1*width),65)
            MulAdd65_0.io.in.srcs(1) := SignExt(src2(1*width+width-1,1*width),65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.isMSW_3216){
            val width = 32
            val src2_use_top = func(6,4) === "b011".U || func(6,4) === "b101".U || func(6,4) === "b111".U
            MulAdd33_0.io.in.srcs(0) := SignExt(src1(0*width+width-1,0*width),33)
            MulAdd33_0.io.in.srcs(1) := SignExt(Mux(src2_use_top,src2(0*width+width-1,0*width+width/2),src2(0*width+width/2-1,0*width)),33)
            MulAdd33_0.io.in.srcs(2) := SignExt(0.U,33)
            MulAdd65_0.io.in.srcs(0) := SignExt(src1(1*width+width-1,1*width),65)
            MulAdd65_0.io.in.srcs(1) := SignExt(Mux(src2_use_top,src2(1*width+width-1,1*width+width/2),src2(1*width+width/2-1,1*width)),65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.isS1632){
            val twopairs = func(6,3) < 3.U || func(2,0) === "b101".U && func(6,5) === "b01".U && func(4,3) =/= "b00".U
            when(twopairs){
                val bb = func(6,3) === "b0000".U || func(6,3) === "b0101".U
                val bt = func(6,3) === "b0001".U || func(6,3) === "b0110".U
                val src1_clip1 = Mux(bb,src1(15,0),Mux(bt,src1(15,0),src1(31,16)))
                val src1_clip2 = Mux(bb,src1(47,32),Mux(bt,src1(47,32),src1(63,48)))
                val src2_clip1 = Mux(bb,src2(15,0),src2(31,16))
                val src2_clip2 = Mux(bb,src2(47,32),src2(63,48))
                MulAdd33_0.io.in.srcs(0) := SignExt(src1_clip1,33)
                MulAdd33_0.io.in.srcs(1) := SignExt(src2_clip1,33)
                MulAdd33_0.io.in.srcs(2) := SignExt(0.U,33)
                MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip2,65)
                MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip2,65)
                MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
            }.otherwise{
                val cross = func === "b0011101".U || func === "b0100101".U || func === "b0100111".U || func === "b0111100".U || func === "b0111110".U
                val (src1_clip1,src1_clip2,src1_clip3,src1_clip4)=(src1(15,0),src1(31,16),src1(47,32),src1(63,48))
                val (src2_clip1,src2_clip2,src2_clip3,src2_clip4)=(Mux(cross,src2(31,16),src2(15,0)),Mux(cross,src2(15,0),src2(31,16)),Mux(cross,src2(63,48),src2(47,32)),Mux(cross,src2(47,32),src2(63,48)))
                MulAdd17_0.io.in.srcs(0) := SignExt(src1_clip1,17)
                MulAdd17_0.io.in.srcs(1) := SignExt(src2_clip1,17)
                MulAdd17_0.io.in.srcs(2) := SignExt(0.U,17)
                MulAdd17_1.io.in.srcs(0) := SignExt(src1_clip2,65)
                MulAdd17_1.io.in.srcs(1) := SignExt(src2_clip2,65)
                MulAdd17_1.io.in.srcs(2) := SignExt(0.U,17)
                MulAdd33_0.io.in.srcs(0) := SignExt(src1_clip3,33)
                MulAdd33_0.io.in.srcs(1) := SignExt(src2_clip3,33)
                MulAdd33_0.io.in.srcs(2) := SignExt(0.U,33)
                MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip4,65)
                MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip4,65)
                MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
            }
        }.elsewhen(io.Pctrl.isS1664){
            MulAdd33_0.io.in.srcs(0) := SignExt(src2(15,0),33)
            MulAdd33_0.io.in.srcs(1) := SignExt(src2(31,16),33)
            MulAdd33_0.io.in.srcs(2) := SignExt(0.U,33)
            MulAdd65_0.io.in.srcs(0) := SignExt(src2(47,32),65)
            MulAdd65_0.io.in.srcs(1) := SignExt(src2(63,48),65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.is832){
            val width = 8
            val isunsigned = func(2,0) === "b110".U
            val issigned   = func(2,0) === "b100".U
            MulAdd9_0.io.in.srcs(0)  := extender(!isunsigned,src1(0*width+width-1,0*width),9)
            MulAdd9_1.io.in.srcs(0)  := extender(!isunsigned,src1(1*width+width-1,1*width),9)
            MulAdd9_2.io.in.srcs(0)  := extender(!isunsigned,src1(2*width+width-1,2*width),9)
            MulAdd9_3.io.in.srcs(0)  := extender(!isunsigned,src1(3*width+width-1,3*width),9)
            MulAdd17_0.io.in.srcs(0) := extender(!isunsigned,src1(4*width+width-1,4*width),17)
            MulAdd17_1.io.in.srcs(0) := extender(!isunsigned,src1(5*width+width-1,5*width),17)
            MulAdd33_0.io.in.srcs(0) := extender(!isunsigned,src1(6*width+width-1,6*width),33)
            MulAdd65_0.io.in.srcs(0) := extender(!isunsigned,src1(7*width+width-1,7*width),65)
            MulAdd9_0.io.in.srcs(1)  := extender(issigned,src2(0*width+width-1,0*width),9)
            MulAdd9_1.io.in.srcs(1)  := extender(issigned,src2(1*width+width-1,1*width),9)
            MulAdd9_2.io.in.srcs(1)  := extender(issigned,src2(2*width+width-1,2*width),9)
            MulAdd9_3.io.in.srcs(1)  := extender(issigned,src2(3*width+width-1,3*width),9)
            MulAdd17_0.io.in.srcs(1) := extender(issigned,src2(4*width+width-1,4*width),17)
            MulAdd17_1.io.in.srcs(1) := extender(issigned,src2(5*width+width-1,5*width),17)
            MulAdd33_0.io.in.srcs(1) := extender(issigned,src2(6*width+width-1,6*width),33)
            MulAdd65_0.io.in.srcs(1) := extender(issigned,src2(7*width+width-1,7*width),65)
            MulAdd9_0.io.in.srcs(2)  := 0.U
            MulAdd9_1.io.in.srcs(2)  := 0.U
            MulAdd9_2.io.in.srcs(2)  := 0.U
            MulAdd9_3.io.in.srcs(2)  := 0.U
            MulAdd17_0.io.in.srcs(2) := 0.U
            MulAdd17_1.io.in.srcs(2) := 0.U
            MulAdd33_0.io.in.srcs(2) := 0.U
            MulAdd65_0.io.in.srcs(2) := 0.U
        }.elsewhen(io.Pctrl.is3264){
            val width = 32
            val issigned   = !func(4).asBool
            MulAdd33_0.io.in.srcs(0) := extender(issigned,src1(0*width+width-1,0*width),33)
            MulAdd65_0.io.in.srcs(0) := extender(issigned,src1(1*width+width-1,1*width),65)
            MulAdd33_0.io.in.srcs(1) := extender(issigned,src2(0*width+width-1,0*width),33)
            MulAdd65_0.io.in.srcs(1) := extender(issigned,src2(1*width+width-1,1*width),65)
            MulAdd33_0.io.in.srcs(2) := 0.U
            MulAdd65_0.io.in.srcs(2) := 0.U
        }.elsewhen(io.Pctrl.is1664){
            val twopairs = func(2,0) === "b100".U
            when(twopairs){
                val bb = func(4,3) === "b00".U 
                val bt = func(4,3) === "b01".U 
                val src1_clip1 = Mux(bb,src1(15,0),Mux(bt,src1(15,0),src1(31,16)))
                val src1_clip2 = Mux(bb,src1(47,32),Mux(bt,src1(47,32),src1(63,48)))
                val src2_clip1 = Mux(bb,src2(15,0),src2(31,16))
                val src2_clip2 = Mux(bb,src2(47,32),src2(63,48))
                MulAdd33_0.io.in.srcs(0) := SignExt(src1_clip1,33)
                MulAdd33_0.io.in.srcs(1) := SignExt(src2_clip1,33)
                MulAdd33_0.io.in.srcs(2) := SignExt(0.U,33)
                MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip2,65)
                MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip2,65)
                MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
            }.otherwise{
                val cross = func === "b1010101".U || func === "b1001110".U || func === "b1011110".U
                val (src1_clip1,src1_clip2,src1_clip3,src1_clip4)=(src1(15,0),src1(31,16),src1(47,32),src1(63,48))
                val (src2_clip1,src2_clip2,src2_clip3,src2_clip4)=(Mux(cross,src2(31,16),src2(15,0)),Mux(cross,src2(15,0),src2(31,16)),Mux(cross,src2(63,48),src2(47,32)),Mux(cross,src2(47,32),src2(63,48)))
                MulAdd17_0.io.in.srcs(0) := SignExt(src1_clip1,17)
                MulAdd17_0.io.in.srcs(1) := SignExt(src2_clip1,17)
                MulAdd17_0.io.in.srcs(2) := SignExt(0.U,17)
                MulAdd17_1.io.in.srcs(0) := SignExt(src1_clip2,65)
                MulAdd17_1.io.in.srcs(1) := SignExt(src2_clip2,65)
                MulAdd17_1.io.in.srcs(2) := SignExt(0.U,17)
                MulAdd33_0.io.in.srcs(0) := SignExt(src1_clip3,33)
                MulAdd33_0.io.in.srcs(1) := SignExt(src2_clip3,33)
                MulAdd33_0.io.in.srcs(2) := SignExt(0.U,33)
                MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip4,65)
                MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip4,65)
                MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
            }
        }.elsewhen(io.Pctrl.isQ15orQ31){
            val isQ31_type1 = func(2,0) === "b001".U
            val bb = Mux(isQ31_type1,func(4,3) === "b01".U,func(4,3) === "b00".U)
            val bt = Mux(isQ31_type1,func(4,3) === "b10".U,func(4,3) === "b01".U)
            val src1_clip1 = Mux(bb,src1(15,0),Mux(bt,src1(15,0),src1(31,16)))
            val src2_clip1 = Mux(bb,src2(15,0),src2(31,16))
            MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip1,65)
            MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip1,65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.isC31){
            MulAdd65_0.io.in.srcs(0) := extender(func(6,3)=/="b1111".U,src1(31,0),65)
            MulAdd65_0.io.in.srcs(1) := extender(func(6,3)=/="b1111".U,src2(31,0),65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.isQ15_64ONLY){
            val bb = func(4,3) === "b01".U 
            val bt = func(4,3) === "b10".U 
            val src1_clip1 = Mux(bb,src1(15,0),Mux(bt,src1(15,0),src1(31,16)))
            val src1_clip2 = Mux(bb,src1(47,32),Mux(bt,src1(47,32),src1(63,48)))
            val src2_clip1 = Mux(bb,src2(15,0),src2(31,16))
            val src2_clip2 = Mux(bb,src2(47,32),src2(63,48))
            MulAdd33_0.io.in.srcs(0) := SignExt(src1_clip1,33)
            MulAdd33_0.io.in.srcs(1) := SignExt(src2_clip1,33)
            MulAdd33_0.io.in.srcs(2) := SignExt(0.U,33)
            MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip2,65)
            MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip2,65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.isMul_32_64ONLY){
            val bt = func(4,3) === "b01".U 
            val src1_clip = Mux(bt,src1(31,0),src1(63,32))
            val src2_clip = src2(63,32)
            MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip,65)
            MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip,65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.isQ63_64ONLY){
            val bb = func(4,3) === "b01".U 
            val bt = func(4,3) === "b10".U 
            val src1_clip = Mux(bb,src1(31,0),Mux(bt,src1(31,0),src1(63,32)))
            val src2_clip = Mux(bb,src2(31,0),src2(63,32))
            MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip,65)
            MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip,65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.isPMA_64ONLY){
            val cross = func(2,0) === "b101".U || func(2,0) === "b111".U || func(6,3) === "b0111".U
            val src1_clip1 = src1(31,0)
            val src1_clip2 = src1(63,32)
            val src2_clip1 = Mux(cross,src2(63,32),src2(31,0 ))
            val src2_clip2 = Mux(cross,src2(31,0) ,src2(63,32))
            MulAdd33_0.io.in.srcs(0) := SignExt(src1_clip1,33)
            MulAdd33_0.io.in.srcs(1) := SignExt(src2_clip1,33)
            MulAdd33_0.io.in.srcs(2) := SignExt(0.U,33)
            MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip2,65)
            MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip2,65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
            Debug("[PMDUisPMA64] cross %x src1_clip1 %x src1_clip2 %x src2_clip1 %x src2_clip2 %x\n",cross,src1_clip1,src1_clip2,src2_clip1,src2_clip2)
        }
    }else if(XLEN == 32){
        when(io.Pctrl.isMSW_3232){
            val width = 32
            MulAdd65_0.io.in.srcs(0) := SignExt(src1(0*width+width-1,0*width),65)
            MulAdd65_0.io.in.srcs(1) := SignExt(src2(0*width+width-1,0*width),65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.isMSW_3216){
            val width = 32
            val src2_use_top = func(6,4) === "b011".U || func(6,4) === "b101".U || func(6,4) === "b111".U
            MulAdd65_0.io.in.srcs(0) := SignExt(src1(0*width+width-1,0*width),65)
            MulAdd65_0.io.in.srcs(1) := SignExt(Mux(src2_use_top,src2(0*width+width-1,0*width+width/2),src2(0*width+width/2-1,0*width)),65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.isS1632){
            val twopairs = func(6,3) < 3.U || func(2,0) === "b101".U && func(6,5) === "b01".U && func(4,3) =/= "b00".U
            when(twopairs){
                val bb = func(6,3) === "b0000".U || func(6,3) === "b0101".U
                val bt = func(6,3) === "b0001".U || func(6,3) === "b0110".U
                val src1_clip1 = Mux(bb,src1(15,0),Mux(bt,src1(15,0),src1(31,16)))
                val src2_clip1 = Mux(bb,src2(15,0),src2(31,16))
                MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip1,65)
                MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip1,65)
                MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
            }.otherwise{
                val cross = func === "b0011101".U || func === "b0100101".U || func === "b0100111".U || func === "b0111100".U || func === "b0111110".U
                val (src1_clip1,src1_clip2)=(src1(15,0),src1(31,16))
                val (src2_clip1,src2_clip2)=(Mux(cross,src2(31,16),src2(15,0)),Mux(cross,src2(15,0),src2(31,16)))
                MulAdd33_0.io.in.srcs(0) := SignExt(src1_clip1,33)
                MulAdd33_0.io.in.srcs(1) := SignExt(src2_clip1,33)
                MulAdd33_0.io.in.srcs(2) := SignExt(0.U,33)
                MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip2,65)
                MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip2,65)
                MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
            }
        }.elsewhen(io.Pctrl.is832){
            val width = 8
            val isunsigned = func(2,0) === "b110".U
            val issigned   = func(2,0) === "b100".U
            MulAdd17_0.io.in.srcs(0) := extender(!isunsigned,src1(0*width+width-1,0*width),17)
            MulAdd17_1.io.in.srcs(0) := extender(!isunsigned,src1(1*width+width-1,1*width),17)
            MulAdd33_0.io.in.srcs(0) := extender(!isunsigned,src1(2*width+width-1,2*width),33)
            MulAdd65_0.io.in.srcs(0) := extender(!isunsigned,src1(3*width+width-1,3*width),65)
            MulAdd17_0.io.in.srcs(1) := extender(issigned,src2(0*width+width-1,0*width),17)
            MulAdd17_1.io.in.srcs(1) := extender(issigned,src2(1*width+width-1,1*width),17)
            MulAdd33_0.io.in.srcs(1) := extender(issigned,src2(2*width+width-1,2*width),33)
            MulAdd65_0.io.in.srcs(1) := extender(issigned,src2(3*width+width-1,3*width),65)
            MulAdd17_0.io.in.srcs(2) := 0.U
            MulAdd17_1.io.in.srcs(2) := 0.U
            MulAdd33_0.io.in.srcs(2) := 0.U
            MulAdd65_0.io.in.srcs(2) := 0.U
        }.elsewhen(io.Pctrl.isQ15orQ31){
            val isQ31_type1 = func(2,0) === "b001".U
            val bb = Mux(isQ31_type1,func(4,3) === "b01".U,func(4,3) === "b00".U)
            val bt = Mux(isQ31_type1,func(4,3) === "b10".U,func(4,3) === "b01".U)
            val src1_clip1 = Mux(bb,src1(15,0),Mux(bt,src1(15,0),src1(31,16)))
            val src2_clip1 = Mux(bb,src2(15,0),src2(31,16))
            MulAdd65_0.io.in.srcs(0) := SignExt(src1_clip1,65)
            MulAdd65_0.io.in.srcs(1) := SignExt(src2_clip1,65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }.elsewhen(io.Pctrl.isC31){
            MulAdd65_0.io.in.srcs(0) := extender(func(6,3)=/="b1111".U,src1(31,0),65)
            MulAdd65_0.io.in.srcs(1) := extender(func(6,3)=/="b1111".U,src2(31,0),65)
            MulAdd65_0.io.in.srcs(2) := SignExt(0.U,65)
        }
    }
    io.Pctrl.mulres9_0  := MulAdd9_0.io.out.result
    io.Pctrl.mulres9_1  := MulAdd9_1.io.out.result
    io.Pctrl.mulres9_2  := MulAdd9_2.io.out.result
    io.Pctrl.mulres9_3  := MulAdd9_3.io.out.result
    io.Pctrl.mulres17_0 := MulAdd17_0.io.out.result
    io.Pctrl.mulres17_1 := MulAdd17_1.io.out.result
    io.Pctrl.mulres33_0 := MulAdd33_0.io.out.result
    io.Pctrl.mulres65_0 := MulAdd65_0.io.out.result

    ////palu pre-computation
    io.Pctrl.isSub := 0.U
    when(io.Pctrl.isSub_64 | io.Pctrl.isSub_32 | io.Pctrl.isSub_16 | io.Pctrl.isSub_8 | io.Pctrl.isComp_16 
    | io.Pctrl.isComp_8 | io.Pctrl.isMaxMin | io.Pctrl.isPbs | io.Pctrl.isSub_Q15 | io.Pctrl.isSub_Q31 | io.Pctrl.isSub_C31){
        io.Pctrl.isSub:= "b11111111".U
    }.elsewhen(io.Pctrl.isCras_16 | io.Pctrl.isStas_16){
        io.Pctrl.isSub:= "b00000101".U
    }.elsewhen(io.Pctrl.isCrsa_16 | io.Pctrl.isStsa_16){
        io.Pctrl.isSub:= "b00001010".U
    }.elsewhen(io.Pctrl.isCras_32 | io.Pctrl.isStas_32){
        io.Pctrl.isSub:= "b00000001".U
    }.elsewhen(io.Pctrl.isCrsa_32 | io.Pctrl.isStsa_32){
        io.Pctrl.isSub:= "b00000010".U
    }

    io.Pctrl.isAdder := (io.Pctrl.isSub=/=0.U | io.Pctrl.isAdd | io.Pctrl.isCr | io.Pctrl.isSt) && !io.Pctrl.isCompare && !io.Pctrl.isMaxMin && !io.Pctrl.isPbs

    io.Pctrl.SrcSigned   := func(6,4) === 0.U || func(6,4) === "b100".U || io.Pctrl.isSt && (func(6,3) === "b1011".U || func(6,3) === "b1100".U)
    io.Pctrl.Saturating  := !io.Pctrl.isSt && func(3).asBool || io.Pctrl.isSt && !func(3).asBool
    io.Pctrl.Translation := !io.Pctrl.Saturating && (!io.Pctrl.isSt && !(func(6,3) === 4.U) || io.Pctrl.isSt && (func(6,3) === "b1011".U || func(6,3) === "b1101".U))
    io.Pctrl.LessEqual   := io.Pctrl.Saturating
    io.Pctrl.LessThan    := io.Pctrl.Translation

    def MixPrecisionLen = XLEN + XLEN / 8 + XLEN / 8
    val add1 = Wire(UInt(MixPrecisionLen.W))
    val add2 = Wire(UInt(MixPrecisionLen.W))
    val add1_drophighestbit = Wire(UInt(MixPrecisionLen.W))
    val add2_drophighestbit = Wire(UInt(MixPrecisionLen.W))
    def add_src_map(width: Int, src:UInt, isSub: UInt,SrcSigned:Bool,isCr:Bool) = {
        var l = List(0.U)
        for (i <- 0 until XLEN / width) {
            val SrcClip = WireInit(0.U(width.W))
            SrcClip := src(i * width + width - 1, i * width)
            when(isCr){
                if(i%2 == 0 && XLEN/width > 1){
                    SrcClip :=src((i+1) * width + width - 1, (i+1) * width)
                }else if(i >= 1){
                    SrcClip :=src((i-1) * width + width - 1, (i-1) * width)
                }
            }
            val tmp = (SrcClip ^ Fill(width, isSub(i))) + isSub(i)
            val extension = Wire(UInt(1.W))
            when(SrcSigned){
                extension := tmp(width - 1)
                when(isSub(i) && tmp === Cat(1.U , Fill(width-1,0.U))){extension := 0.U}
            }.otherwise{
                extension := 0.U
                when(isSub(i) && tmp =/= 0.U){extension := 1.U}
            }
            val tmp_list1 = List.concat(List(extension), List(tmp(width - 1,0)))
            val tmp_list2 = List.concat(List(0.U), tmp_list1)
            l = List.concat(tmp_list2 ,l)
        }
        l.dropRight(1).reduce(Cat(_, _)) // drop leading zero which we added for convenience
    }
    def add_src_map_drophighestbit(width: Int, src:UInt, isSub: UInt,isCr:Bool) = {
        var l = List(0.U)
        for (i <- 0 until XLEN / width) {
            val SrcClip = WireInit(0.U(width.W))
            SrcClip := src(i * width + width - 1, i * width)
            when(isCr){
                if(i%2 == 0 && XLEN/width > 1){
                    SrcClip :=src((i+1) * width + width - 1, (i+1) * width)
                }else if(i >= 1){
                    SrcClip :=src((i-1) * width + width - 1, (i-1) * width)
                }
            }
            val tmp = (SrcClip ^ Fill(width, isSub(i))) + isSub(i)
            val highestbit = Wire(UInt(1.W))
            highestbit := 0.U
            when(isSub(i) && tmp === Cat(1.U , Fill(width-1,0.U))){highestbit := 1.U}
            val tmp_list = List.concat(List(highestbit), List(tmp(width - 2,0)))
            val tmp_list1 = List.concat(List(0.U),tmp_list)
            val tmp_list2 = List.concat(List(0.U),tmp_list1)
            l = List.concat(tmp_list2 ,l)
        }
        l.dropRight(1).reduce(Cat(_, _)) 
    }
    if (XLEN == 32) {
        when (io.Pctrl.isAdd_8 | io.Pctrl.isSub_8) {
            add1 := add_src_map(8, src1, 0.B,io.Pctrl.SrcSigned,false.B)
            add2 := add_src_map(8, src2, io.Pctrl.isSub,io.Pctrl.SrcSigned,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(8, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(8, src2, io.Pctrl.isSub,false.B)
        } .elsewhen (io.Pctrl.isAdd_16 | io.Pctrl.isSub_16) {
            add1 := add_src_map(16, src1, 0.B,io.Pctrl.SrcSigned,false.B)
            add2 := add_src_map(16, src2, io.Pctrl.isSub,io.Pctrl.SrcSigned,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(16, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(16, src2, io.Pctrl.isSub,false.B)
        } .elsewhen (io.Pctrl.isAdd_32 | io.Pctrl.isSub_32) {
            add1 := add_src_map(32, src1, 0.B,io.Pctrl.SrcSigned,false.B)
            add2 := add_src_map(32, src2, io.Pctrl.isSub,io.Pctrl.SrcSigned,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(32, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(32, src2, io.Pctrl.isSub,false.B)
        } .elsewhen(io.Pctrl.isCras_16 | io.Pctrl.isCrsa_16){
            add1 := add_src_map(16, src1, 0.B,io.Pctrl.SrcSigned,false.B)
            add2 := add_src_map(16, src2, io.Pctrl.isSub,io.Pctrl.SrcSigned,true.B)
            add1_drophighestbit := add_src_map_drophighestbit(16, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(16, src2, io.Pctrl.isSub,true.B)
        } .elsewhen(io.Pctrl.isCras_32 | io.Pctrl.isCrsa_32){
            add1 := add_src_map(32, src1, 0.B,io.Pctrl.SrcSigned,false.B)
            add2 := add_src_map(32, src2, io.Pctrl.isSub,io.Pctrl.SrcSigned,true.B)
            add1_drophighestbit := add_src_map_drophighestbit(32, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(32, src2, io.Pctrl.isSub,true.B)
        } .elsewhen(io.Pctrl.isStas_16 | io.Pctrl.isStsa_16){
            add1 := add_src_map(16, src1, 0.B,io.Pctrl.SrcSigned,false.B)
            add2 := add_src_map(16, src2, io.Pctrl.isSub,io.Pctrl.SrcSigned,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(16, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(16, src2, io.Pctrl.isSub,false.B)
        } .elsewhen(io.Pctrl.isStas_32 | io.Pctrl.isStsa_32){
            add1 := add_src_map(32, src1, 0.B,io.Pctrl.SrcSigned,false.B)
            add2 := add_src_map(32, src2, io.Pctrl.isSub,io.Pctrl.SrcSigned,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(32, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(32, src2, io.Pctrl.isSub,false.B)
        }.elsewhen(io.Pctrl.isComp_16){
            add1 := add_src_map(16, src1, 0.B,io.Pctrl.SrcSigned,false.B)
            add2 := add_src_map(16, src2, io.Pctrl.isSub,io.Pctrl.SrcSigned,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(16, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(16, src2, io.Pctrl.isSub,false.B)
        } .elsewhen(io.Pctrl.isComp_8){
            add1 := add_src_map(8, src1, 0.B,io.Pctrl.SrcSigned,false.B)
            add2 := add_src_map(8, src2, io.Pctrl.isSub,io.Pctrl.SrcSigned,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(16, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(16, src2, io.Pctrl.isSub,false.B)
        } .elsewhen(io.Pctrl.isMaxMin_16){
            add1 := add_src_map(16, src1, 0.B,!func(3).asBool,false.B)
            add2 := add_src_map(16, src2, io.Pctrl.isSub,!func(3).asBool,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(16, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(16, src2, io.Pctrl.isSub,false.B)
        } .elsewhen(io.Pctrl.isMaxMin_8){
            add1 := add_src_map(8, src1, 0.B,!func(3).asBool,false.B)
            add2 := add_src_map(8, src2, io.Pctrl.isSub,!func(3).asBool,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(8, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(8, src2, io.Pctrl.isSub,false.B)
        } .elsewhen(io.Pctrl.isMaxMin_XLEN){
            add1 := add_src_map(XLEN, src1, 0.B,true.B,false.B)
            add2 := add_src_map(XLEN, src2, io.Pctrl.isSub,true.B,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(XLEN, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(XLEN, src2, io.Pctrl.isSub,false.B)
        }.elsewhen(io.Pctrl.isPbs){
            add1 := add_src_map(8, src1, 0.B,false.B,false.B)
            add2 := add_src_map(8, src2, io.Pctrl.isSub,false.B,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(8, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(8, src2, io.Pctrl.isSub,false.B)
        } .elsewhen(io.Pctrl.isAdd_Q15 | io.Pctrl.isSub_Q15){
            add1 := add_src_map(16, Cat(Fill(16,0.U),src1(15,0)), 0.B,!func(3).asBool,false.B)
            add2 := add_src_map(16, Cat(Fill(16,0.U),src2(15,0)), io.Pctrl.isSub,!func(3).asBool,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(16, Cat(Fill(16,0.U),src1(15,0)), 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(16, Cat(Fill(16,0.U),src2(15,0)), io.Pctrl.isSub,false.B)
        } .elsewhen(io.Pctrl.isAdd_Q31 | io.Pctrl.isSub_Q31 | io.Pctrl.isSub_C31 |io.Pctrl.isAdd_C31){
            add1 := add_src_map(32, src1(31,0), 0.B,!func(3).asBool,false.B)
            add2 := add_src_map(32, src2(31,0), io.Pctrl.isSub,!func(3).asBool,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(32,src1(31,0), 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(32, src2(31,0), io.Pctrl.isSub,false.B)
        } .elsewhen(io.Pctrl.isAve){
            add1 := add_src_map(32, src1, 0.B,true.B,false.B)
            add2 := add_src_map(32, src2, io.Pctrl.isSub,true.B,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(32,src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(32, src2, io.Pctrl.isSub,false.B)
        }.otherwise {
            add1 := DontCare
            add2 := DontCare
            add1_drophighestbit := DontCare
            add2_drophighestbit := DontCare
        }
    } else if (XLEN == 64) {
        when (io.Pctrl.isAdd_8 | io.Pctrl.isSub_8 | io.Pctrl.isComp_8 | io.Pctrl.isMaxMin_8 | io.Pctrl.isPbs) {
            val isSrcSigned = Mux(io.Pctrl.isMaxMin_8,!func(3).asBool,Mux(io.Pctrl.isPbs,false.B,io.Pctrl.SrcSigned))
            add1 := add_src_map(8, src1, 0.B,isSrcSigned,false.B)
            add2 := add_src_map(8, src2, io.Pctrl.isSub,isSrcSigned,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(8, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(8, src2, io.Pctrl.isSub,false.B)
        } .elsewhen (io.Pctrl.isAdd_16 | io.Pctrl.isSub_16 | io.Pctrl.isCras_16 | io.Pctrl.isCrsa_16 | io.Pctrl.isStas_16 | io.Pctrl.isStsa_16 | io.Pctrl.isComp_16 | io.Pctrl.isMaxMin_16 | io.Pctrl.isAdd_Q15 | io.Pctrl.isSub_Q15) {
            val realsrc1 = Mux(io.Pctrl.isAdd_Q15 | io.Pctrl.isSub_Q15,Cat(Fill(48,0.U),src1(15,0)),src1)
            val realsrc2 = Mux(io.Pctrl.isAdd_Q15 | io.Pctrl.isSub_Q15,Cat(Fill(48,0.U),src2(15,0)),src2)
            val isSrcSigned = Mux(io.Pctrl.isMaxMin_16 | io.Pctrl.isAdd_Q15 | io.Pctrl.isSub_Q15,!func(3).asBool,io.Pctrl.SrcSigned)
            val isCross = Mux(io.Pctrl.isCras_16 | io.Pctrl.isCrsa_16,true.B,false.B)
            add1 := add_src_map(16, realsrc1, 0.B,isSrcSigned,false.B)
            add2 := add_src_map(16, realsrc2, io.Pctrl.isSub,isSrcSigned,isCross)
            add1_drophighestbit := add_src_map_drophighestbit(16, realsrc1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(16, realsrc2, io.Pctrl.isSub,isCross)
        } .elsewhen (io.Pctrl.isAdd_32 | io.Pctrl.isSub_32 | io.Pctrl.isCras_32 | io.Pctrl.isCrsa_32 | io.Pctrl.isStas_32 | io.Pctrl.isStsa_32 | io.Pctrl.isMaxMin_32 | io.Pctrl.isAdd_Q31 | io.Pctrl.isSub_Q31 | io.Pctrl.isSub_C31 |io.Pctrl.isAdd_C31) {
            val realsrc1 = Mux(io.Pctrl.isAdd_Q31 | io.Pctrl.isSub_Q31 | io.Pctrl.isSub_C31 |io.Pctrl.isAdd_C31,Cat(Fill(32,0.U),src1(31,0)),src1)
            val realsrc2 = Mux(io.Pctrl.isAdd_Q31 | io.Pctrl.isSub_Q31 | io.Pctrl.isSub_C31 |io.Pctrl.isAdd_C31,Cat(Fill(32,0.U),src2(31,0)),src2)
            val isSrcSigned = Mux(io.Pctrl.isAdd_Q31 | io.Pctrl.isSub_Q31 | io.Pctrl.isSub_C31 |io.Pctrl.isAdd_C31,!func(3).asBool,Mux(io.Pctrl.isMaxMin_32,func(3).asBool,io.Pctrl.SrcSigned))
            val isCross = Mux(io.Pctrl.isCras_32 | io.Pctrl.isCrsa_32,true.B,false.B)
            add1 := add_src_map(32, realsrc1, 0.B,isSrcSigned,false.B)
            add2 := add_src_map(32, realsrc2, io.Pctrl.isSub,isSrcSigned,isCross)
            add1_drophighestbit := add_src_map_drophighestbit(32, realsrc1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(32, realsrc2, io.Pctrl.isSub,isCross)
        } .elsewhen (io.Pctrl.isAdd_64 | io.Pctrl.isSub_64 | io.Pctrl.isMaxMin_XLEN) {
            val isSrcSigned = Mux(io.Pctrl.isMaxMin_XLEN | io.Pctrl.isAve,true.B,io.Pctrl.SrcSigned)
            add1 := add_src_map(64, src1, 0.B,isSrcSigned,false.B)
            add2 := add_src_map(64,  src2, io.Pctrl.isSub,isSrcSigned,false.B)
            add1_drophighestbit := add_src_map_drophighestbit(64, src1, 0.B,false.B)
            add2_drophighestbit := add_src_map_drophighestbit(64, src2, io.Pctrl.isSub,false.B)
        }.otherwise {
            add1 := DontCare
            add2 := DontCare
            add1_drophighestbit := DontCare
            add2_drophighestbit := DontCare
        }
    } else {
        Debug(prefix = true, "Unexpected XLEN for VALU")
        add1 := DontCare
        add2 := DontCare
        add1_drophighestbit := DontCare
        add2_drophighestbit := DontCare
    }
    io.Pctrl.adderRes_ori := add1 +& add2
    io.Pctrl.adderRes_ori_drophighestbit := add1_drophighestbit +& add2_drophighestbit

    def gather_offset(width: Int, index: Int) = (width + 2) * index + width - 1
    
    def gather_offset_end(width: Int, index: Int) = gather_offset(width, index) - width + 1
    
    def adder_gather(adderRes_ori: UInt, width: Int) = {
        var l: List[UInt] = List(adderRes_ori(gather_offset(width, 0), gather_offset_end(width, 0)))
        if ((XLEN / width - 2) >= 0) {
            for (i <- 1 until XLEN / width) {
                l =  List.concat(List(adderRes_ori(gather_offset(width, i), gather_offset_end(width, i))), l)
            }
        }
        l.reduce(Cat(_, _))
    }

    when (io.Pctrl.isAdd_8 | io.Pctrl.isSub_8 | io.Pctrl.isPbs) {
        io.Pctrl.adderRes := adder_gather(io.Pctrl.adderRes_ori, 8)
    } .elsewhen (io.Pctrl.isAdd_16 | io.Pctrl.isSub_16 | io.Pctrl.isCras_16 | io.Pctrl.isCrsa_16 
    | io.Pctrl.isAdd_Q15 | io.Pctrl.isSub_Q15 | io.Pctrl.isStas_16 | io.Pctrl.isStsa_16) {
        io.Pctrl.adderRes := adder_gather(io.Pctrl.adderRes_ori, 16)
    } .elsewhen (io.Pctrl.isAdd_32 | io.Pctrl.isSub_32 | io.Pctrl.isCras_32 | io.Pctrl.isCrsa_32 | io.Pctrl.isAdd_Q31 
    | io.Pctrl.isSub_Q31 | io.Pctrl.isSub_C31 | io.Pctrl.isAdd_C31 | io.Pctrl.isStas_32 | io.Pctrl.isStsa_32) {
        io.Pctrl.adderRes := adder_gather(io.Pctrl.adderRes_ori, 32)
    } .elsewhen(io.Pctrl.isAdd_64 | io.Pctrl.isSub_64 | io.Pctrl.isAve) {
        io.Pctrl.adderRes := adder_gather(io.Pctrl.adderRes_ori, 64)
    } .otherwise {
        io.Pctrl.adderRes := DontCare
    }

    io.Pctrl.Round       :=((func(6,3) === "b0110".U &&(func(1) === 0.U || func(1,0) === "b11".U)
                    ||func(6,3) === "b0111".U && (func(2,1) === 0.U && func24.asBool || func(2,1) === 2.U && func23.asBool)) && funct3 === 0.U
                    ||(io.Pctrl.isRs_32 && (func(6,3) === 6.U || func(6,3) === 8.U) || io.Pctrl.isLR_32 && func(4).asBool)
                    ||(io.Pctrl.isLR_Q31 && func(3).asBool)
                    ||io.Pctrl.isRs_XLEN
                    ||io.Pctrl.isSRAIWU)
    io.Pctrl.ShiftSigned := (io.Pctrl.isLR_16 || io.Pctrl.isLR_8 || io.Pctrl.isLR_32 || io.Pctrl.isLR_Q31 || io.Pctrl.isLs_Q31 ||io.Pctrl.isLs_32 && (func(6,3) === 6.U || func(6,3) === 8.U) || (io.Pctrl.isLs_16 || io.Pctrl.isLs_8) && (func(6,3) === "b0110".U || func === "b0111010".U && func24.asBool || func === "b0111110".U && func23.asBool))
    io.Pctrl.Arithmetic  := (io.Pctrl.isRs_16 || io.Pctrl.isRs_8 || io.Pctrl.isRs_32) && func(0) === 0.U  || io.Pctrl.isLR_16 || io.Pctrl.isLR_8 || io.Pctrl.isLR_32 || io.Pctrl.isLR_Q31 || io.Pctrl.isRs_XLEN || io.Pctrl.isSRAIWU
}
