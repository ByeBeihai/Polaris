package nutcore

import chisel3._

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import bus.simplebus._
import top.Settings
import difftest._

class PALUIO extends NutCoreBundle {
    val in = Flipped(Decoupled(new Bundle{
        val DecodeIn = new DecodeIO
        val Pctrl = new PIDUIO
    }))
    val out = Decoupled(new Bundle{
        val result = Output(UInt(XLEN.W))
        val DecodeOut = new DecodeIO
  })
}

class PALU extends NutCoreModule with HasInstrType{
    val io = IO(new PALUIO)

    val valid = io.in.valid
    val src1  = io.in.bits.DecodeIn.data.src1
    val src2  = io.in.bits.DecodeIn.data.src2
    val src3  = io.in.bits.DecodeIn.data.src3
    val func  = io.in.bits.DecodeIn.ctrl.fuOpType
    val funct3= io.in.bits.DecodeIn.ctrl.funct3
    val func24= io.in.bits.DecodeIn.ctrl.func24
    val func23= io.in.bits.DecodeIn.ctrl.func23

    io.in.ready := !valid || io.out.fire()
    io.out.valid:= valid
    io.out.bits.DecodeOut := io.in.bits.DecodeIn
    
    val isAdd_64 = io.in.bits.Pctrl.isAdd_64
    val isAdd_32 = io.in.bits.Pctrl.isAdd_32
    val isAdd_16 = io.in.bits.Pctrl.isAdd_16
    val isAdd_8  = io.in.bits.Pctrl.isAdd_8
    val isAdd_Q15= io.in.bits.Pctrl.isAdd_Q15
    val isAdd_Q31= io.in.bits.Pctrl.isAdd_Q31
    val isAdd_C31= io.in.bits.Pctrl.isAdd_C31
    val isAve    = io.in.bits.Pctrl.isAve
    val isAdd = io.in.bits.Pctrl.isAdd

    val isSub_64 = io.in.bits.Pctrl.isSub_64
    val isSub_32 = io.in.bits.Pctrl.isSub_32
    val isSub_16 = io.in.bits.Pctrl.isSub_16
    val isSub_8  = io.in.bits.Pctrl.isSub_8
    val isSub_Q15= io.in.bits.Pctrl.isSub_Q15
    val isSub_Q31= io.in.bits.Pctrl.isSub_Q31
    val isSub_C31= io.in.bits.Pctrl.isSub_C31

    val isCras_16 = io.in.bits.Pctrl.isCras_16
    val isCrsa_16 = io.in.bits.Pctrl.isCrsa_16
    val isCras_32 = io.in.bits.Pctrl.isCras_32
    val isCrsa_32 = io.in.bits.Pctrl.isCrsa_32
    val isCr = io.in.bits.Pctrl.isCr

    val isStas_16 = io.in.bits.Pctrl.isStas_16
    val isStsa_16 = io.in.bits.Pctrl.isStsa_16
    val isStas_32 = io.in.bits.Pctrl.isStas_32
    val isStsa_32 = io.in.bits.Pctrl.isStsa_32
    val isSt = io.in.bits.Pctrl.isSt

    val isComp_16 = io.in.bits.Pctrl.isComp_16
    val isComp_8  = io.in.bits.Pctrl.isComp_8
    val isCompare = io.in.bits.Pctrl.isCompare

    val isMaxMin_16  = io.in.bits.Pctrl.isMaxMin_16
    val isMaxMin_8   = io.in.bits.Pctrl.isMaxMin_8
    val isMaxMin_XLEN= io.in.bits.Pctrl.isMaxMin_XLEN
    val isMaxMin_32  = io.in.bits.Pctrl.isMaxMin_32
    val isMaxMin     = io.in.bits.Pctrl.isMaxMin

    val isPbs     = io.in.bits.Pctrl.isPbs

    val isSub = io.in.bits.Pctrl.isSub

    val isAdder = io.in.bits.Pctrl.isAdder

    val SrcSigned   = io.in.bits.Pctrl.SrcSigned
    val Saturating  = io.in.bits.Pctrl.Saturating
    val Translation = io.in.bits.Pctrl.Translation
    val LessEqual   = io.in.bits.Pctrl.LessEqual
    val LessThan    = io.in.bits.Pctrl.LessThan
    
    def MixPrecisionLen = XLEN + XLEN / 8 + XLEN / 8
    def extender(SrcSigned:Bool,src:UInt,width:Int)={
        val a = WireInit(0.U(width.W))
        when(SrcSigned){
            a := SignExt(src,width)
        }.otherwise{
            a := ZeroExt(src,width)
        }
        a
    }
    
    val adderRes_ori = io.in.bits.Pctrl.adderRes_ori
    val adderRes = io.in.bits.Pctrl.adderRes
    val adderRes_ori_drophighestbit = io.in.bits.Pctrl.adderRes_ori_drophighestbit
    //val add1 = Wire(UInt(MixPrecisionLen.W))
    //val add2 = Wire(UInt(MixPrecisionLen.W))
    //val add1_drophighestbit = Wire(UInt(MixPrecisionLen.W))
    //val add2_drophighestbit = Wire(UInt(MixPrecisionLen.W))
    
    
    def gather_offset(width: Int, index: Int) = (width + 2) * index + width - 1
    
    def gather_offset_end(width: Int, index: Int) = gather_offset(width, index) - width + 1
    
    def Saturated_Check(adderRes_ori:UInt,adderRes_ori_drophighestbit:UInt,width: Int,SrcSigned:Bool,isSub:UInt)= {
        var l = List(0.U)
        val OV = WireInit(false.B)
        for(i <- 0 until XLEN/width){
            val tmp = Wire(UInt(1.W))
            val newbits = Wire(UInt(width.W))
            newbits := adderRes_ori(gather_offset(width, i),gather_offset_end(width, i))
            when(SrcSigned){
                tmp := adderRes_ori(gather_offset(width, i)+2) ^ adderRes_ori_drophighestbit(gather_offset(width, i))
                when(tmp.asBool){
                    when(adderRes_ori(gather_offset(width, i)+2)){
                        newbits := Cat(1.U,Fill(width-1,0.U))
                    }.otherwise{
                        newbits := Cat(0.U,Fill(width-1,1.U))
                    }
                    OV := true.B
                }
            }.otherwise{
                tmp := adderRes_ori(gather_offset(width, i)+1)
                when(tmp.asBool){
                    when(isSub(i)){
                        newbits := Fill(width,0.U)
                        OV := true.B
                    }.otherwise{
                        newbits := Fill(width,1.U)
                        OV := true.B
                    }
                }
            }
            l = List.concat(List(newbits) ,l)
        }
        Cat(OV.asUInt,l.dropRight(1).reduce(Cat(_, _)))
    }
    def AdderRes_Translation(adderRes_ori:UInt,width:Int) = {
        var l = List(0.U)
        for(i <- 0 until XLEN/width){
            val tmp = adderRes_ori(gather_offset(width, i)+1,gather_offset_end(width,i)) >> 1
            l = List.concat(List(tmp) ,l)
        }
        l.dropRight(1).reduce(Cat(_, _))
    }
    def Compare(adderRes_ori:UInt,width: Int,SrcSigned:Bool,LessEqual:Bool,LessThan:Bool) = {
        var l = List(0.U)
        for(i <- 0 until XLEN/width){
            val compare_res = WireInit(false.B)
            val islessthan = adderRes_ori(gather_offset(width, i)+1).asBool
            val isequal    = adderRes_ori(gather_offset(width, i), gather_offset_end(width, i)) === 0.U
            compare_res := Mux(LessThan,islessthan,Mux(LessEqual,islessthan || isequal,isequal))
            l = List.concat(List(Fill(width,compare_res.asUInt)) ,l)
        }
        l.dropRight(1).reduce(Cat(_, _))
    }

    def MaxMin(adderRes_ori:UInt,width: Int,src1:UInt,src2:UInt,LessThan:Bool) = {
        var l = List(0.U)
        for(i <- 0 until XLEN/width){
            val maxmin_res = WireInit(0.U(width.W))
            val islessthan = adderRes_ori(gather_offset(width, i)+1).asBool
            maxmin_res := Mux(!(islessthan^LessThan),src1(i*width+width-1,i*width),src2(i*width+width-1,i*width))
            l = List.concat(List(maxmin_res) ,l)
            Debug("[PALU] islessthan %x LessThan %x xor %x maxmin_res %x src1 %x src2 %x \n",islessthan,LessThan,!(islessthan^LessThan),maxmin_res,src1(i*width+width-1,i*width),src2(i*width+width-1,i*width))
        }
        l.dropRight(1).reduce(Cat(_, _))
    }    

    val adderOV = WireInit(false.B)
    val adderRes_final = WireInit(adderRes)
    when(isAdd_16 | isSub_16 | isCras_16 | isCrsa_16 | isStas_16 | isStsa_16 | isAdd_Q15| isSub_Q15){
        when(Saturating | isAdd_Q15 | isSub_Q15){
            val isSrcSigned =Mux(isAdd_Q15| isSub_Q15,!func(3).asBool,SrcSigned)
            val Saturated_Check_Res = Saturated_Check(adderRes_ori,adderRes_ori_drophighestbit,16,isSrcSigned,isSub)
            adderRes_final := Mux(isAdd_Q15 | isSub_Q15,SignExt(Saturated_Check_Res(15,0),XLEN),Saturated_Check_Res(XLEN-1,0))
            adderOV := Saturated_Check_Res(XLEN).asBool
        }.elsewhen(Translation){
            adderRes_final := AdderRes_Translation(adderRes_ori,16)
        }
    }.elsewhen(isAdd_8 | isSub_8){
        when(Saturating){
            val Saturated_Check_Res = Saturated_Check(adderRes_ori,adderRes_ori_drophighestbit,8,SrcSigned,isSub)
            adderRes_final := Saturated_Check_Res(XLEN-1,0)
            adderOV := Saturated_Check_Res(XLEN).asBool
        }.elsewhen(Translation){
            adderRes_final := AdderRes_Translation(adderRes_ori,8)
        }
    }.elsewhen(isAdd_32 | isSub_32 | isCras_32 | isCrsa_32 | isStas_32 | isStsa_32 | isAdd_Q31 | isSub_Q31){
        when(Saturating | isAdd_Q31 | isSub_Q31){
            val isSrcSigned =Mux(isAdd_Q31 | isSub_Q31,!func(3).asBool,SrcSigned)
            val Saturated_Check_Res = Saturated_Check(adderRes_ori,adderRes_ori_drophighestbit,32,isSrcSigned,isSub)
            adderRes_final := Mux(isAdd_Q31 | isSub_Q31,SignExt(Saturated_Check_Res(31,0),XLEN),Saturated_Check_Res(XLEN-1,0))
            adderOV := Saturated_Check_Res(XLEN).asBool
        }.elsewhen(Translation){
            adderRes_final := AdderRes_Translation(adderRes_ori,32)
        }
    }.elsewhen(isAdd_64 | isSub_64){
        when(Saturating){
            val Saturated_Check_Res = Saturated_Check(adderRes_ori,adderRes_ori_drophighestbit,64,SrcSigned,isSub)
            adderRes_final := Saturated_Check_Res(XLEN-1,0)
            adderOV := Saturated_Check_Res(XLEN).asBool
        }.elsewhen(Translation){
            adderRes_final := AdderRes_Translation(adderRes_ori,64)
        }
    }.elsewhen(isSub_C31 |isAdd_C31){
        adderRes_final := SignExt(AdderRes_Translation(adderRes_ori,32)(31,0),XLEN)
    }.elsewhen(isAve){
        adderRes_final := (adderRes_ori+&1.U)(XLEN,1)
    }

    val compareOV = WireInit(false.B)
    val compareRes = WireInit(0.U(XLEN.W))
    when(isComp_16){
        compareRes := Compare(adderRes_ori,16,SrcSigned,LessEqual,LessThan)
    }.elsewhen(isComp_8){
        compareRes := Compare(adderRes_ori,8,SrcSigned,LessEqual,LessThan)
    }

    val maxminOV = WireInit(false.B)
    val maxminRes = WireInit(0.U(XLEN.W))
    when(isMaxMin_16){
        maxminRes := MaxMin(adderRes_ori,16,src1,src2,!func(0).asBool)
    }.elsewhen(isMaxMin_8){
        maxminRes := MaxMin(adderRes_ori,8 ,src1,src2,!func(0).asBool)
    }.elsewhen(isMaxMin_XLEN){
        maxminRes := MaxMin(adderRes_ori,XLEN ,src1,src2,!funct3(1).asBool)
    }.elsewhen(isMaxMin_32){
        maxminRes := MaxMin(adderRes_ori,32,src1,src2,!func(0).asBool)
    }

    val pbsOV  = WireInit(false.B)
    val pbsRes = WireInit(0.U(XLEN.W))
    when(isPbs){
        pbsRes := Mux(func(0).asBool,src3,0.U) + (0 until XLEN/8).map(i => Mux(adderRes_ori(gather_offset(8, i)+1),(Fill(8,1.U)^adderRes(i*8+8-1,i*8))+1.U,adderRes(i*8+8-1,i*8))).reduce(_+&_)
    }


    Debug("[PALU] src1 %x src2 %x func %x is_Add8 %x is_Sub8 %x is_Add16 %x isSub_16 %x isCras_16 %x isCrsa_16 %x SrcSigned %x Saturating %x Translation %x \n",src1,src2,func,isAdd_8,isSub_8,isAdd_16,isSub_16,isCras_16,isCrsa_16,SrcSigned,Saturating,Translation)
    Debug("[PALU] isAdd_32 %x isSub_32 %x isCras_32 %x isCrsa_32 %x isAdd_64 %x isSub_64 %x \n",isAdd_32,isSub_32,isCras_32,isCrsa_32,isAdd_64,isSub_64)
    //Debug("[PALU] add1 %x add2 %x add1drop %x add2drop %x adderRes_ori %x adderRes_oridrop %x \n",add1,add2,add1_drophighestbit,add2_drophighestbit,adderRes_ori,adderRes_ori_drophighestbit)
    Debug("[PALU] addres %x adderRes_final %x adderOV %x \n",adderRes,adderRes_final,adderOV)

    Debug("[PALU] isComp_16 %x LessThan %x LessEqual %x compareRes %x \n",isComp_16,LessThan,LessEqual,compareRes)

    //shift ops
    val isRs_16 = io.in.bits.Pctrl.isRs_16
    val isLs_16 = io.in.bits.Pctrl.isLs_16
    val isLR_16 = io.in.bits.Pctrl.isLR_16
    val isRs_8  = io.in.bits.Pctrl.isRs_8
    val isLs_8  = io.in.bits.Pctrl.isLs_8
    val isLR_8  = io.in.bits.Pctrl.isLR_8
    val isRs_32 = io.in.bits.Pctrl.isRs_32
    val isLs_32 = io.in.bits.Pctrl.isLs_32
    val isLR_32 = io.in.bits.Pctrl.isLR_32
    val isLR_Q31= io.in.bits.Pctrl.isLR_Q31
    val isLs_Q31= io.in.bits.Pctrl.isLs_Q31
    val isRs_XLEN = io.in.bits.Pctrl.isRs_XLEN
    val isSRAIWU= io.in.bits.Pctrl.isSRAIWU
    val isFSRW  = io.in.bits.Pctrl.isFSRW
    val isWext  = io.in.bits.Pctrl.isWext
    val isShifter = io.in.bits.Pctrl.isShifter

    val Round       = io.in.bits.Pctrl.Round
    val ShiftSigned = io.in.bits.Pctrl.ShiftSigned
    val Arithmetic  = io.in.bits.Pctrl.Arithmetic

    val isClip_16 = io.in.bits.Pctrl.isClip_16
    val isClip_8  = io.in.bits.Pctrl.isClip_8
    val isclip_32 = io.in.bits.Pctrl.isclip_32
    val isClip = io.in.bits.Pctrl.isClip

    val isSat_16  = io.in.bits.Pctrl.isSat_16
    val isSat_8   = io.in.bits.Pctrl.isSat_8
    val isSat_32  = io.in.bits.Pctrl.isSat_32
    val isSat_W   = io.in.bits.Pctrl.isSat_W
    val isSat     = io.in.bits.Pctrl.isSat

    val isCnt_16  = io.in.bits.Pctrl.isCnt_16
    val isCnt_8   = io.in.bits.Pctrl.isCnt_8
    val isCnt_32  = io.in.bits.Pctrl.isCnt_32
    val isCnt     = io.in.bits.Pctrl.isCnt

    val isSwap_16 = io.in.bits.Pctrl.isSwap_16
    val isSwap_8  = io.in.bits.Pctrl.isSwap_8
    val isSwap    = io.in.bits.Pctrl.isSwap

    val isUnpack  = io.in.bits.Pctrl.isUnpack

    val isBitrev  = io.in.bits.Pctrl.isBitrev

    val isCmix    = io.in.bits.Pctrl.isCmix

    val isInsertb = io.in.bits.Pctrl.isInsertb

    val isPackbb  = io.in.bits.Pctrl.isPackbb
    val isPackbt  = io.in.bits.Pctrl.isPackbt
    val isPacktb  = io.in.bits.Pctrl.isPacktb
    val isPacktt  = io.in.bits.Pctrl.isPacktt
    val isPack    = io.in.bits.Pctrl.isPack

    def shifter(width: Int, src1:UInt, src2:UInt, Round:Bool, ShiftSigned:Bool,Righshift:Bool,Arithmetic:Bool) = {
        var l = List(0.U)
        val OV= Wire(Vec(XLEN/width,Bool()))
        (0 until XLEN/width).map(i => OV(i) := false.B)
        for(i <- 0 until XLEN/width){
            val src1_clip = src1(i * width + width -1,i * width)
            val res = Wire(UInt(width.W))
            res := src1_clip
            when(src2 =/= 0.U){
                when(Righshift){
                    val src1_cat = WireInit(src1_clip)
                    val src2_cat = WireInit(src2)
                    val tmp      = Wire(UInt(width.W))
                    when(Round){src2_cat := src2 -1.U}
                    when(Arithmetic){
                        tmp := (src1_cat.asSInt >> src2_cat).asUInt
                    }.otherwise{
                        tmp := src1_cat >> src2_cat
                    }
                    when(Round){
                        res := (extender(Arithmetic,tmp,width+1) + 1.U)(width,1).asUInt
                    }.otherwise{
                        res := tmp.asUInt
                    }
                    Debug("[PALUrightshift] src1_cat %x src2 %x src2_cat %x tmp %x res %x\n",src1_cat,src2,src2_cat,tmp,res)
                }.otherwise{
                    val tmp = Cat(Fill(width,src1_clip(width-1)),src1_clip)
                    val tmp1= tmp << src2
                    res := tmp1(width-1,0)
                    when(ShiftSigned){
                        val tmp2= WireInit(tmp1)
                        when(tmp1(2*width-1).asBool){tmp2 := Fill(2*width,1.U) ^ tmp1}
                        when(tmp2(2*width-1,width-1) =/= 0.U){
                            OV(i):= 1.U
                            when(tmp1(2*width-1).asBool){
                                res := Cat(1.U,Fill(width-1,0.U))
                            }.otherwise{
                                res := Cat(0.U,Fill(width-1,1.U))
                            }
                        }
                    Debug("[PALU] tmp %x tmp1 %x tmp2 %x tmp2(2*width-1,width-1) %x OV %x\n",tmp,tmp1,tmp2,tmp2(2*width-1,width-1),OV(i))
                    }
                    Debug("[PALU] tmp %x tmp1 %x \n",tmp,tmp1)
                }
            }
            l = List.concat(List(res) ,l)
        }
        Cat(OV.reduce(_||_).asUInt,l.dropRight(1).reduce(Cat(_, _))).asUInt
    }
    def SetSrc2(width: Int,src2:UInt,isLR:Bool) = {
        val realSrc2 = WireInit(src2(log2Up(width)-1,0))
        when(isLR){
            when(src2(log2Up(width)-1).asBool){
                val tmp = (Fill(log2Up(width),1.U) ^ src2(log2Up(width)-1,0)) + 1.U
                realSrc2 := tmp
                when(tmp === Cat(1.U,Fill(log2Up(width)-1,0.U))){
                    realSrc2 := Cat(0.U,Fill(log2Up(width)-1,1.U))
                }
            }
        }
        Cat(src2(log2Up(width)-1),realSrc2).asUInt
    }
    def cliper(width: Int, src1:UInt, src2:UInt,Arithmetic:Bool)={
        var l = List(0.U)
        val OV= Wire(Vec(XLEN/width,Bool()))
        (0 until XLEN/width).map(i => OV(i) := false.B)
        for(i <- 0 until XLEN/width){
            val res = WireInit(src1(i * width+width-1,i*width))
            val tmp0 = WireInit(src1(i * width+width-1,i*width))
            when(Arithmetic){
                tmp0 := Fill(width,src1(i*width+width-1))^src1(i * width+width-1,i*width)
            }.otherwise{
                tmp0 := src1(i * width+width-1,i*width)
            }
            val tmp = tmp0 >> src2
            val saturating = (Fill(width,1.U)<<src2).asTypeOf(UInt(width.W))
            when(tmp =/= 0.U && Arithmetic){
                OV(i) := true.B
                res := Mux(src1(i*width+width-1),saturating,Fill(width,1.U)^saturating)
            }.elsewhen(!Arithmetic && tmp =/= 0.U){
                OV(i) := true.B
                res := Mux(src1(i*width+width-1),0.U,Fill(width,1.U)^saturating)  
            }
            l = List.concat(List(res) ,l)
            Debug("[PALU]CLIPER tmp0 %x tmp %x Arithmetic %x \n",tmp0,tmp,Arithmetic)
        }
        Cat(OV.reduce(_||_).asUInt,l.dropRight(1).reduce(Cat(_, _))).asUInt
    }
    def saturator(width: Int, src1:UInt)={
        var l = List(0.U)
        val OV= Wire(Vec(XLEN/width,Bool()))
        (0 until XLEN/width).map(i => OV(i) := false.B)
        for(i <- 0 until XLEN/width){
            val res = WireInit(src1(i * width+width-1,i*width))
            val tmp = src1(i * width+width-1,i*width)
            when(tmp === Cat(1.U,Fill(width-1,0.U))){
                OV(i) := true.B
                res   := Cat(0.U,Fill(width-1,1.U))
            }.elsewhen(tmp(width-1).asBool){
                res   := (Fill(width,1.U)^tmp) + 1.U
            }
            l = List.concat(List(res) ,l)
        }
        Cat(OV.reduce(_||_).asUInt,l.dropRight(1).reduce(Cat(_, _))).asUInt
    }
    def counter(width:Int,src1:UInt,countzero:Bool)={
        var l = List(0.U)
        for(i <- 0 until XLEN/width){
            val clip = src1(i*width+width-1,i*width)
            val sample = Mux(countzero,0.U,clip(width-1))
            val compare = Wire(Vec(width,Bool()))
            (0 to width-1).map(i => compare(i) := clip(i) === sample)
            val result = Wire(Vec(width,UInt(1.W)))
            (0 to width-1).map(i => result(i) := {if(i == 0){compare(width-1-i).asUInt}else{(compare(width-1-i) && result(i-1).asBool).asUInt}})
            val tmp = result.reduce(_+&_)
            val res = Mux(countzero,tmp,tmp-1.U)
            l = List.concat(List(res) ,l)
        }
        l.dropRight(1).reduce(Cat(_, _))
    }
    def swaper(width:Int,sr1:UInt,src2:UInt,mode:UInt)={
        var l = List(0.U)
        for(i <- 0 until XLEN/width/2){
            val res = WireInit(0.U.asTypeOf(Vec(2,UInt(width.W))))
            val tmp1= src1(i * width * 2 + 2 * width -1,i * width * 2)
            val tmp2= src2(i * width * 2 + 2 * width -1,i * width * 2)
            when(mode === 0.U){
                res(1) := tmp1.asTypeOf(Vec(2,UInt(width.W)))(0)
                res(0) := tmp2.asTypeOf(Vec(2,UInt(width.W)))(0)
            }.elsewhen(mode === 1.U){
                res(1) := tmp1.asTypeOf(Vec(2,UInt(width.W)))(0)
                res(0) := tmp2.asTypeOf(Vec(2,UInt(width.W)))(1)
                Debug("[PALU] swaper 111 tmp1 %x tmp2 %x \n",tmp1.asTypeOf(Vec(2,UInt(width.W)))(0),tmp2.asTypeOf(Vec(2,UInt(width.W)))(1))
            }.elsewhen(mode === 3.U){
                res(1) := tmp1.asTypeOf(Vec(2,UInt(width.W)))(1)
                res(0) := tmp2.asTypeOf(Vec(2,UInt(width.W)))(0)
            }.elsewhen(mode === 2.U){
                res(1) := tmp1.asTypeOf(Vec(2,UInt(width.W)))(1)
                res(0) := tmp2.asTypeOf(Vec(2,UInt(width.W)))(1)
            }
            Debug("[PALU] swaper mode %x tmp1 %x tmp2 %x res %x \n",mode,tmp1,tmp2,Cat(res(1),res(0)))
            l = List.concat(List(Cat(res(1),res(0))) ,l)
        }
        l.dropRight(1).reduce(Cat(_, _))
    }
    def unpacker(sr1:UInt,mode:UInt,SrcSigned:Bool)={
        var l = List(0.U)
        for(i <- 0 until XLEN/32){
            val res = WireInit(0.U.asTypeOf(Vec(2,UInt(16.W))))
            val tmp = src1(i*32+32-1,i*32)
            res(1) := Mux(mode === "b01000".U,extender(SrcSigned,tmp.asTypeOf(Vec(4,UInt(8.W)))(1),16),Mux(mode === "b01001".U,extender(SrcSigned,tmp.asTypeOf(Vec(4,UInt(8.W)))(2),16),extender(SrcSigned,tmp.asTypeOf(Vec(4,UInt(8.W)))(3),16)))
            res(0) := Mux(mode === "b10011".U,extender(SrcSigned,tmp.asTypeOf(Vec(4,UInt(8.W)))(2),16),Mux(mode === "b01011".U,extender(SrcSigned,tmp.asTypeOf(Vec(4,UInt(8.W)))(1),16),extender(SrcSigned,tmp.asTypeOf(Vec(4,UInt(8.W)))(0),16)))
        l = List.concat(List(Cat(res(1),res(0))) ,l)
        }
        l.dropRight(1).reduce(Cat(_, _))
    }
    def bitrev(src1:UInt,src2:UInt) = {
        val space = WireInit(0.U((2*XLEN).W))
            space:= Cat(Fill(64,0.U),Reverse(src1))
        ((space << src2) << 1.U)(XLEN+XLEN-1,XLEN)
    }
    def cmix(src1:UInt,src2:UInt,src3:UInt) = {
        val space = Wire(Vec(XLEN,UInt(1.W)))
        (0 until XLEN).map(i => space(i):=Mux(src2(i).asBool,src1(i),src3(i)))
        Debug("[PALUCMIX] src1 %x src2 %x src3 %x space %x\n",src1,src2,src3,space.reduce(Cat(_,_)))
        Reverse(space.reduce(Cat(_,_)))
    }
    def insertb(src1:UInt,src2:UInt,src3:UInt) = {
        var l = List(0.U)
        for(i <- 0 until XLEN/8){
            val tmp = WireInit(src3(i*8+8-1,i*8))
            when(i.U === src2){
                tmp := src1(7,0)
            }
            l= List.concat(List(tmp),l)
            Debug("[PALUINSB] tmp %x\n",tmp)
        }
        Debug("[PALUINSB] src1 %x src2 %x src3 %x\n",src1,src2,src3)
        l.dropRight(1).reduce(Cat(_,_))
    }

    val shifterRes = WireInit(src1)
    val shifterOV  = WireInit(false.B)

    when(isRs_16 | isLs_16 |isLR_16){
        val tmp = WireInit(0.U(64.W))
            tmp:= Mux(isLR_16,SetSrc2(32,src2,true.B),SetSrc2(16,src2,false.B))
        val realSrc2 = Mux(isLR_16,tmp(log2Up(32)-1,0), tmp(log2Up(16)-1,0))
        val isLR_do_rightshift = tmp(log2Up(32))
        val tmp2 = shifter(16,src1,realSrc2,Round,ShiftSigned,isRs_16||isLR_16 && isLR_do_rightshift.asBool,Arithmetic)
        shifterRes := tmp2(XLEN-1,0).asUInt
        shifterOV  := tmp2(XLEN).asBool
    }.elsewhen(isRs_8 | isLs_8 |isLR_8){
        val tmp = WireInit(0.U(64.W))
            tmp:= Mux(isLR_8,SetSrc2(16,src2,true.B),SetSrc2(8,src2,false.B))
        val realSrc2 = Mux(isLR_8,tmp(log2Up(16)-1,0), tmp(log2Up(8)-1,0))
        val isLR_do_rightshift = tmp(log2Up(16))
        val tmp2 = shifter(8,src1,realSrc2,Round,ShiftSigned,isRs_8||isLR_8 && isLR_do_rightshift.asBool,Arithmetic)
        shifterRes := tmp2(XLEN-1,0).asUInt
        shifterOV  := tmp2(XLEN).asBool
        Debug("[PALU] isLR_do_rightshift %x tmp %x realSrc2 %x tmp2 %x \n",isLR_do_rightshift,tmp,realSrc2,tmp2)
    }.elsewhen(isRs_32 | isLs_32 | isLR_32 | isLs_Q31 | isLR_Q31 | isSRAIWU){
        val tmp = WireInit(0.U(64.W))
            tmp:= Mux(isLR_Q31 | isLR_32,SetSrc2(64,src2,true.B),SetSrc2(32,src2,false.B))
        val realSrc2 = Mux(isLR_Q31 | isLR_32,tmp(log2Up(64)-1,0),tmp(log2Up(32)-1,0))
        val isLR_do_rightshift = tmp(log2Up(64))
        val tmp2 = shifter(32,Mux(isLR_Q31 | isLs_Q31,ZeroExt(src1(31,0),XLEN),src1),realSrc2,Round,ShiftSigned,isSRAIWU||isRs_32||(isLR_32 || isLR_Q31) && isLR_do_rightshift.asBool,Arithmetic)
        shifterRes := Mux(isLs_Q31 | isLR_Q31 | isSRAIWU,SignExt(tmp2(31,0),XLEN),tmp2(XLEN-1,0).asUInt)
        shifterOV  := tmp2(XLEN).asBool
        Debug("[PALU] isLs_Q31 %x isLR_Q31 %x isLR_do_rightshift %x tmp %x realSrc2 %x \n",isLs_Q31,isLR_Q31,isLR_do_rightshift,tmp,realSrc2)
    }.elsewhen(isRs_XLEN | isFSRW | isWext){
        val tmp = SetSrc2(XLEN,src2,false.B)
        val realSrc2 = Mux(isRs_XLEN,tmp(log2Up(XLEN)-1,0),tmp(log2Up(32)-1,0))
        val tmp2 = shifter(XLEN,Mux(isFSRW,Mux(tmp(log2Up(32)).asBool,Cat(src1(31,0),src3(31,0)),Cat(src3(31,0),src1(31,0))),src1),realSrc2,Mux(isRs_XLEN,Round,false.B),Mux(isRs_XLEN,ShiftSigned,false.B),true.B,Mux(isRs_XLEN,Arithmetic,false.B))
        shifterRes := Mux(isRs_XLEN,tmp2(XLEN-1,0).asUInt,SignExt(tmp2(32-1,0).asUInt,64))
        shifterOV  := tmp2(XLEN).asBool
    }
    val clipRes = WireInit(src1)
    val clipOV  = WireInit(false.B)
    when(isClip_16){
        val tmp = cliper(16,src1,src2(3,0),!func24)
        clipRes := tmp(XLEN-1,0)
        clipOV  := tmp(XLEN)
    }.elsewhen(isClip_8){
        val tmp = cliper(8,src1,src2(2,0),!func24)
        clipRes := tmp(XLEN-1,0)
        clipOV  := tmp(XLEN)
    }.elsewhen(isclip_32){
        val tmp = cliper(32,src1,src2(4,0),!func(3))
        clipRes := tmp(XLEN-1,0)
        clipOV  := tmp(XLEN)
    }

    val satRes = WireInit(src1)
    val satOV  = WireInit(false.B)
    when(isSat_16){
        val tmp = saturator(16,src1)
        satRes := tmp(XLEN-1,0)
        satOV  := tmp(XLEN)
    }.elsewhen(isSat_8){
        val tmp = saturator(8,src1)
        satRes := tmp(XLEN-1,0)
        satOV  := tmp(XLEN)
    }.elsewhen(isSat_32 | isSat_W){
        val tmp = saturator(32,Mux(isSat_W,ZeroExt(src1(31,0),XLEN),src1))
        satRes := Mux(isSat_W,SignExt(tmp(31,0),XLEN),tmp(XLEN-1,0))
        satOV  := tmp(XLEN)
    }

    val unpackRes = WireInit(src1)
    val unpackOV  = WireInit(false.B)
    when(isUnpack){
        unpackRes := unpacker(src1,src2(4,0)&"b11011".U,!src2(2).asBool)
    }

    val cntRes = WireInit(src1)
    val cntOV  = WireInit(false.B)
    when(isCnt_16){
        val tmp = counter(16,src1,src2(0))
        cntRes := tmp(XLEN-1,0)
    }.elsewhen(isCnt_8){
        val tmp = counter(8,src1,src2(0))
        cntRes := tmp(XLEN-1,0)
    }.elsewhen(isCnt_32){
        val tmp = counter(32,src1,src2(0))
        cntRes := tmp(XLEN-1,0)
    }

    val swapRes= WireInit(src1)
    val swapOV = WireInit(false.B)
    when(isSwap_16){
        swapRes := swaper(16,src1,src2,func(4,3))
    }.elsewhen(isSwap_8){
        swapRes := swaper(8,src1,src1,"b01".U)
    }

    val bitrevRes= WireInit(src1)
    val bitrevOV = WireInit(false.B)
    when(isBitrev){
        bitrevRes := Reverse(src1)(XLEN-1,0)
    }

    val cmixRes= WireInit(src1)
    val cmixOV = WireInit(false.B)
    when(isCmix){
        cmixRes := cmix(src1,src2,src3)
    }

    val insbRes= WireInit(src1)
    val insbOV = WireInit(false.B)
    when(isInsertb){
        insbRes := insertb(src1,src2(log2Up(XLEN/8)-1,0),src3)
    }

    val packRes= WireInit(src1)
    val packOV = WireInit(false.B)
    when(isPack){
        val bottom = Mux(isPackbb || isPacktb,src2(31,0),src2(63,32))
        val top    = Mux(isPackbb || isPackbt,src1(31,0),src1(63,32))
        packRes := Mux(isPackbb||isPacktt,Cat(bottom,top),Cat(top,bottom))
    }

    when(isPack){
        io.out.bits.result := packRes
        io.out.bits.DecodeOut.pext.OV := packOV
    }.elsewhen(isMaxMin){
        io.out.bits.result := maxminRes
        io.out.bits.DecodeOut.pext.OV := maxminOV
    }.elsewhen(isSwap){
        io.out.bits.result := swapRes
        io.out.bits.DecodeOut.pext.OV := swapOV
    }.elsewhen(isCmix){
        io.out.bits.result := cmixRes
        io.out.bits.DecodeOut.pext.OV := cmixOV
    }.elsewhen(isAdder){
        io.out.bits.result := adderRes_final
        io.out.bits.DecodeOut.pext.OV := adderOV
    }.elsewhen(isShifter){
        io.out.bits.result := shifterRes
        io.out.bits.DecodeOut.pext.OV := shifterOV
    }.elsewhen(isCompare){
        io.out.bits.result := compareRes
        io.out.bits.DecodeOut.pext.OV := compareOV
    }.elsewhen(isClip){
        io.out.bits.result := clipRes
        io.out.bits.DecodeOut.pext.OV := clipOV
    }.elsewhen(isSat){
        io.out.bits.result := satRes
        io.out.bits.DecodeOut.pext.OV := satOV
    }.elsewhen(isCnt){
        io.out.bits.result := cntRes
        io.out.bits.DecodeOut.pext.OV := cntOV
    }.elsewhen(isUnpack){
        io.out.bits.result := unpackRes
        io.out.bits.DecodeOut.pext.OV := unpackOV
    }.elsewhen(isPbs){
        io.out.bits.result := pbsRes
        io.out.bits.DecodeOut.pext.OV := pbsOV
    }.elsewhen(isBitrev){
        io.out.bits.result := bitrevRes
        io.out.bits.DecodeOut.pext.OV := bitrevOV
    }.elsewhen(isInsertb){
        io.out.bits.result := insbRes
        io.out.bits.DecodeOut.pext.OV := insbOV
    }.otherwise{
        io.out.bits.result := adderRes_final
        io.out.bits.DecodeOut.pext.OV := adderOV
    }
    Debug("[PALU] isRs_16 %x isLs_16 %x isLR_16 %x isRs_8 %x isLs_16 %x isLR_8 %x isRs_32 %x isLs_32 %x isLR_32 %x\n",isRs_16,isLs_16,isLR_16,isRs_8,isLs_8,isLR_8,isRs_32,isLs_32,isLR_32)
    Debug("[PALU] Round %x ShiftSigned %x Arithmetic %x\n",Round,ShiftSigned,Arithmetic)
    Debug("[PALU] shifterRes %x shifterOV %x \n",shifterRes,shifterOV)
    Debug("[PALU] MaxMinRes %x maxminOV %x \n",maxminRes,maxminOV)
    Debug("[PALU] isAdder %x isShifter %x isCompare %x isMaxMin %x\n",isAdder,isShifter,isCompare,isMaxMin)
}

