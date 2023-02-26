package nutcore

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils
import utils._
import difftest._

class SIMD_WBU(implicit val p: NutCoreConfig) extends NutCoreModule with HasRegFileParameter{
  val io = IO(new Bundle {
    val in = Vec(Issue_Num,Flipped(Decoupled(new CommitIO)))
    val wb = new SIMD_WriteBackIO
    val redirect = new RedirectIO
  })

  val rf = new RegFile

  def WAW(index:Int):Bool={
      val WaW = Wire(Vec(Issue_Num,Bool()))
      WaW := VecInit((0 to Issue_Num-1).map(i=>false.B))
      for(j<- index+1 to Issue_Num-1){
          WAW(j) := io.in(j).bits.decode.ctrl.rfDest === io.in(index).bits.decode.ctrl.rfDest && io.in(j).bits.decode.ctrl.rfWen
      }
      WaW.reduce(_||_)
  }
  for(i <- 0 to Issue_Num-1){
  io.wb.rfWen(i) := io.in(i).bits.decode.ctrl.rfWen && io.in(i).valid && !WAW(i)
  io.wb.rfDest(i) := io.in(i).bits.decode.ctrl.rfDest
  io.wb.WriteData(i) := io.in(i).bits.commits(io.in(i).bits.decode.ctrl.fuType)
  io.wb.ReadData1(i):=rf.read(io.wb.rfSrc1(i))
  io.wb.ReadData2(i):=rf.read(io.wb.rfSrc2(i))
  io.wb.valid(i) :=io.in(i).valid
  io.wb.InstNo(i) := io.in(i).bits.decode.InstNo
  }
  for(i<-0 to Issue_Num-1){
  when (io.wb.rfWen(i)) { rf.write(io.wb.rfDest(i), io.wb.WriteData(i)) }
  }

  for(i <- 0 to Issue_Num-1){
  io.in(i).ready := true.B
  }

  val redirct_index = PriorityMux(VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.decode.cf.redirect.valid && io.in(i).valid)).zipWithIndex.map{case(a,b)=>(a,b.U)})
  io.redirect := io.in(redirct_index).bits.decode.cf.redirect
  io.redirect.valid := VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.decode.cf.redirect.valid && io.in(i).valid)).reduce(_||_)
  
  val runahead_redirect = Module(new DifftestRunaheadRedirectEvent)
  runahead_redirect.io.clock := clock
  runahead_redirect.io.coreid := 0.U
  runahead_redirect.io.valid := io.redirect.valid
  runahead_redirect.io.pc := io.in(redirct_index).bits.decode.cf.pc // for debug only
  runahead_redirect.io.target_pc := io.in(redirct_index).bits.decode.cf.redirect.target // for debug only
  runahead_redirect.io.checkpoint_id := io.in(redirct_index).bits.decode.cf.runahead_checkpoint_id // make sure it is right
  // when(runahead_redirect.io.valid) {
  //   printf("DUT pc %x redirect to %x cpid %x\n", runahead_redirect.io.pc, runahead_redirect.io.target_pc, runahead_redirect.io.checkpoint_id)
  // }

  Debug(io.in(0).valid, "[COMMIT] pc = 0x%x inst %x wen %x wdst %x wdata %x mmio %x intrNO %x\n", io.in(0).bits.decode.cf.pc, io.in(0).bits.decode.cf.instr, io.wb.rfWen(0), io.wb.rfDest(0), io.wb.WriteData(0), io.in(0).bits.isMMIO, io.in(0).bits.decode.InstNo)

  val falseWire = WireInit(false.B) // make BoringUtils.addSource happy
  for(i <- 0 to Issue_Num-1){
  BoringUtils.addSource(io.in(i).valid, "perfCntCondMinstret")
  BoringUtils.addSource(falseWire, "perfCntCondMultiCommit")
  }
  
  if (!p.FPGAPlatform) {
    for(i <- 0 to Issue_Num-1){
    val difftest_commit = Module(new DifftestInstrCommit)
    difftest_commit.io.clock    := clock
    difftest_commit.io.coreid   := 0.U
    difftest_commit.io.index    := i.U

    difftest_commit.io.valid    := RegNext(io.in(i).valid)
    difftest_commit.io.pc       := RegNext(SignExt(io.in(i).bits.decode.cf.pc, AddrBits))
    difftest_commit.io.instr    := RegNext(io.in(i).bits.decode.cf.instr)
    difftest_commit.io.skip     := RegNext(io.in(i).bits.isMMIO)
    difftest_commit.io.isRVC    := RegNext(io.in(i).bits.decode.cf.instr(1,0)=/="b11".U)
    difftest_commit.io.rfwen    := RegNext(io.wb.rfWen(i) && io.wb.rfDest(i) =/= 0.U) // && valid(ringBufferTail)(i) && commited(ringBufferTail)(i)
    difftest_commit.io.fpwen    := false.B
    // difftest.io.wdata    := RegNext(io.wb.rfData)
    difftest_commit.io.wdest    := RegNext(io.wb.rfDest(i))
    difftest_commit.io.wpdest   := RegNext(io.wb.rfDest(i))


    val difftest_wb = Module(new DifftestIntWriteback)
    difftest_wb.io.clock := clock
    difftest_wb.io.coreid := 0.U
    difftest_wb.io.valid := RegNext(io.wb.rfWen(i) && io.wb.rfDest(i) =/= 0.U)
    difftest_wb.io.dest := RegNext(io.wb.rfDest(i))
    difftest_wb.io.data := RegNext(io.wb.WriteData(i))

    val runahead_commit = Module(new DifftestRunaheadCommitEvent)
    runahead_commit.io.clock := clock
    runahead_commit.io.coreid := 0.U
    runahead_commit.io.index := i.U
    runahead_commit.io.valid := RegNext(io.in(i).valid && io.in(i).bits.decode.cf.isBranch)
    runahead_commit.io.pc    := RegNext(SignExt(io.in(i).bits.decode.cf.pc, AddrBits))
    // when(runahead_commit.io.valid) {
    //   printf("DUT commit branch %x\n", runahead_commit.io.pc)
    // }
    }
  } else {
    for(i <- 0 to Issue_Num-1){
    BoringUtils.addSource(io.in(i).valid, "ilaWBUvalid")
    BoringUtils.addSource(io.in(i).bits.decode.cf.pc, "ilaWBUpc")
    BoringUtils.addSource(io.wb.rfWen(i), "ilaWBUrfWen")
    BoringUtils.addSource(io.wb.rfDest(i), "ilaWBUrfDest")
    BoringUtils.addSource(io.wb.WriteData(i), "ilaWBUrfData")
    }
  }
  if (!p.FPGAPlatform) {
    val difftest = Module(new DifftestArchIntRegState)
    difftest.io.clock  := clock
    difftest.io.coreid := 0.U // TODO
    difftest.io.gpr    := VecInit((0 to NRReg-1).map(i => rf.read(i.U)))
  }
}
class new_SIMD_WBU(implicit val p: NutCoreConfig) extends NutCoreModule with HasRegFileParameter{
  val io = IO(new Bundle {
    val in = Vec(FuType.num,Flipped(Decoupled(new SIMD_CommitIO)))
    val wb = new new_SIMD_WriteBackIO
    val redirect = new RedirectIO
  })

  val rf = new RegFile

  val redirct_index = PriorityMux(VecInit((0 to FuType.num-1).map(i => io.in(i).bits.decode.cf.redirect.valid && io.in(i).valid)).zipWithIndex.map{case(a,b)=>(a,b.U)})
  io.redirect := io.in(redirct_index).bits.decode.cf.redirect
  io.redirect.valid := VecInit((0 to FuType.num-1).map(i => io.in(i).bits.decode.cf.redirect.valid && io.in(i).valid)).reduce(_||_)

  val FronthasRedirect = VecInit((0 to FuType.num-1).map(i => i.U > redirct_index))

  for(i <- 0 to FuType.num-1){
    io.wb.rfWen(i) := io.in(i).bits.decode.ctrl.rfWen && io.in(i).valid 
    io.wb.rfDest(i) := io.in(i).bits.decode.ctrl.rfDest
    io.wb.WriteData(i) := io.in(i).bits.commits
    io.wb.valid(i) :=io.in(i).valid
    io.wb.InstNo(i) := io.in(i).bits.decode.InstNo
  }
  for(i<-0 to FuType.num-1){
    when (io.wb.rfWen(i) && !FronthasRedirect(i)) { rf.write(io.wb.rfDest(i), io.wb.WriteData(i)) }
    when(reset.asBool){rf.write(io.wb.rfDest(i), 0.U)}
  }
  for(i <- 0 to Issue_Num-1){
    io.wb.ReadData1(i):=rf.read(io.wb.rfSrc1(i))
    io.wb.ReadData2(i):=rf.read(io.wb.rfSrc2(i))
    io.wb.ReadData3(i):=DontCare
    if(Polaris_SIMDU_WAY_NUM!=0){
      io.wb.ReadData3(i):=rf.read(io.wb.rfSrc3(i))
    }
  }
  for(i <- 0 to FuType.num-1){
    io.in(i).ready := true.B
  }

  //P-EXT
  if(Polaris_SIMDU_WAY_NUM!=0){
    val bool_wire = WireInit(false.B)
    for(i <- 0 to FuType.num-1){
      when(io.in(i).valid && io.in(i).bits.decode.pext.OV && !FronthasRedirect(i)){
        bool_wire := true.B
      }
    }
    BoringUtils.addSource(bool_wire,"OVWEN")
  }
  
  val runahead_redirect = Module(new DifftestRunaheadRedirectEvent)
  runahead_redirect.io.clock := clock
  runahead_redirect.io.coreid := 0.U
  runahead_redirect.io.valid := io.redirect.valid
  runahead_redirect.io.pc := io.in(redirct_index).bits.decode.cf.pc // for debug only
  runahead_redirect.io.target_pc := io.in(redirct_index).bits.decode.cf.redirect.target // for debug only
  runahead_redirect.io.checkpoint_id := io.in(redirct_index).bits.decode.cf.runahead_checkpoint_id // make sure it is right
  // when(runahead_redirect.io.valid) {
  //   printf("DUT pc %x redirect to %x cpid %x\n", runahead_redirect.io.pc, runahead_redirect.io.target_pc, runahead_redirect.io.checkpoint_id)
  // }

  val commit_num = (0 to FuType.num-1).map(i => (io.in(i).valid && !FronthasRedirect(i)).asUInt).reduce(_+&_)
  for(i <- 0 to 0){
  BoringUtils.addSource(io.in(i).valid, "perfCntCondMinstret")
  BoringUtils.addSource(commit_num=/=0.U, "perfCntCondMultiCommit")
  BoringUtils.addSource(commit_num===2.U, "perfCntCondMultiCommit2")
  BoringUtils.addSource(commit_num===3.U, "perfCntCondMultiCommit3")
  BoringUtils.addSource(commit_num===4.U, "perfCntCondMultiCommit4")
  BoringUtils.addSource(commit_num===5.U, "perfCntCondMultiCommit5")
  BoringUtils.addSource(commit_num===6.U, "perfCntCondMultiCommit6")
  }

  for(i <- 0 to FuType.num-1){
    Debug("[SIMD_WBU] issue %x valid %x pc %x wen %x wdata %x wdest %x futype %x instno %x isMMIO %x redirectvalid %x redirecttarget %x \n",i.U,io.in(i).valid,io.in(i).bits.decode.cf.pc,io.wb.rfWen(i),io.wb.WriteData(i),io.wb.rfDest(i),io.in(i).bits.decode.ctrl.fuType,io.in(i).bits.decode.InstNo,io.in(i).bits.isMMIO,io.in(i).bits.decode.cf.redirect.valid,io.in(i).bits.decode.cf.redirect.target)
  }
  Debug("[SIMD_WBU] redirctindex %x redirctvalid %x redircttarget %x \n",redirct_index,io.redirect.valid,io.redirect.target)
  Debug("[SIMD_WBU] t0 %x \n",rf.read(5.U))
  if (!p.FPGAPlatform) {
    for(i <- 0 to FuType.num-1){
    val difftest_commit = Module(new DifftestInstrCommit)
    difftest_commit.io.clock    := clock
    difftest_commit.io.coreid   := 0.U
    difftest_commit.io.index    := i.U

    difftest_commit.io.valid    := RegNext(io.in(i).valid && !FronthasRedirect(i))
    difftest_commit.io.pc       := RegNext(SignExt(io.in(i).bits.decode.cf.pc, AddrBits))
    difftest_commit.io.instr    := RegNext(io.in(i).bits.decode.cf.instr)
    difftest_commit.io.skip     := RegNext(io.in(i).bits.isMMIO)
    difftest_commit.io.isRVC    := RegNext(io.in(i).bits.decode.cf.instr(1,0)=/="b11".U)
    difftest_commit.io.rfwen    := RegNext(io.wb.rfWen(i) && io.wb.rfDest(i) =/= 0.U) // && valid(ringBufferTail)(i) && commited(ringBufferTail)(i)
    difftest_commit.io.fpwen    := false.B
    //difftest_commit.io.wdata    := RegNext(io.wb.WriteData(i))
    difftest_commit.io.wdest    := RegNext(io.wb.rfDest(i))
    difftest_commit.io.wpdest   := RegNext(io.wb.rfDest(i))


    val difftest_wb = Module(new DifftestIntWriteback)
    difftest_wb.io.clock := clock
    difftest_wb.io.coreid := 0.U
    difftest_wb.io.valid := RegNext(io.wb.rfWen(i) && io.wb.rfDest(i) =/= 0.U)
    difftest_wb.io.dest := RegNext(io.wb.rfDest(i))
    difftest_wb.io.data := RegNext(io.wb.WriteData(i))

    val runahead_commit = Module(new DifftestRunaheadCommitEvent)
    runahead_commit.io.clock := clock
    runahead_commit.io.coreid := 0.U
    runahead_commit.io.index := i.U
    runahead_commit.io.valid := RegNext(io.in(i).valid && io.in(i).bits.decode.cf.isBranch)
    runahead_commit.io.pc    := RegNext(SignExt(io.in(i).bits.decode.cf.pc, AddrBits))
    // when(runahead_commit.io.valid) {
    //   printf("DUT commit branch %x\n", runahead_commit.io.pc)
    // }
    }
  } else {
    for(i <- 0 to 0){
    BoringUtils.addSource(io.in(i).valid, "ilaWBUvalid")
    BoringUtils.addSource(io.in(i).bits.decode.cf.pc, "ilaWBUpc")
    BoringUtils.addSource(io.wb.rfWen(i), "ilaWBUrfWen")
    BoringUtils.addSource(io.wb.rfDest(i), "ilaWBUrfDest")
    BoringUtils.addSource(io.wb.WriteData(i), "ilaWBUrfData")
    }
  }
  if (!p.FPGAPlatform) {
    val difftest = Module(new DifftestArchIntRegState)
    difftest.io.clock  := clock
    difftest.io.coreid := 0.U 
    difftest.io.gpr    := VecInit((0 to NRReg-1).map(i => rf.read(i.U)))
  }
}