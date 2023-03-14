package nutcore

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import bus.simplebus._
import top.Settings
import difftest._

class SIMD_EXU(implicit val p: NutCoreConfig) extends NutCoreModule {
  val io = IO(new Bundle {
    val in = Vec(Issue_Num,Flipped(Decoupled(new DecodeIO)))
    val out = Vec(Issue_Num,Decoupled(new CommitIO))
    val flush = Input(Bool())
    val dmem = new SimpleBusUC(addrBits = VAddrBits)
    val forward = Vec(Issue_Num,new ForwardIO)
    val memMMU = Flipped(new MemMMUIO)
  })

  def WhoTakeThisOperator(futype:UInt):UInt = PriorityMux(VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.fuType === futype && io.in(i).valid)).zipWithIndex.map{case(a,b) => (a,b.U)})

  val src1     = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.data.src1))
  val src2     = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.data.src2))
  val fuType   = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.fuType))
  val fuOpType = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.fuOpType))

  val fuValids = VecInit((0 to FuType.num).map(i => {val raw = Wire(Vec(Issue_Num,Bool()))
                                                  for(j <- 0 to Issue_Num-1){
                                                      raw(j) := fuType(j) === i.U && io.in(j).valid && !io.flush
                                                  }
                                                  raw.reduce(_||_)
                                                 }))
  //ALU
  val alu = Module(new ALU(hasBru = true,NO1 = true))
  val WhoTakeAlu = WhoTakeThisOperator(FuType.alu)
  val aluOut = alu.access(valid = fuValids(FuType.alu), src1 = src1(WhoTakeAlu), src2 = src2(WhoTakeAlu), func = fuOpType(WhoTakeAlu))
  alu.io.cfIn := io.in(WhoTakeAlu).bits.cf
  alu.io.offset := io.in(WhoTakeAlu).bits.data.imm
  alu.io.out.ready := true.B

  //ALU1
  val alu1 = Module(new ALU(hasBru = false,NO1 = false))
  val WhoTakeAlu1 = WhoTakeThisOperator(FuType.alu1)
  val alu1Out = alu1.access(valid = fuValids(FuType.alu1), src1 = src1(WhoTakeAlu1), src2 = src2(WhoTakeAlu1), func = fuOpType(WhoTakeAlu1))
  alu1.io.cfIn := io.in(WhoTakeAlu1).bits.cf
  alu1.io.offset := io.in(WhoTakeAlu1).bits.data.imm
  alu1.io.out.ready := true.B

  //LSU
  val lsu = Module(new pipeline_lsu)
  val WhoTakeLsu = WhoTakeThisOperator(FuType.csr)
  val lsuOut = lsu.access(valid = fuValids(FuType.lsu), src1 = src1(WhoTakeLsu), src2 = io.in(WhoTakeLsu).bits.data.imm, func = fuOpType(WhoTakeLsu))
  lsu.io.wdata := src2(WhoTakeLsu)
  lsu.io.DecodeIn := io.in(WhoTakeLsu).bits
  for(i <- 0 to Issue_Num-1){
    io.out(i).bits.isMMIO := i.U === WhoTakeLsu && (lsu.io.isMMIO || (AddressSpace.isMMIO(io.in(WhoTakeLsu).bits.cf.pc) && io.out(i).valid))
  }
  io.dmem <> lsu.io.dmem
  lsu.io.out.ready := true.B
  lsu.io.flush := io.flush

  //MDU
  val mdu = Module(new MDU)
  val WhoTakeMdu = WhoTakeThisOperator(FuType.mdu)
  val mduOut = mdu.access(valid = fuValids(FuType.mdu), src1 = src1(WhoTakeMdu), src2 = src2(WhoTakeMdu), func = fuOpType(WhoTakeMdu))
  mdu.io.out.ready := true.B
  mdu.io.flush := io.flush

  //CSRU
  val csr = Module(new CSR)
  val WhoTakeCsr = WhoTakeThisOperator(FuType.csr)
  val csrOut = csr.access(valid = fuValids(FuType.csr), src1 = src1(WhoTakeCsr), src2 = src2(WhoTakeCsr), func = fuOpType(WhoTakeCsr))
  csr.io.cfIn := io.in(WhoTakeCsr).bits.cf
  csr.io.cfIn.exceptionVec(loadAddrMisaligned) := lsu.io.loadAddrMisaligned
  csr.io.cfIn.exceptionVec(storeAddrMisaligned) := lsu.io.storeAddrMisaligned
  csr.io.instrValid := io.in(WhoTakeCsr).valid && !io.flush
  csr.io.isBackendException := false.B
  for(i <- 0 to Issue_Num-1){
    io.out(i).bits.intrNO := DontCare
  }
  csr.io.isBackendException := false.B
  csr.io.out.ready := true.B
  csr.io.imemMMU <> io.memMMU.imem
  csr.io.dmemMMU <> io.memMMU.dmem

  //connect wires
  val empty_RedirectIO = Wire(new RedirectIO)
  empty_RedirectIO.target := 0.U
  empty_RedirectIO.rtype := 0.U
  empty_RedirectIO.valid := false.B

  val IcantWrite = VecInit((0 to Issue_Num-1).map(i => {val raw = Wire(Vec(Issue_Num,Bool())) 
                                                          for(j <- 0 to i){
                                                              raw(j) := ((lsu.io.loadAddrMisaligned || lsu.io.storeAddrMisaligned) && j.U === WhoTakeLsu) || (csr.io.wenFix && fuValids(FuType.csr) && j.U === WhoTakeCsr)
                                                          }
                                                          for(j <- i+1 to Issue_Num-1){
                                                              raw(j) := false.B 
                                                          }
                                                          raw.reduce(_||_)
                                                      }))

  for(i <- 0 to Issue_Num-1){
    io.out(i).bits.decode <> io.in(i).bits
  }
  Debug(io.out(0).fire(),"[SIMD_EXU] InstNo %x\n", io.out(0).bits.decode.InstNo)
  for(k <- 0 to Issue_Num-1){
    io.out(k).bits.decode.ctrl.rfWen := io.in(k).bits.ctrl.rfWen && !IcantWrite(k)
    io.out(k).bits.decode.cf.redirect <> Mux(csr.io.redirect.valid && WhoTakeCsr === k.U, csr.io.redirect, 
                                                Mux(alu.valid && WhoTakeAlu === k.U,alu.io.redirect,
                                                  Mux(alu1.valid && WhoTakeAlu1 === k.U,alu1.io.redirect,empty_RedirectIO)))
  }
  val ExuValid = VecInit((0 to Issue_Num-1).map(k => !io.in(k).valid || io.in(k).valid && MuxLookup(fuType(k), true.B, List(FuType.lsu -> lsu.io.out.valid,FuType.mdu -> mdu.io.out.valid))
                         )).reduce(_&&_)
  for(i <- 0 to Issue_Num-1){
    io.out(i).valid := Mux(io.in(i).valid,ExuValid,false.B) 
  }
  for(k <- 0 to Issue_Num-1){
    io.out(k).bits.commits:= DontCare
    io.out(k).bits.commits(FuType.alu) := aluOut
    io.out(k).bits.commits(FuType.lsu) := lsuOut
    io.out(k).bits.commits(FuType.csr) := csrOut
    io.out(k).bits.commits(FuType.mdu) := mduOut
    io.out(k).bits.commits(FuType.alu1):= alu1Out
  }
  for(i <- 0 to Issue_Num-1){
      if(i == 0){
        io.in(i).ready := VecInit((0 to Issue_Num-1).map(i => !io.in(i).valid||io.out(i).fire())).reduce(_&&_)
      }else{
        io.in(i).ready := false.B
      }
  }
  val WAWinExu = VecInit((0 to Issue_Num-1).map(i => {val raw = Wire(Vec(Issue_Num,Bool())) 
                                                      for(j <- 0 to i){
                                                        raw(j) := false.B 
                                                      }
                                                      for(j <- i+1 to Issue_Num-1){
                                                        raw(j) := io.in(j).valid && io.in(j).bits.ctrl.rfDest === io.in(i).bits.ctrl.rfDest && io.in(j).bits.ctrl.rfWen
                                                      }
                                                      raw.reduce(_||_)}))
  for(i <- 0 to Issue_Num-1){
    io.forward(i).valid := io.in(i).valid & io.out(i).valid
    io.forward(i).wb.rfWen := io.in(i).bits.ctrl.rfWen && !WAWinExu(i)
    io.forward(i).wb.rfDest := io.in(i).bits.ctrl.rfDest
    io.forward(i).wb.rfData := MuxLookup(fuType(i),aluOut,List(FuType.alu->aluOut,FuType.alu1->alu1Out,FuType.lsu->lsuOut,FuType.csr->csrOut,FuType.mdu->mduOut))
    io.forward(i).fuType := io.in(i).bits.ctrl.fuType
    io.forward(i).InstNo := io.in(i).bits.InstNo
  }

  if (!p.FPGAPlatform) {
    val cycleCnt = WireInit(0.U(64.W))
    val instrCnt = WireInit(0.U(64.W))
    val nutcoretrap = VecInit((0 to Issue_Num-1).map(i => io.in(i).bits.ctrl.isNutCoreTrap && io.in(i).valid)).reduce(_||_)

    BoringUtils.addSink(cycleCnt, "simCycleCnt")
    BoringUtils.addSink(instrCnt, "simInstrCnt")
    BoringUtils.addSource(nutcoretrap, "nutcoretrap")

    val difftest = Module(new DifftestTrapEvent)
    difftest.io.clock    := clock
    difftest.io.coreid   := 0.U // TODO: nutshell does not support coreid auto config
    difftest.io.valid    := nutcoretrap
    difftest.io.code     := io.in(0).bits.data.src1
    difftest.io.pc       := io.in(0).bits.cf.pc
    difftest.io.cycleCnt := cycleCnt
    difftest.io.instrCnt := instrCnt
  }
  //Debug
  {
      Debug("[SIMD_EXU] valid %x pc %x futype %x \n", io.in(0).valid, io.in(0).bits.cf.pc, io.in(0).bits.ctrl.fuType)
      for(i<- 0 to Issue_Num-1){
      Debug("[SIMD_EXU] [Issue: %x ]TakeBranch %x BranchTo %x \n", i.U, io.out(i).bits.decode.cf.redirect.valid, io.out(i).bits.decode.cf.redirect.target)
      }
  }
}

class new_SIMD_EXU(implicit val p: NutCoreConfig) extends NutCoreModule with HasInstrType {
  val io = IO(new Bundle {
    val in = Vec(FuType.num,Flipped(Decoupled(new DecodeIO)))
    val out = Vec(FuType.num,Decoupled(new SIMD_CommitIO))
    val flush = Input(Bool())
    val dmem = new SimpleBusUC(addrBits = VAddrBits)
    val forward = Vec(FuType.num,new ForwardIO)
    val memMMU = Flipped(new MemMMUIO)
  })

  def notafter(ptr1:UInt,ptr2:UInt,flag1:UInt,flag2:UInt):Bool= (ptr1 <= ptr2) && (flag1 === flag2) || (ptr1 > ptr2) && (flag1 =/= flag2)

  val src1     = VecInit((0 to FuType.num-1).map(i => io.in(i).bits.data.src1))
  val src2     = VecInit((0 to FuType.num-1).map(i => io.in(i).bits.data.src2))
  val fuType   = VecInit((0 to FuType.num-1).map(i => io.in(i).bits.ctrl.fuType))
  val fuOpType = VecInit((0 to FuType.num-1).map(i => io.in(i).bits.ctrl.fuOpType))

  //basic connect
  val empty_RedirectIO = Wire(new RedirectIO)
  empty_RedirectIO.target := 0.U
  empty_RedirectIO.rtype := 0.U
  empty_RedirectIO.valid := false.B

  for(i <- 0 to FuType.num-1){
    io.out(i).bits.decode <> io.in(i).bits
    io.out(i).bits.decode.ctrl.rfWen := io.in(i).bits.ctrl.rfWen
    io.out(i).bits.decode.cf.redirect <> empty_RedirectIO
    io.out(i).bits.commits:= DontCare
    io.in(i).ready := !io.in(i).valid || io.out(i).fire()
  }

  //ALU
  val aluidx = FuType.alu
  
  val alu = Module(new ALU(hasBru = true,NO1 = false))
  val aluOut = alu.access(valid = io.in(aluidx).valid, src1 = src1(aluidx), src2 = src2(aluidx), func = fuOpType(aluidx))
  alu.io.cfIn := io.in(aluidx).bits.cf
  alu.io.offset := io.in(aluidx).bits.data.imm
  alu.io.out.ready := io.out(aluidx).ready
  Debug("aluidx %x \n",aluidx)


  //ALU1
  val alu1idx = FuType.alu1
  val alu1 = Module(new ALU(hasBru = true,NO1 = if(Polaris_Independent_Bru == 1){false}else{true}))
  val alu1Out = alu1.access(valid = io.in(alu1idx).valid, src1 = src1(alu1idx), src2 = src2(alu1idx), func = fuOpType(alu1idx))
  alu1.io.cfIn := io.in(alu1idx).bits.cf
  alu1.io.offset := io.in(alu1idx).bits.data.imm
  alu1.io.out.ready := io.out(alu1idx).ready
  
  //SIMDU
  if(Polaris_SIMDU_WAY_NUM == 2){
    val simduidx = FuType.simdu
    val simdu1idx = FuType.simdu1
    val simdu = Module(new SIMDU_2way)
    
    val (simduOut,simdu1Out) = simdu.access(valid0 = io.in(simduidx).valid, src01 = src1(simduidx), src02 = src2(simduidx), func0 = fuOpType(simduidx),valid1 = io.in(simdu1idx).valid, src11 = src1(simdu1idx), src12 = src2(simdu1idx), func1 = fuOpType(simdu1idx))
    simdu.io.DecodeIn(0) := io.in(simduidx).bits
    simdu.io.DecodeIn(1) := io.in(simdu1idx).bits
    simdu.io.out(0).ready := io.out(simduidx).ready
    simdu.io.out(1).ready := io.out(simdu1idx).ready
    simdu.io.flush := io.flush
    val simdu_firststage_fire = Wire(Bool())
    simdu_firststage_fire := simdu.io.FirstStageFire(0)
    BoringUtils.addSource(simdu_firststage_fire, "simdu_fs_fire")
    val simdu1_firststage_fire = Wire(Bool())
    simdu1_firststage_fire := simdu.io.FirstStageFire(1)
    BoringUtils.addSource(simdu1_firststage_fire, "simdu1_fs_fire")
    
    io.out(simduidx).bits.decode <> simdu.io.DecodeOut(0)
    io.out(simdu1idx).bits.decode <> simdu.io.DecodeOut(1)
    io.out(simduidx).bits.decode.ctrl.rfWen := simdu.io.DecodeOut(0).ctrl.rfWen 
    io.out(simdu1idx).bits.decode.ctrl.rfWen:= simdu.io.DecodeOut(1).ctrl.rfWen
    io.out(FuType.simdu).valid := simdu.io.out(0).valid
    io.out(FuType.simdu1).valid := simdu.io.out(1).valid
    io.out(FuType.simdu).bits.commits := simduOut
    io.out(FuType.simdu1).bits.commits := simdu1Out
    io.in(simduidx).ready  := simdu.io.in(0).ready
    io.in(simdu1idx).ready := simdu.io.in(1).ready
  }else if(Polaris_SIMDU_WAY_NUM == 1){
    val simduidx = FuType.simdu
    val simdu = Module(new SIMDU)
    val simduOut = simdu.access(valid = io.in(simduidx).valid, src1 = src1(simduidx), src2 = src2(simduidx), func = fuOpType(simduidx))
    simdu.io.DecodeIn := io.in(simduidx).bits
    simdu.io.out.ready := io.out(simduidx).ready
    simdu.io.flush := io.flush
    val simdu_firststage_fire = Wire(Bool())
    simdu_firststage_fire := simdu.io.FirstStageFire
    BoringUtils.addSource(simdu_firststage_fire, "simdu_fs_fire")

    io.out(simduidx).bits.decode <> simdu.io.DecodeOut
    io.out(simduidx).bits.decode.ctrl.rfWen := simdu.io.DecodeOut.ctrl.rfWen
    io.out(FuType.simdu).valid := simdu.io.out.valid
    io.out(FuType.simdu).bits.commits := simduOut
    io.in(simduidx).ready := simdu.io.in.ready
  }

  //MDU
  val mduidx = FuType.mdu
  val mdu = Module(new MDU)
  val mduOut = mdu.access(valid = io.in(mduidx).valid, src1 = src1(mduidx), src2 = src2(mduidx), func = fuOpType(mduidx))
  mdu.io.out.ready := io.out(mduidx).ready
  mdu.io.flush := io.flush

  //bru
  val bruidx = FuType.bru
  if(Polaris_Independent_Bru == 1){
    val bru = Module(new ALU(hasBru = true,NO1 = true))
    val bruOut = bru.access(valid = io.in(bruidx).valid, src1 = src1(bruidx), src2 = src2(bruidx), func = fuOpType(bruidx))
    bru.io.cfIn := io.in(bruidx).bits.cf
    bru.io.offset := io.in(bruidx).bits.data.imm
    bru.io.out.ready := io.out(bruidx).ready
    io.out(bruidx).bits.decode.cf.redirect <> bru.io.redirect
    io.out(FuType.bru).valid := io.in(bruidx).valid 
    io.out(FuType.bru).bits.commits := bruOut
  }

  //LSU
  val lsuidx = FuType.lsu
  val BeforeLSUhasRedirect = notafter(io.in(bruidx).bits.InstNo,io.in(lsuidx).bits.InstNo,io.in(bruidx).bits.InstFlag,io.in(lsuidx).bits.InstFlag)&&io.out(bruidx).bits.decode.cf.redirect.valid
  val lsu = Module(new pipeline_lsu_atom)
  lsu.io.DecodeIn := io.in(lsuidx).bits
  val lsuOut = lsu.access(valid = io.in(lsuidx).valid && !BeforeLSUhasRedirect, src1 = src1(lsuidx), src2 = io.in(lsuidx).bits.data.imm, func = fuOpType(lsuidx))
  lsu.io.wdata := src2(lsuidx)
  for(i <- 0 to FuType.num-1){
    io.out(i).bits.isMMIO := i.U === lsuidx && (lsu.io.isMMIO && io.out(i).valid)
  }
  Debug("lsu_is_mmio %x \n",io.out(lsuidx).bits.isMMIO)
  io.dmem <> lsu.io.dmem
  lsu.io.out.ready := io.out(lsuidx).ready
  lsu.io.flush := io.flush
  io.out(lsuidx).bits.decode <> lsu.io.DecodeOut
  io.out(lsuidx).bits.decode.ctrl.rfWen := lsu.io.DecodeOut.ctrl.rfWen

  //CSRU
  val csridx = FuType.csr
  val csr_bits = Mux(io.in(csridx).valid, io.in(csridx).bits,lsu.io.DecodeOut)
  val csr = Module(new new_SIMD_CSR)
  val csrOut = csr.access(valid = io.in(csridx).valid, src1 = src1(csridx), src2 = src2(csridx), func = fuOpType(csridx),isMou = csr_bits.ctrl.isMou)
  Debug("isMou %x lsumou %x csrmou %x\n",csr_bits.ctrl.isMou,lsu.io.DecodeOut.ctrl.isMou,io.in(csridx).bits.ctrl.isMou)
  csr.io.cfIn := Mux(io.in(csridx).valid, io.in(csridx).bits.cf,lsu.io.DecodeOut.cf)
  csr.io.ctrlIn := Mux(io.in(csridx).valid, io.in(csridx).bits.ctrl,lsu.io.DecodeOut.ctrl)
  csr.io.cfIn.exceptionVec(loadAddrMisaligned) := lsu.io.loadAddrMisaligned 
  csr.io.cfIn.exceptionVec(storeAddrMisaligned) := lsu.io.storeAddrMisaligned
  val hasLoadPF = lsu.io.loadPF//RegInit(false.B)
  val hasStorePF= lsu.io.storePF//RegInit(false.B)
  /*
  when(io.memMMU.dmem.loadPF){
    hasLoadPF := true.B
  } 
  when(io.memMMU.dmem.storePF){
    hasStorePF := true.B
  }
  when(io.flush){
    hasLoadPF := false.B
    hasStorePF := false.B
  }
  */
  BoringUtils.addSource(io.memMMU.dmem.loadPF,"loadPF")
  BoringUtils.addSource(io.memMMU.dmem.storePF,"storePF")
  csr.io.cfIn.exceptionVec(loadPageFault) := hasLoadPF 
  csr.io.cfIn.exceptionVec(storePageFault) := hasStorePF
  val lsuexp = (lsu.io.loadAddrMisaligned || lsu.io.storeAddrMisaligned || hasStorePF || hasLoadPF)// && lsu.io.in.valid
  val csrfix =  csr.io.wenFix && io.in(csridx).valid
  csr.io.instrValid := (io.in(csridx).valid || lsuexp) && io.out(csridx).fire()
  //csr.io.isBackendException := false.B
  for(i <- 0 to FuType.num-1){
    io.out(i).bits.intrNO := DontCare
  }
  //csr.io.isBackendException := false.B
  csr.io.out.ready := true.B
  csr.io.imemMMU <> io.memMMU.imem
  csr.io.dmemMMU <> io.memMMU.dmem

  when(lsuexp){
    io.out(csridx).bits.decode.InstNo := lsu.io.DecodeOut.InstNo
    io.out(csridx).bits.decode.InstFlag := lsu.io.DecodeOut.InstFlag
    io.out(csridx).bits.decode := csr_bits
  }
  when(lsuexp || csrfix){
    io.out(csridx).bits.decode.ctrl.rfWen := false.B
  }

  //PerU need no parameter,use boringutils
  val PerfU = Module(new PerfU)

  io.out(csridx).bits.decode.cf.redirect <> csr.io.redirect
  io.out(aluidx).bits.decode.cf.redirect <> alu.io.redirect
  io.out(alu1idx).bits.decode.cf.redirect <> alu1.io.redirect
  
  io.out(FuType.alu).valid := io.in(aluidx).valid
  io.out(FuType.alu1).valid := io.in(alu1idx).valid
  io.out(FuType.lsu).valid := lsu.io.out.valid && !lsuexp
  io.out(FuType.mdu).valid := mdu.io.out.valid
  io.out(FuType.csr).valid := io.in(csridx).valid || lsuexp

  io.out(FuType.alu).bits.commits := aluOut
  io.out(FuType.lsu).bits.commits := lsuOut
  io.out(FuType.csr).bits.commits := csrOut
  io.out(FuType.mdu).bits.commits := mduOut
  io.out(FuType.alu1).bits.commits:= alu1Out

  io.in(lsuidx).ready := lsu.io.in.ready

  for(i <- 0 to FuType.num-1){
    io.forward(i).valid := io.out(i).valid
    io.forward(i).wb.rfWen := io.out(i).bits.decode.ctrl.rfWen //&& !IcantWrite(i)
    io.forward(i).wb.rfDest := io.out(i).bits.decode.ctrl.rfDest
    io.forward(i).wb.rfData := io.out(i).bits.commits
    io.forward(i).fuType := io.out(i).bits.decode.ctrl.fuType
    io.forward(i).InstNo := io.out(i).bits.decode.InstNo
  }

  if (!p.FPGAPlatform) {
    val cycleCnt = WireInit(0.U(64.W))
    val instrCnt = WireInit(0.U(64.W))
    val nutcoretrap = VecInit((0 to FuType.num-1).map(i => io.in(i).bits.ctrl.isNutCoreTrap && io.in(i).valid)).reduce(_||_)

    val tarpNo = PriorityMux(io.in.map(i => i.bits.ctrl.isNutCoreTrap).zipWithIndex.map{case(a,b)=>(a,b.U)})

    BoringUtils.addSink(cycleCnt, "simCycleCnt")
    BoringUtils.addSink(instrCnt, "simInstrCnt")
    BoringUtils.addSource(nutcoretrap, "nutcoretrap")
    val csrops = io.in(csridx).valid === true.B
    BoringUtils.addSource(csrops, "csrops")
    BoringUtils.addSource(io.in(csridx).valid && io.in.map(i=>i.valid.asUInt).reduce(_+&_) =/= 1.U,"csrnotalone")
    val LsuWorking = io.in(lsuidx).valid === true.B
    BoringUtils.addSource(LsuWorking, "perfCntCondLsuWorking")
    //BoringUtils.addSource(io.in(mouidx).valid && io.in.map(i=>i.valid.asUInt).reduce(_+&_) =/= 1.U,"mounotalone")

    val difftest = Module(new DifftestTrapEvent)
    difftest.io.clock    := clock
    difftest.io.coreid   := 0.U // TODO: nutshell does not support coreid auto config
    difftest.io.valid    := nutcoretrap
    difftest.io.code     := io.in(tarpNo).bits.data.src1
    difftest.io.pc       := io.in(tarpNo).bits.cf.pc
    difftest.io.cycleCnt := cycleCnt
    difftest.io.instrCnt := instrCnt
  }else{
    when(io.in(csridx).bits.ctrl.isNutCoreTrap){
      io.out(csridx).valid := false.B
    }
  }
  //Debug
  {
      for(i <- 0 to FuType.num-1){
        Debug("[SIMD_EXU] issue %x valid %x outvalid %x pc %x futype %x instrno %x outdata %x \n", i.U,io.in(i).valid, io.out(i).valid,io.in(i).bits.cf.pc, io.in(i).bits.ctrl.fuType, io.out(i).bits.decode.InstNo, io.out(i).bits.commits)
      }
      for(i<- 0 to FuType.num-1){
      Debug("[SIMD_EXU] [Issue: %x ]BeforeLSUhasRedirect %x TakeBranch %x BranchTo %x \n", i.U,BeforeLSUhasRedirect, io.out(i).bits.decode.cf.redirect.valid, io.out(i).bits.decode.cf.redirect.target)
      }
  }
  
}