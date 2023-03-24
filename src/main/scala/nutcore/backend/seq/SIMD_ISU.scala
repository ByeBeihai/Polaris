package nutcore

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import difftest._

class SIMD_ISU(implicit val p:NutCoreConfig)extends NutCoreModule with HasRegFileParameter{
    val io = IO(new Bundle{
        val in = Vec(2,Flipped(Decoupled(new DecodeIO)))
        val out = Vec(Issue_Num,Decoupled(new DecodeIO))
        val wb = Flipped(new SIMD_WriteBackIO)
        val forward = Vec(Issue_Num,Flipped(new ForwardIO))
        val flush = Input(Bool())
    })
    for(i<-0 to Issue_Num-1){
        io.out(i):=DontCare
    }
    val sb = new ScoreBoard
    val InstBoard = Module(new InstBoard)
    val q = Module(new InstQueue)

    val rfSrc1 = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.rfSrc1))
    val rfSrc2 = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.rfSrc2))
    val rfDest = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.rfDest))
    val rfWen  = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.rfWen ))

    def isDepend(rfSrc: UInt, rfDest: UInt, wen: Bool): Bool = (rfSrc =/= 0.U) && (rfSrc === rfDest) && wen
    def isCsrMouOp(i:Int):Bool = io.in(i).bits.ctrl.fuType === FuType.csr
    def HasEnoughOperator(futype:UInt):Bool = futype === FuType.alu
    def isLatestData(rfSrc: UInt,InstNo:UInt):Bool = InstBoard.io.RInstNo(rfSrc) === InstNo

    val forwardRfWen = VecInit((0 to Issue_Num-1).map(i => io.forward(i).wb.rfWen && io.forward(i).valid))
    val src1DependEX = VecInit((0 to Issue_Num-1).map(i=>VecInit((0 to Issue_Num-1).map(j => isLatestData(rfSrc1(i),io.forward(j).InstNo) && isDepend(rfSrc1(i), io.forward(j).wb.rfDest, forwardRfWen(j))))))
    val src2DependEX = VecInit((0 to Issue_Num-1).map(i=>VecInit((0 to Issue_Num-1).map(j => isLatestData(rfSrc2(i),io.forward(j).InstNo) && isDepend(rfSrc2(i), io.forward(j).wb.rfDest, forwardRfWen(j))))))
    val src1DependWB = VecInit((0 to Issue_Num-1).map(i=>VecInit((0 to Issue_Num-1).map(j => isLatestData(rfSrc1(i),io.wb.InstNo(j)) && isDepend(rfSrc1(i), io.wb.rfDest(j), io.wb.rfWen(j))))))
    val src2DependWB = VecInit((0 to Issue_Num-1).map(i=>VecInit((0 to Issue_Num-1).map(j => isLatestData(rfSrc2(i),io.wb.InstNo(j)) && isDepend(rfSrc2(i), io.wb.rfDest(j), io.wb.rfWen(j))))))

    val src1Ready = VecInit((0 to Issue_Num-1).map(i => !sb.isBusy(rfSrc1(i))||src1DependEX(i).reduce(_||_)||src1DependWB(i).reduce(_||_)))
    val src2Ready = VecInit((0 to Issue_Num-1).map(i => !sb.isBusy(rfSrc2(i))||src2DependEX(i).reduce(_||_)||src2DependWB(i).reduce(_||_)))

    val RAWinIssue = VecInit((0 to Issue_Num-1).map(i => {val raw = Wire(Vec(Issue_Num,Bool())) 
                                                        for(j <- 0 to i-1){
                                                                raw(j) := io.in(j).valid && (isDepend(rfSrc1(i),rfDest(j),rfWen(j))||isDepend(rfSrc2(i),rfDest(j),rfWen(j)))
                                                        }
                                                        for(j <- i to Issue_Num-1){
                                                                raw(j) := false.B 
                                                        }
                                                        raw.reduce(_||_)}))
    val FightforOperator = VecInit((0 to Issue_Num-1).map(i => {val raw = Wire(Vec(Issue_Num,Bool()))  
                                                            for(j <- 0 to i-1){
                                                                raw(j) := io.in(j).valid && (io.in(j).bits.ctrl.fuType === io.in(i).bits.ctrl.fuType) && !HasEnoughOperator(io.in(j).bits.ctrl.fuType)
                                                            }
                                                            for(j <- i to Issue_Num-1){
                                                                raw(j) := false.B 
                                                            }
                                                            raw.reduce(_||_)}))

    val FrontHasCsrMouOp = VecInit((0 to Issue_Num-1).map(i => {val raw = Wire(Vec(Issue_Num,Bool())) 
                                                            for(j <- 0 to i-1){
                                                                raw(j) := io.in(j).valid && io.in(j).bits.ctrl.fuType === FuType.csr
                                                            }
                                                            for(j <- i to Issue_Num-1){
                                                                raw(j) := false.B 
                                                            }
                                                            raw.reduce(_||_)}))
    val FrontisClear = VecInit((0 to Issue_Num-1).map(i => {val raw = Wire(Vec(Issue_Num,Bool())) 
                                                            for(j <- 0 to i-1){
                                                                raw(j) := !io.in(j).valid && io.out(j).ready
                                                            }
                                                            for(j <- i to Issue_Num-1){
                                                                raw(j) := false.B 
                                                            }
                                                            raw.reduce(_||_)}))

    for(i <- 0 to Issue_Num-1){
        if(i == 0){
            io.out(i).valid := io.in(i).valid && src1Ready(i) && src2Ready(i)
        }else{
            io.out(i).valid := io.in(i).valid && src1Ready(i) && src2Ready(i) && !RAWinIssue(i) && !FightforOperator(i) && !FrontHasCsrMouOp(i) && !(isCsrMouOp(i) && !FrontisClear(i))
        }
    }

    io.in(0).ready := VecInit((0 to Issue_Num-1).map(i => !io.in(i).valid||io.out(i).fire())).reduce(_&&_)
    io.in(1).ready := false.B

    for(i <- 0 to Issue_Num-1){
        io.out(i).bits.data.src1 := Mux1H(List(
        (io.in(i).bits.ctrl.src1Type === SrcType.pc) -> SignExt(io.in(i).bits.cf.pc, AddrBits),
        src1DependEX(i).reduce(_||_) -> io.forward(PriorityMux(src1DependEX(i).zipWithIndex.map{case(a,b)=>(a,b.U)})).wb.rfData, //io.forward.wb.rfData,
        (src1DependWB(i).reduce(_||_) && !src1DependEX(i).reduce(_||_)) -> io.wb.WriteData(PriorityMux(src1DependWB(i).zipWithIndex.map{case(a,b)=>(a,b.U)})), //io.wb.rfData,
        ((io.in(i).bits.ctrl.src1Type =/= SrcType.pc) && !src1DependEX(i).reduce(_||_) && !src1DependWB(i).reduce(_||_)) -> io.wb.ReadData1(i)
        ))
    }
    for(i <- 0 to Issue_Num-1){
        io.out(i).bits.data.src2 := Mux1H(List(
        (io.in(i).bits.ctrl.src2Type =/= SrcType.reg) -> io.in(i).bits.data.imm,
        src2DependEX(i).reduce(_||_) -> io.forward(PriorityMux(src2DependEX(i).zipWithIndex.map{case(a,b)=>(a,b.U)})).wb.rfData, //io.forward.wb.rfData,
        (src2DependWB(i).reduce(_||_) && !src2DependEX(i).reduce(_||_)) -> io.wb.WriteData(PriorityMux(src2DependWB(i).zipWithIndex.map{case(a,b)=>(a,b.U)})), //io.wb.rfData,
        ((io.in(i).bits.ctrl.src2Type === SrcType.reg) && !src2DependEX(i).reduce(_||_) && !src2DependWB(i).reduce(_||_)) -> io.wb.ReadData2(i)
        ))
    }
    for(i <- 0 to Issue_Num-1){
        io.out(i).bits.data.imm  := io.in(i).bits.data.imm
        io.out(i).bits.cf <> io.in(i).bits.cf
        io.out(i).bits.ctrl := io.in(i).bits.ctrl
        if(i > 0){
            when(io.in(i).bits.ctrl.fuType === FuType.alu){
                io.out(i).bits.ctrl.fuType := FuType.alu1
        }}
        io.out(i).bits.ctrl.isSrc1Forward := src1DependEX(i).reduce(_||_)
        io.out(i).bits.ctrl.isSrc2Forward := src2DependEX(i).reduce(_||_)
    }

    io.wb.rfSrc1 := VecInit((0 to Issue_Num-1).map(i => rfSrc1(i)))
    io.wb.rfSrc2 := VecInit((0 to Issue_Num-1).map(i => rfSrc2(i)))

    q.io.setnum := io.out.map(i => i.fire().asUInt).reduce(_+&_)
    q.io.flush  := io.flush
    q.io.clearnum:=io.wb.valid(0)
    val invalidnum = io.in.map(i => (!i.valid).asUInt).reduce(_+&_)
    for(i <- 0 to Issue_Num-1){
        io.out(i).bits.InstNo := q.io.HeadPtr + i.U - invalidnum
        io.out(i).bits.InstFlag:= q.io.Flag
    }

    InstBoard.io.Wen     := VecInit((0 to NRReg-1).map(i => VecInit((0 to Issue_Num-1).map(j => i.U === rfDest(j)&&io.out(j).fire()&&rfWen(j))).reduce(_|_)))
    InstBoard.io.WInstNo := VecInit((0 to NRReg-1).map(i => {val raw = Wire(UInt(log2Up(Queue_num).W))
                                                                 raw:= 0.U
                                                            for(j <- 0 to Issue_Num-1){
                                                                when(i.U === rfDest(j)&&io.out(j).fire()&&rfWen(j)){
                                                                    raw := io.out(j).bits.InstNo
                                                                }}
                                                            raw}))
    InstBoard.io.clear   := VecInit((0 to NRReg-1).map(i => VecInit((0 to Issue_Num-1).map(j => io.wb.rfWen(j) && i.U === io.wb.rfDest(j) && io.wb.InstNo(j) === InstBoard.io.RInstNo(i))).reduce(_|_)))
    InstBoard.io.flush   := io.flush

    val wbClearMask = VecInit((0 to Issue_Num-1).map(i=>Mux(io.wb.rfWen(i) && InstBoard.io.RInstNo(io.wb.rfDest(i)) === io.wb.InstNo(i), sb.mask(io.wb.rfDest(i)), 0.U(NRReg.W)))).reduce(_|_)
    val isuFireSetMask = VecInit((0 to Issue_Num-1).map(i=>Mux(io.out(i).fire()&&rfWen(i), sb.mask(rfDest(i)), 0.U))).reduce(_|_)
    when (io.flush) { sb.update(0.U, Fill(NRReg, 1.U(1.W)))}
    .otherwise { sb.update(isuFireSetMask, wbClearMask) }

    Debug("[SIMD_ISU] valid %x rfSrc1 %x rfsrc1ready %x rfsrc2ready %x InstBoard.io.RInstNo(io.wb.rfDest(0)) %x io.wb.InstNo(0) %x\n", io.in(0).valid,rfSrc1(0), src1Ready(0),src2Ready(0), InstBoard.io.RInstNo(io.wb.rfDest(0)),io.wb.InstNo(0))
    Debug("[SIMD_ISU] InstBoard.io.Wen(0e) %x InstBoard.io.WInstNo(0e) %x \n", InstBoard.io.Wen(14),InstBoard.io.WInstNo(14))
    Debug("[SIMD_ISU] InstBoard.io.clear(0e) %x InstBoard.io.Rinstno(0e) %x \n", InstBoard.io.clear(14),InstBoard.io.RInstNo(14))
    Debug(io.out(0).fire(),"[SIMD_ISU] InstNo %x\n", io.out(0).bits.InstNo)
}
class new_SIMD_ISU(implicit val p:NutCoreConfig)extends NutCoreModule with HasRegFileParameter{
    val io = IO(new Bundle{
        val in = Vec(2,Flipped(Decoupled(new DecodeIO)))
        val out = Vec(Issue_Num,Decoupled(new DecodeIO))
        val wb = Flipped(new new_SIMD_WriteBackIO)
        val forward = Vec(FuType.num,Flipped(new ForwardIO))
        val flush = Input(Bool())
        val num_enterwbu = Input(UInt(log2Up(Queue_num).W))
        val TailPtr = Output(UInt(log2Up(Queue_num).W))
    })
    for(i<-0 to Issue_Num-1){
        io.out(i):=DontCare
    }
    val InstBoard = Module(new InstBoard)
    val q = Module(new InstQueue)

    def isDepend(rfSrc: UInt, rfDest: UInt, wen: Bool): Bool = (rfSrc =/= 0.U) && (rfSrc === rfDest) && wen
    def isCsrMouOp(i:Int):Bool = io.in(i).bits.ctrl.fuType === FuType.csr || io.in(i).bits.ctrl.fuType === FuType.mou
    def HasEnoughOperator(futype:UInt):Bool = futype === FuType.alu
    def isLatestData(rfSrc: UInt,InstNo:UInt):Bool = InstBoard.io.RInstNo(rfSrc) === InstNo

    val rfSrc1 = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.rfSrc1))
    val rfSrc2 = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.rfSrc2))
    val rfSrc3 = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.rfSrc2))
    val rfDest = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.rfDest))
    val rfWen  = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.rfWen ))

    val forwardRfWen = VecInit((0 to FuType.num-1).map(i => io.forward(i).wb.rfWen && io.forward(i).valid))
    val src1DependEX = VecInit((0 to Issue_Num-1).map(i=>VecInit((0 to FuType.num-1).map(j => isLatestData(rfSrc1(i),io.forward(j).InstNo) && isDepend(rfSrc1(i), io.forward(j).wb.rfDest, forwardRfWen(j))))))
    val src2DependEX = VecInit((0 to Issue_Num-1).map(i=>VecInit((0 to FuType.num-1).map(j => isLatestData(rfSrc2(i),io.forward(j).InstNo) && isDepend(rfSrc2(i), io.forward(j).wb.rfDest, forwardRfWen(j))))))
    val src1DependWB = VecInit((0 to Issue_Num-1).map(i=>VecInit((0 to Commit_num-1).map(j => isLatestData(rfSrc1(i),io.wb.InstNo(j)) && isDepend(rfSrc1(i), io.wb.rfDest(j), io.wb.rfWen(j))))))
    val src2DependWB = VecInit((0 to Issue_Num-1).map(i=>VecInit((0 to Commit_num-1).map(j => isLatestData(rfSrc2(i),io.wb.InstNo(j)) && isDepend(rfSrc2(i), io.wb.rfDest(j), io.wb.rfWen(j))))))

    val src1Ready = VecInit((0 to Issue_Num-1).map(i => !InstBoard.io.valid(rfSrc1(i))||src1DependEX(i).reduce(_||_)||src1DependWB(i).reduce(_||_)))
    val src2Ready = VecInit((0 to Issue_Num-1).map(i => !InstBoard.io.valid(rfSrc2(i))||src2DependEX(i).reduce(_||_)||src2DependWB(i).reduce(_||_)))
    val src3Ready = VecInit((0 to Issue_Num-1).map(i => true.B))

    val RAWinIssue = VecInit((0 to Issue_Num-1).map(i => {val raw = Wire(Vec(Issue_Num,Bool())) 
                                                        for(j <- 0 to i-1){
                                                                raw(j) := io.in(j).valid && (isDepend(rfSrc1(i),rfDest(j),rfWen(j))||isDepend(rfSrc2(i),rfDest(j),rfWen(j))||(if(Polaris_SIMDU_WAY_NUM != 0){isDepend(rfSrc3(i),rfDest(j),rfWen(j))}else{false.B}))
                                                        }
                                                        for(j <- i to Issue_Num-1){
                                                                raw(j) := false.B 
                                                        }
                                                        raw.reduce(_||_)}))

    val FrontHasCsrMouOp = VecInit((0 to Issue_Num-1).map(i => {val raw = Wire(Vec(Issue_Num,Bool())) 
                                                            for(j <- 0 to i-1){
                                                                raw(j) := io.in(j).valid && (io.in(j).bits.ctrl.fuType === FuType.csr || io.in(j).bits.ctrl.fuType === FuType.mou)
                                                            }
                                                            for(j <- i to Issue_Num-1){
                                                                raw(j) := false.B 
                                                            }
                                                            raw.reduce(_||_)}))
    val FrontisClear = VecInit((0 to Issue_Num-1).map(i => {val raw = Wire(Vec(Issue_Num,Bool())) 
                                                            for(j <- 0 to i-1){
                                                                raw(j) := !io.in(j).valid
                                                            }
                                                            for(j <- i to Issue_Num-1){
                                                                raw(j) := false.B 
                                                            }
                                                            raw.reduce(_||_)}))

    for(i <- 0 to Issue_Num-1){
        if(i == 0){
            io.out(i).valid := io.in(i).valid && src1Ready(i) && src2Ready(i) && (if(Polaris_SIMDU_WAY_NUM != 0){src3Ready(i)}else{true.B}) && !(isCsrMouOp(i) && q.io.TailPtr =/= q.io.HeadPtr)
        }else{
            io.out(i).valid := io.in(i).valid && src1Ready(i) && src2Ready(i) && (if(Polaris_SIMDU_WAY_NUM != 0){src3Ready(i)}else{true.B}) && !RAWinIssue(i) && !FrontHasCsrMouOp(i) && !(isCsrMouOp(i) && !FrontisClear(i))
            Debug("[SIMD_ISU] RAWinIssue %x FrontHasCsrMouOp %x isCsrMouOp %x FrontisClear %x \n",RAWinIssue(i),FrontHasCsrMouOp(i),isCsrMouOp(i),FrontisClear(i))
        }
    }

    io.in(0).ready := !io.in(0).valid||io.out(0).fire()
    if(Issue_Num == 1){
        io.in(1).ready := false.B
    }else{
        io.in(1).ready := !io.in(1).valid||io.out(1).fire()
    }

    for(i <- 0 to Issue_Num-1){
        io.out(i).bits.data.src1 := Mux1H(List(
        (io.in(i).bits.ctrl.src1Type === SrcType.pc) -> SignExt(io.in(i).bits.cf.pc, AddrBits),
        src1DependEX(i).reduce(_||_) -> io.forward(PriorityMux(src1DependEX(i).zipWithIndex.map{case(a,b)=>(a,b.U)})).wb.rfData, //io.forward.wb.rfData,
        (src1DependWB(i).reduce(_||_) && !src1DependEX(i).reduce(_||_)) -> io.wb.WriteData(PriorityMux(src1DependWB(i).zipWithIndex.map{case(a,b)=>(a,b.U)})), //io.wb.rfData,
        ((io.in(i).bits.ctrl.src1Type =/= SrcType.pc) && !src1DependEX(i).reduce(_||_) && !src1DependWB(i).reduce(_||_)) -> io.wb.ReadData1(i)
        ))
    }
    for(i <- 0 to Issue_Num-1){
        io.out(i).bits.data.src2 := Mux1H(List(
        (io.in(i).bits.ctrl.src2Type =/= SrcType.reg) -> io.in(i).bits.data.imm,
        src2DependEX(i).reduce(_||_) -> io.forward(PriorityMux(src2DependEX(i).zipWithIndex.map{case(a,b)=>(a,b.U)})).wb.rfData, //io.forward.wb.rfData,
        (src2DependWB(i).reduce(_||_) && !src2DependEX(i).reduce(_||_)) -> io.wb.WriteData(PriorityMux(src2DependWB(i).zipWithIndex.map{case(a,b)=>(a,b.U)})), //io.wb.rfData,
        ((io.in(i).bits.ctrl.src2Type === SrcType.reg) && !src2DependEX(i).reduce(_||_) && !src2DependWB(i).reduce(_||_)) -> io.wb.ReadData2(i)
        ))
    }
    for(i <- 0 to Issue_Num-1){
        io.out(i).bits.data.imm  := io.in(i).bits.data.imm
        io.out(i).bits.cf <> io.in(i).bits.cf
        io.out(i).bits.ctrl := io.in(i).bits.ctrl
        io.out(i).bits.ctrl.isBru := ALUOpType.isBru(io.in(i).bits.ctrl.fuOpType)
        io.out(i).bits.ctrl.isSrc1Forward := src1DependEX(i).reduce(_||_)
        io.out(i).bits.ctrl.isSrc2Forward := src2DependEX(i).reduce(_||_)
    }

    io.wb.rfSrc1 := VecInit((0 to Issue_Num-1).map(i => rfSrc1(i)))
    io.wb.rfSrc2 := VecInit((0 to Issue_Num-1).map(i => rfSrc2(i)))
    io.wb.rfSrc3 := DontCare
    if(Polaris_SIMDU_WAY_NUM != 0){
        (0 to Issue_Num-1).map(i => rfSrc3(i) := io.in(i).bits.ctrl.rfSrc3)
        val src3DependEX = VecInit((0 to Issue_Num-1).map(i=>VecInit((0 to FuType.num-1).map(j => isLatestData(rfSrc3(i),io.forward(j).InstNo) && isDepend(rfSrc3(i), io.forward(j).wb.rfDest, forwardRfWen(j))))))
        val src3DependWB = VecInit((0 to Issue_Num-1).map(i=>VecInit((0 to Commit_num-1).map(j => isLatestData(rfSrc3(i),io.wb.InstNo(j)) && isDepend(rfSrc3(i), io.wb.rfDest(j), io.wb.rfWen(j))))))
        (0 to Issue_Num-1).map(i => src3Ready(i) := !InstBoard.io.valid(rfSrc3(i))||src3DependEX(i).reduce(_||_)||src3DependWB(i).reduce(_||_))
        for(i <- 0 to Issue_Num-1){
            io.out(i).bits.data.src3 := Mux1H(List(
            src3DependEX(i).reduce(_||_) -> io.forward(PriorityMux(src3DependEX(i).zipWithIndex.map{case(a,b)=>(a,b.U)})).wb.rfData, //io.forward.wb.rfData,
            (src3DependWB(i).reduce(_||_) && !src3DependEX(i).reduce(_||_)) -> io.wb.WriteData(PriorityMux(src3DependWB(i).zipWithIndex.map{case(a,b)=>(a,b.U)})), //io.wb.rfData,
            (!src3DependEX(i).reduce(_||_) && !src3DependWB(i).reduce(_||_)) -> io.wb.ReadData3(i))
            )
        }
        io.wb.rfSrc3 := VecInit((0 to Issue_Num-1).map(i => rfSrc3(i)))
    }

    q.io.setnum := io.out.map(i => i.fire().asUInt).reduce(_+&_)
    q.io.flush  := io.flush
    q.io.clearnum:=io.num_enterwbu
    for(i <- 0 to Issue_Num-1){
        val mightbeInstNo = q.io.HeadPtr +& i.U
        val startNewQueue = mightbeInstNo >= Queue_num.U
        io.out(i).bits.InstNo := Mux(startNewQueue,mightbeInstNo-Queue_num.U,mightbeInstNo)
        io.out(i).bits.InstFlag:= Mux(startNewQueue,!q.io.Flag,q.io.Flag)
    }
    io.TailPtr := q.io.TailPtr

    InstBoard.io.Wen     := VecInit((0 to NRReg-1).map(i => VecInit((0 to Issue_Num-1).map(j => i.U === rfDest(j)&&io.out(j).fire()&&rfWen(j))).reduce(_|_)))
    InstBoard.io.WInstNo := VecInit((0 to NRReg-1).map(i => {val raw = Wire(UInt(log2Up(Queue_num).W))
                                                                 raw:= 0.U
                                                            for(j <- 0 to Issue_Num-1){
                                                                when(i.U === rfDest(j)&&io.out(j).fire()&&rfWen(j)){
                                                                    raw := io.out(j).bits.InstNo
                                                                }}
                                                            raw}))
    InstBoard.io.clear   := VecInit((0 to NRReg-1).map(i => VecInit((0 to Commit_num-1).map(j => io.wb.rfWen(j) && i.U === io.wb.rfDest(j) && io.wb.InstNo(j) === InstBoard.io.RInstNo(i))).reduce(_|_)))
    InstBoard.io.flush   := io.flush

    for(i <- 0 to Issue_Num-1){
    Debug("[SIMD_ISU] issue %x valid %x rfSrc1 %x rfSrc2 %x rfdata1 %x rfdata2 %x rfsrc1ready %x rfsrc2ready %x\n", i.U,io.in(i).valid,rfSrc1(i),rfSrc2(i), io.out(i).bits.data.src1,io.out(i).bits.data.src2,src1Ready(i),src2Ready(i))
    Debug("[SIMD_ISU] issue %x outvalid %x InstNo %x pc %x inst %x futype %x futypeop %x src1ex %x src2ex %x src1wb %x src2wb %x \n",i.U,io.out(i).valid,io.out(i).bits.InstNo,io.in(i).bits.cf.pc,io.in(i).bits.cf.instr,io.in(i).bits.ctrl.fuType,io.in(i).bits.ctrl.fuOpType,src1DependEX(i).reduce(_|_),src2DependEX(i).reduce(_|_),src1DependWB(i).reduce(_|_),src2DependWB(i).reduce(_|_))
    Debug(io.out(0).fire(),"[SIMD_ISU] InstNo %x\n", io.out(0).bits.InstNo)
    }
    for(i <- 0 to FuType.num-1){
        Debug("[SIMD_ISU]futype %x rfdest %x rfwen %x wdata %x \n",i.U,io.forward(i).wb.rfDest,forwardRfWen(i),io.forward(i).wb.rfData)
    }
}