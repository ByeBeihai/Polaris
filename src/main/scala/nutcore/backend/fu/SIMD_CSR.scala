package nutcore

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import top.Settings
import difftest._

trait SIMD_HasCSRConst {
  // Machine Information Registers 
  val Mvendorid     = 0xF11 
  val Marchid       = 0xF12 
  val Mimpid        = 0xF13 
  val Mhartid       = 0xF14 

  // Machine Trap Setup
  val Mstatus       = 0x300
  val Misa          = 0x301
  val Medeleg       = 0x302
  val Mideleg       = 0x303
  val Mie           = 0x304
  val Mtvec         = 0x305
  val Mcounteren    = 0x306 

  // Machine Trap Handling
  val Mscratch      = 0x340 
  val Mepc          = 0x341
  val Mcause        = 0x342
  val Mtval         = 0x343
  val Mip           = 0x344

  // Machine Memory Protection
  // TBD
  val Pmpcfg0       = 0x3A0
  val Pmpcfg1       = 0x3A1
  val Pmpcfg2       = 0x3A2
  val Pmpcfg3       = 0x3A3
  val PmpaddrBase   = 0x3B0 

  // P-ext
  val VXSAT            = 0x009

  // Machine Counter/Timers 
  // Currently, NutCore uses perfcnt csr set instead of standard Machine Counter/Timers 
  // 0xB80 - 0x89F are also used as perfcnt csr

  // Machine Counter Setup (not implemented)
  // Debug/Trace Registers (shared with Debug Mode) (not implemented)
  // Debug Mode Registers (not implemented)

  def privEcall  = 0x000.U
  def privEbreak = 0x001.U
  def privMret   = 0x302.U
  def privSret   = 0x102.U
  def privUret   = 0x002.U

  def ModeM     = 0x3.U
  def ModeH     = 0x2.U
  def ModeS     = 0x1.U
  def ModeU     = 0x0.U

  def IRQ_UEIP  = 0 
  def IRQ_SEIP  = 1
  def IRQ_MEIP  = 3 

  def IRQ_UTIP  = 4 
  def IRQ_STIP  = 5 
  def IRQ_MTIP  = 7 

  def IRQ_USIP  = 8 
  def IRQ_SSIP  = 9 
  def IRQ_MSIP  = 11 

  val IntPriority = Seq(
    IRQ_MEIP, IRQ_MSIP, IRQ_MTIP,
    IRQ_SEIP, IRQ_SSIP, IRQ_STIP,
    IRQ_UEIP, IRQ_USIP, IRQ_UTIP
  )
}

class SIMD_CSRIO extends FunctionUnitIO {
  val cfIn = Flipped(new CtrlFlowIO)
  val redirect = new RedirectIO
  // for exception check
  val instrValid = Input(Bool())
  val isBackendException = Input(Bool())
  // for differential testing
  val intrNO = Output(UInt(XLEN.W))
  val imemMMU = Flipped(new MMUIO)
  val dmemMMU = Flipped(new MMUIO)
  val wenFix = Output(Bool())
}

class SIMD_CSR(implicit val p: NutCoreConfig) extends NutCoreModule with SIMD_HasCSRConst{
  val io = IO(new SIMD_CSRIO)

  val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)
  def access(valid: Bool, src1: UInt, src2: UInt, func: UInt): UInt = {
    this.valid := valid
    this.src1 := src1
    this.src2 := src2
    this.func := func
    io.out.bits
  }

  // CSR define

  class Priv extends Bundle {
    val m = Output(Bool())
    val h = Output(Bool())
    val s = Output(Bool())
    val u = Output(Bool())
  }

  val csrNotImplemented = RegInit(UInt(XLEN.W), 0.U)
   
  class MstatusStruct extends Bundle {
    val sd = Output(UInt(1.W))

    val pad1 = if (XLEN == 64) Output(UInt(27.W)) else null
    val sxl  = if (XLEN == 64) Output(UInt(2.W))  else null
    val uxl  = if (XLEN == 64) Output(UInt(2.W))  else null
    val pad0 = if (XLEN == 64) Output(UInt(9.W))  else Output(UInt(8.W))

    val tsr = Output(UInt(1.W))
    val tw = Output(UInt(1.W))
    val tvm = Output(UInt(1.W))
    val mxr = Output(UInt(1.W))
    val sum = Output(UInt(1.W))
    val mprv = Output(UInt(1.W))
    val xs = Output(UInt(2.W))
    val fs = Output(UInt(2.W))
    val mpp = Output(UInt(2.W))
    val hpp = Output(UInt(2.W))
    val spp = Output(UInt(1.W))
    val pie = new Priv
    val ie = new Priv
  }

  class SatpStruct extends Bundle {
    val mode = UInt(4.W)
    val asid = UInt(16.W)
    val ppn  = UInt(44.W)
  }

  class Interrupt extends Bundle {
    val e = new Priv
    val t = new Priv
    val s = new Priv
  }

  // Machine-Level CSRs
  
  val mtvec = RegInit(UInt(XLEN.W), 0.U)
  val mcounteren = RegInit(UInt(XLEN.W), 0.U)
  val mcause = RegInit(UInt(XLEN.W), 0.U)
  val mtval = RegInit(UInt(XLEN.W), 0.U)
  val mepc = Reg(UInt(XLEN.W))
  val mie = RegInit(0.U(XLEN.W))
  val mipWire = WireInit(0.U.asTypeOf(new Interrupt))
  val mipReg  = RegInit(0.U.asTypeOf(new Interrupt).asUInt)
  val mipFixMask = "h77f".U
  val mip = (mipWire.asUInt | mipReg).asTypeOf(new Interrupt)

  def getMisaMxl(mxl: Int): UInt = {mxl.U << (XLEN-2)}
  def getMisaExt(ext: Char): UInt = {1.U << (ext.toInt - 'a'.toInt)} 
  var extList = List('s', 'i', 'u')
  if(HasMExtension){ extList = extList :+ 'm'}
  if(HasCExtension){ extList = extList :+ 'c'}
  val misaInitVal = 1.U << 63 | 0x14112d.U //getMisaMxl(2) | extList.foldLeft(0.U)((sum, i) => sum | getMisaExt(i)) 
  val misa = RegInit(UInt(XLEN.W), misaInitVal) 
  // MXL = 2          | 0 | EXT = b 00 0000 0100 0001 0001 0000 0100
  // (XLEN-1, XLEN-2) |   |(25, 0)  ZY XWVU TSRQ PONM LKJI HGFE DCBA

  val mvendorid = RegInit(UInt(XLEN.W), 0.U) // this is a non-commercial implementation
  val marchid = RegInit(UInt(XLEN.W), 0.U) // return 0 to indicate the field is not implemented
  val mimpid = RegInit(UInt(XLEN.W), 0.U) // provides a unique encoding of the version of the processor implementation
  val mhartid = RegInit(UInt(XLEN.W), 0.U) // the hardware thread running the code
  val mstatus = RegInit(UInt(XLEN.W), "h00001800".U)
  val mstatusStruct = mstatus.asTypeOf(new MstatusStruct)
  def mstatusUpdateSideEffect(mstatus: UInt): UInt = {
    val mstatusOld = WireInit(mstatus.asTypeOf(new MstatusStruct))
    val mstatusNew = Cat(mstatusOld.fs === "b11".U, mstatus(XLEN-2, 0))
    mstatusNew
  }

  val medeleg = RegInit(UInt(XLEN.W), 0.U)
  val mideleg = RegInit(UInt(XLEN.W), 0.U)
  val mscratch = RegInit(UInt(XLEN.W), 0.U)

  val pmpcfg0 = RegInit(UInt(XLEN.W), 0.U)
  val pmpcfg1 = RegInit(UInt(XLEN.W), 0.U)
  val pmpcfg2 = RegInit(UInt(XLEN.W), 0.U)
  val pmpcfg3 = RegInit(UInt(XLEN.W), 0.U)
  val pmpaddr0 = RegInit(UInt(XLEN.W), 0.U) 
  val pmpaddr1 = RegInit(UInt(XLEN.W), 0.U) 
  val pmpaddr2 = RegInit(UInt(XLEN.W), 0.U) 
  val pmpaddr3 = RegInit(UInt(XLEN.W), 0.U) 

  val vxsat = RegInit(UInt(XLEN.W), 0.U) 

  // Superviser-Level CSRs

  // User-Level CSRs

  // Hart Priviledge Mode
  val priviledgeMode = RegInit(UInt(2.W), ModeM)

  // CSR reg map
  val mapping = Map(
    // Machine Information Registers 
    MaskedRegMap(Mvendorid, mvendorid, 0.U, MaskedRegMap.Unwritable), 
    MaskedRegMap(Marchid, marchid, 0.U, MaskedRegMap.Unwritable), 
    MaskedRegMap(Mimpid, mimpid, 0.U, MaskedRegMap.Unwritable), 
    MaskedRegMap(Mhartid, mhartid, 0.U, MaskedRegMap.Unwritable), 

    // Machine Trap Setup
    // MaskedRegMap(Mstatus, mstatus, "hffffffffffffffee".U, (x=>{printf("mstatus write: %x time: %d\n", x, GTimer()); x})),
    MaskedRegMap(Mstatus, mstatus, "hffffffffffffffff".U, mstatusUpdateSideEffect),
    MaskedRegMap(Misa, misa), // now MXL, EXT is not changeable
    MaskedRegMap(Medeleg, medeleg, "hbbff".U),
    MaskedRegMap(Mideleg, mideleg, "h222".U),
    MaskedRegMap(Mie, mie),
    MaskedRegMap(Mtvec, mtvec),
    MaskedRegMap(Mcounteren, mcounteren), 

    // Machine Trap Handling
    MaskedRegMap(Mscratch, mscratch),
    MaskedRegMap(Mepc, mepc),
    MaskedRegMap(Mcause, mcause),
    MaskedRegMap(Mtval, mtval),
    MaskedRegMap(Mip, mip.asUInt, 0.U, MaskedRegMap.Unwritable),

    // Machine Memory Protection
    MaskedRegMap(Pmpcfg0, pmpcfg0),
    MaskedRegMap(Pmpcfg1, pmpcfg1),
    MaskedRegMap(Pmpcfg2, pmpcfg2),
    MaskedRegMap(Pmpcfg3, pmpcfg3),
    MaskedRegMap(PmpaddrBase + 0, pmpaddr0,"h3ffffffff".U),
    MaskedRegMap(PmpaddrBase + 1, pmpaddr1,"h3fffffc00".U),
    MaskedRegMap(PmpaddrBase + 2, pmpaddr2,"h3fffffc00".U),
    MaskedRegMap(PmpaddrBase + 3, pmpaddr3,"h3fffffc00".U),

    //p-ext
    MaskedRegMap(VXSAT,vxsat,1.U,MaskedRegMap.NoSideEffect,1.U)

  )

  val addr = src2(11, 0)
  val rdata = Wire(UInt(XLEN.W))
  val csri = ZeroExt(io.cfIn.instr(19,15), XLEN) //unsigned imm for csri. [TODO]
  val wdata = LookupTree(func, List(
    CSROpType.wrt  -> src1,
    CSROpType.set  -> (rdata | src1),
    CSROpType.clr  -> (rdata & ~src1),
    CSROpType.wrti -> csri,//TODO: csri --> src2
    CSROpType.seti -> (rdata | csri),
    CSROpType.clri -> (rdata & ~csri)
  ))

  // General CSR wen check
  val wen = (valid && func =/= CSROpType.jmp)  && !io.isBackendException
  val isIllegalMode  = priviledgeMode < addr(9, 8)
  val justRead = (func === CSROpType.set || func === CSROpType.seti) && src1 === 0.U  // csrrs and csrrsi are exceptions when their src1 is zero
  val isIllegalWrite = wen && (addr(11, 10) === "b11".U) && !justRead  // Write a read-only CSR register
  val isIllegalAccess = isIllegalMode || isIllegalWrite

  MaskedRegMap.generate(mapping, addr, rdata, wen && !isIllegalAccess, wdata)
  val isIllegalAddr = MaskedRegMap.isIllegalAddr(mapping, addr)
  io.out.bits := rdata

  // Fix Mip/Sip write
  val fixMapping = Map(
    MaskedRegMap(Mip, mipReg.asUInt, mipFixMask),
    //MaskedRegMap(Sip, mipReg.asUInt, sipMask, MaskedRegMap.NoSideEffect, sipMask)
  )
  val rdataDummy = Wire(UInt(XLEN.W))
  MaskedRegMap.generate(fixMapping, addr, rdataDummy, wen && !isIllegalAccess, wdata)

  // P-ext
  val OVWEN = WireInit(false.B)
  BoringUtils.addSink(OVWEN,"OVWEN")
  when(OVWEN){vxsat := 1.U}

  // CSR inst decode
  val ret = Wire(Bool())
  val isEbreak = addr === privEbreak && func === CSROpType.jmp && !io.isBackendException
  val isEcall = addr === privEcall && func === CSROpType.jmp && !io.isBackendException
  val isMret = addr === privMret   && func === CSROpType.jmp && !io.isBackendException
  val isSret = addr === privSret   && func === CSROpType.jmp && !io.isBackendException
  val isUret = addr === privUret   && func === CSROpType.jmp && !io.isBackendException

  Debug(wen, "csr write: pc %x addr %x rdata %x wdata %x func %x\n", io.cfIn.pc, addr, rdata, wdata, func)
  Debug(wen, "[MST] time %d pc %x mstatus %x mideleg %x medeleg %x mode %x\n", GTimer(), io.cfIn.pc, mstatus, mideleg , medeleg, priviledgeMode)
  Debug("[CSR] mip %x mipreg %x mipwire %x \n", mip.asUInt,mipReg.asUInt,mipWire.asUInt)

  //TODO: Havn't test if io.dmemMMU.priviledgeMode is correct yet
  io.imemMMU.priviledgeMode := priviledgeMode
  io.dmemMMU.priviledgeMode := Mux(mstatusStruct.mprv.asBool, mstatusStruct.mpp, priviledgeMode)
  io.imemMMU.status_sum := mstatusStruct.sum.asBool
  io.dmemMMU.status_sum := mstatusStruct.sum.asBool
  io.imemMMU.status_mxr := DontCare
  io.dmemMMU.status_mxr := mstatusStruct.mxr.asBool

  val hasInstrPageFault = io.cfIn.exceptionVec(instrPageFault) && valid
  val hasLoadPageFault = io.dmemMMU.loadPF
  val hasStorePageFault = io.dmemMMU.storePF
  val hasStoreAddrMisaligned = io.cfIn.exceptionVec(storeAddrMisaligned)
  val hasLoadAddrMisaligned = io.cfIn.exceptionVec(loadAddrMisaligned)

  val dmemPagefaultAddr = io.dmemMMU.addr
  val dmemAddrMisalignedAddr = Wire(UInt(VAddrBits.W))
  val lsuAddr = WireInit(0.U(64.W))
  BoringUtils.addSink(lsuAddr, "LSUADDR")

  hasInstrPageFault := io.cfIn.exceptionVec(instrPageFault) && valid
  hasLoadPageFault := io.dmemMMU.loadPF
  hasStorePageFault := io.dmemMMU.storePF
  hasStoreAddrMisaligned := io.cfIn.exceptionVec(storeAddrMisaligned)
  hasLoadAddrMisaligned := io.cfIn.exceptionVec(loadAddrMisaligned)
  dmemPagefaultAddr := io.dmemMMU.addr
  dmemAddrMisalignedAddr := lsuAddr

  when(hasInstrPageFault || hasLoadPageFault || hasStorePageFault){
    val tval = Mux(hasInstrPageFault, Mux(io.cfIn.crossPageIPFFix, SignExt((io.cfIn.pc + 2.U)(VAddrBits-1,0), XLEN), SignExt(io.cfIn.pc(VAddrBits-1,0), XLEN)), SignExt(dmemPagefaultAddr, XLEN))
    when(priviledgeMode === ModeM){
      mtval := tval
    }
    Debug("[PF] %d: ipf %b tval %x := addr %x pc %x priviledgeMode %x\n", GTimer(), hasInstrPageFault, tval, SignExt(dmemPagefaultAddr, XLEN), io.cfIn.pc, priviledgeMode)
  }

  when(hasLoadAddrMisaligned || hasStoreAddrMisaligned)
  {
    mtval := SignExt(dmemAddrMisalignedAddr, XLEN)
    Debug("[ML] %d: addr %x pc %x priviledgeMode %x\n", GTimer(), SignExt(dmemAddrMisalignedAddr, XLEN), io.cfIn.pc, priviledgeMode)
  }
  // Exception and Intr

  // interrupts

  val mtip = WireInit(false.B)
  val meip = WireInit(false.B)
  val msip = WireInit(false.B)
  BoringUtils.addSink(mtip, "mtip")
  BoringUtils.addSink(meip, "meip")
  BoringUtils.addSink(msip, "msip")
  mipWire.t.m := mtip
  mipWire.e.m := meip
  mipWire.s.m := msip
  
  // SEIP from PLIC is only used to raise interrupt,
  // but it is not stored in the CSR
  val seip = meip    // FIXME: PLIC should generate SEIP different from MEIP
  val mipRaiseIntr = WireInit(mip)
  mipRaiseIntr.e.s := mip.e.s | seip

  val ideleg =  (mideleg & mipRaiseIntr.asUInt)
  def priviledgedEnableDetect(x: Bool): Bool = Mux(x, ((priviledgeMode === ModeS) && mstatusStruct.ie.s) || (priviledgeMode < ModeS),
                                   ((priviledgeMode === ModeM) && mstatusStruct.ie.m) || (priviledgeMode < ModeM))

  val intrVecEnable = Wire(Vec(12, Bool()))
  intrVecEnable.zip(ideleg.asBools).map{case(x,y) => x := priviledgedEnableDetect(y)}
  val intrVec = mie(11,0) & mipRaiseIntr.asUInt & intrVecEnable.asUInt
  BoringUtils.addSource(intrVec, "intrVecIDU")
  // val intrNO = PriorityEncoder(intrVec)
  
  val intrNO = IntPriority.foldRight(0.U)((i: Int, sum: UInt) => Mux(io.cfIn.intrVec(i), i.U, sum))
  // val intrNO = PriorityEncoder(io.cfIn.intrVec)
  val raiseIntr = io.cfIn.intrVec.asUInt.orR

  // exceptions

  // TODO: merge iduExceptionVec, csrExceptionVec as raiseExceptionVec
  val csrExceptionVec = Wire(Vec(16, Bool()))
  csrExceptionVec.map(_ := false.B)
  csrExceptionVec(breakPoint) := io.in.valid && isEbreak
  csrExceptionVec(ecallM) := priviledgeMode === ModeM && io.in.valid && isEcall
  csrExceptionVec(ecallS) := priviledgeMode === ModeS && io.in.valid && isEcall
  csrExceptionVec(ecallU) := priviledgeMode === ModeU && io.in.valid && isEcall
  csrExceptionVec(illegalInstr) := (isIllegalAddr || isIllegalAccess) && wen && !io.isBackendException // Trigger an illegal instr exception when unimplemented csr is being read/written or not having enough priviledge
  csrExceptionVec(loadPageFault) := hasLoadPageFault
  csrExceptionVec(storePageFault) := hasStorePageFault
  val iduExceptionVec = io.cfIn.exceptionVec
  val raiseExceptionVec = csrExceptionVec.asUInt() | iduExceptionVec.asUInt()
  val raiseException = raiseExceptionVec.orR
  val exceptionNO = ExcPriority.foldRight(0.U)((i: Int, sum: UInt) => Mux(raiseExceptionVec(i), i.U, sum))
  io.wenFix := raiseException

  val causeNO = (raiseIntr << (XLEN-1)) | Mux(raiseIntr, intrNO, exceptionNO)
  io.intrNO := Mux(raiseIntr, causeNO, 0.U)

  val raiseExceptionIntr = (raiseException || raiseIntr) && io.instrValid
  val retTarget = Wire(UInt(VAddrBits.W))
  val trapTarget = Wire(UInt(VAddrBits.W))
  io.redirect.valid := (valid && func === CSROpType.jmp) || raiseExceptionIntr 
  io.redirect.rtype := 0.U
  io.redirect.target := Mux(raiseExceptionIntr, trapTarget, retTarget)

  Debug(raiseExceptionIntr, "excin %b excgen %b", csrExceptionVec.asUInt(), iduExceptionVec.asUInt())
  Debug(raiseExceptionIntr, "int/exc: pc %x int (%d):%x exc: (%d):%x\n",io.cfIn.pc, intrNO, io.cfIn.intrVec.asUInt, exceptionNO, raiseExceptionVec.asUInt)
  Debug(raiseExceptionIntr, "[MST] time %d pc %x mstatus %x mideleg %x medeleg %x mode %x\n", GTimer(), io.cfIn.pc, mstatus, mideleg , medeleg, priviledgeMode)
  Debug(io.redirect.valid, "redirect to %x\n", io.redirect.target)

  // Branch control

  val deleg = Mux(raiseIntr, mideleg , medeleg)
  // val delegS = ((deleg & (1 << (causeNO & 0xf))) != 0) && (priviledgeMode < ModeM);
  val delegS = (deleg(causeNO(3,0))) && (priviledgeMode < ModeM)
  val tvalWen = !(hasInstrPageFault || hasLoadPageFault || hasStorePageFault || hasLoadAddrMisaligned || hasStoreAddrMisaligned) || raiseIntr // in nutcore-riscv64, no exception will come together with PF

  ret := isMret
  trapTarget := mtvec(VAddrBits-1, 0)
  retTarget := DontCare
  // TODO redirect target
  // val illegalEret = TODO

  when (valid && isMret) {
    val mstatusOld = WireInit(mstatus.asTypeOf(new MstatusStruct))
    val mstatusNew = WireInit(mstatus.asTypeOf(new MstatusStruct))
    // mstatusNew.mpp.m := ModeU //TODO: add mode U
    mstatusNew.ie.m := mstatusOld.pie.m
    priviledgeMode := mstatusOld.mpp
    mstatusNew.pie.m := true.B
    mstatusNew.mpp := ModeU
    mstatus := mstatusNew.asUInt
    retTarget := mepc(VAddrBits-1, 0)
  }

  when (raiseExceptionIntr) {
    val mstatusOld = WireInit(mstatus.asTypeOf(new MstatusStruct))
    val mstatusNew = WireInit(mstatus.asTypeOf(new MstatusStruct))
    mcause := causeNO
    mepc := SignExt(io.cfIn.pc, XLEN)
    mstatusNew.mpp := priviledgeMode
    mstatusNew.pie.m := mstatusOld.ie.m
    mstatusNew.ie.m := false.B
    priviledgeMode := ModeM
    when(tvalWen){mtval := 0.U} // TODO: should not use =/=
    mstatus := mstatusNew.asUInt
  }

  io.in.ready := true.B
  io.out.valid := valid

  if (!p.FPGAPlatform) {
    // for differential testing
    val difftest = Module(new DifftestCSRState)
    difftest.io.clock := clock
    difftest.io.coreid := 0.U // TODO
    difftest.io.priviledgeMode := RegNext(priviledgeMode)
    difftest.io.mstatus := RegNext(mstatus)
    //difftest.io.sstatus := RegNext(mstatus & sstatusRmask)
    difftest.io.mepc := (RegNext(mepc) >> 1)<<1
    ///difftest.io.sepc := RegNext(sepc)
    difftest.io.mtval:= RegNext(mtval)
    //difftest.io.stval:= RegNext(stval)
    difftest.io.mtvec := RegNext(mtvec)
    //difftest.io.stvec := RegNext(stvec)
    difftest.io.mcause := RegNext(mcause)
    //difftest.io.scause := RegNext(scause)
    //difftest.io.satp := RegNext(satp)
    difftest.io.mip := RegNext(mipReg)
    difftest.io.mie := RegNext(mie)
    difftest.io.mscratch := RegNext(mscratch)
    //difftest.io.sscratch := RegNext(sscratch)
    difftest.io.mideleg := RegNext(mideleg)
    difftest.io.medeleg := RegNext(medeleg)
    //difftest.io.vxsat   := vxsat

    val difftestArchEvent = Module(new DifftestArchEvent)
    difftestArchEvent.io.clock := clock
    difftestArchEvent.io.coreid := 0.U // TODO
    difftestArchEvent.io.intrNO := RegNext(RegNext(Mux(raiseIntr && io.instrValid && valid, intrNO, 0.U)))
    difftestArchEvent.io.cause := RegNext(RegNext(Mux(raiseException && io.instrValid && valid, exceptionNO, 0.U)))
    difftestArchEvent.io.exceptionPC := RegNext(RegNext(SignExt(io.cfIn.pc, XLEN)))
    difftestArchEvent.io.exceptionInst := RegNext(RegNext(io.cfIn.instr))

  } 
  Debug("[CSR!!!] mtval %x tval %x pf %x misaligned %x tvalwen %x \n",mtval,Mux(hasInstrPageFault, Mux(io.cfIn.crossPageIPFFix, SignExt((io.cfIn.pc + 2.U)(VAddrBits-1,0), XLEN), SignExt(io.cfIn.pc(VAddrBits-1,0), XLEN)), SignExt(dmemPagefaultAddr, XLEN)),hasInstrPageFault || hasLoadPageFault || hasStorePageFault,hasLoadAddrMisaligned || hasStoreAddrMisaligned,tvalWen)

}

class new_CSRIO extends FunctionUnitIO {
  val cfIn = Flipped(new CtrlFlowIO)
  val ctrlIn = Flipped(new CtrlSignalIO)
  val redirect = new RedirectIO
  // for exception check
  val instrValid = Input(Bool())
  //val isBackendException = Input(Bool())
  // for differential testing
  //val intrNO = Output(UInt(XLEN.W))
  val imemMMU = Flipped(new MMUIO)
  val dmemMMU = Flipped(new MMUIO)
  val wenFix = Output(Bool())
}

class new_SIMD_CSR(implicit val p: NutCoreConfig) extends NutCoreModule with HasCSRConst{
  val io = IO(new new_CSRIO)

  val (valid, src1, src2, func, isMou) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func,io.ctrlIn.isMou)
  def access(valid: Bool, src1: UInt, src2: UInt, func: UInt, isMou:UInt): UInt = {
    this.valid := valid
    this.src1 := src1
    this.src2 := src2
    this.func := func
    this.isMou :=isMou
    io.out.bits
  }

  // CSR define

  class Priv extends Bundle {
    val m = Output(Bool())
    val h = Output(Bool())
    val s = Output(Bool())
    val u = Output(Bool())
  }
   
  class MstatusStruct extends Bundle {
    val sd = Output(UInt(1.W))

    val pad1 = if (XLEN == 64) Output(UInt(27.W)) else null
    val sxl  = if (XLEN == 64) Output(UInt(2.W))  else null
    val uxl  = if (XLEN == 64) Output(UInt(2.W))  else null
    val pad0 = if (XLEN == 64) Output(UInt(9.W))  else Output(UInt(8.W))

    val tsr = Output(UInt(1.W))
    val tw = Output(UInt(1.W))
    val tvm = Output(UInt(1.W))
    val mxr = Output(UInt(1.W))
    val sum = Output(UInt(1.W))
    val mprv = Output(UInt(1.W))
    val xs = Output(UInt(2.W))
    val fs = Output(UInt(2.W))
    val mpp = Output(UInt(2.W))
    val hpp = Output(UInt(2.W))
    val spp = Output(UInt(1.W))
    val pie = new Priv
    val ie = new Priv
  }

  class SatpStruct extends Bundle {
    val mode = UInt(4.W)
    val asid = UInt(16.W)
    val ppn  = UInt(44.W)
  }

  class Interrupt extends Bundle {
    val e = new Priv
    val t = new Priv
    val s = new Priv
  }

  // Atom LR/SC Control Bits
  val setLr = WireInit(Bool(), false.B)
  val setLrVal = WireInit(Bool(), false.B)
  val setLrAddr = WireInit(UInt(AddrBits.W), DontCare) //TODO : need check
  val lr = RegInit(Bool(), false.B)
  val lrAddr = RegInit(UInt(AddrBits.W), 0.U)
  BoringUtils.addSink(setLr, "set_lr")
  BoringUtils.addSink(setLrVal, "set_lr_val")
  BoringUtils.addSink(setLrAddr, "set_lr_addr")
  BoringUtils.addSource(lr, "lr")
  BoringUtils.addSource(lrAddr, "lr_addr")

  when(setLr){
    lr := setLrVal
    lrAddr := setLrAddr
  }

  // Machine-Level CSRs
  
  val mtvec = RegInit(UInt(XLEN.W), 0.U)
  val mcounteren = RegInit(UInt(XLEN.W), 0.U)
  val mcause = RegInit(UInt(XLEN.W), 0.U)
  val mtval = RegInit(UInt(XLEN.W), 0.U)
  val mepc = Reg(UInt(XLEN.W))

  val mie = RegInit(0.U(XLEN.W))
  val mipWire = WireInit(0.U.asTypeOf(new Interrupt))
  val mipReg  = RegInit(0.U.asTypeOf(new Interrupt).asUInt)
  val mipFixMask = "h77f".U

  var extList = List('a', 's', 'i', 'u')
  if(HasMExtension){ extList = extList :+ 'm'}
  if(HasCExtension){ extList = extList :+ 'c'}
  val misaInitVal = 1.U << 63 | 0x141105.U //getMisaMxl(2) | extList.foldLeft(0.U)((sum, i) => sum | getMisaExt(i)) //"h8000000000141105".U 
  val misa = RegInit(UInt(XLEN.W), misaInitVal) 
  // MXL = 2          | 0 | EXT = b 00 0000 0100 0001 0001 0000 0101
  // (XLEN-1, XLEN-2) |   |(25, 0)  ZY XWVU TSRQ PONM LKJI HGFE DCBA

  val mvendorid = RegInit(UInt(XLEN.W), 0.U) // this is a non-commercial implementation
  val marchid = RegInit(UInt(XLEN.W), 0.U) // return 0 to indicate the field is not implemented
  val mimpid = RegInit(UInt(XLEN.W), 0.U) // provides a unique encoding of the version of the processor implementation
  val mhartid = RegInit(UInt(XLEN.W), 0.U) // the hardware thread running the code
  val mstatus = RegInit(UInt(XLEN.W), "h00001800".U)
  val mstatusStruct = mstatus.asTypeOf(new MstatusStruct)
  val medeleg = RegInit(UInt(XLEN.W), 0.U)
  val mideleg = RegInit(UInt(XLEN.W), 0.U)
  val mscratch = RegInit(UInt(XLEN.W), 0.U)

  val pmpcfg0 = RegInit(UInt(XLEN.W), 0.U)
  val pmpcfg1 = RegInit(UInt(XLEN.W), 0.U)
  val pmpcfg2 = RegInit(UInt(XLEN.W), 0.U)
  val pmpcfg3 = RegInit(UInt(XLEN.W), 0.U)
  val pmpaddr0 = RegInit(UInt(XLEN.W), 0.U) 
  val pmpaddr1 = RegInit(UInt(XLEN.W), 0.U) 
  val pmpaddr2 = RegInit(UInt(XLEN.W), 0.U) 
  val pmpaddr3 = RegInit(UInt(XLEN.W), 0.U) 

  val vxsat = RegInit(UInt(XLEN.W), 0.U) 

  // Superviser-Level CSRs

  // val sstatus = RegInit(UInt(XLEN.W), "h00000000".U)
  val sstatusWmask = "hc6122".U
  val sstatusRmask = sstatusWmask | "h8000000300018000".U
  val stvec = RegInit(UInt(XLEN.W), 0.U)
  val sieMask = "h222".U & mideleg
  val sipMask  = "h222".U & mideleg
  val satp = RegInit(UInt(XLEN.W), 0.U)
  val sepc = RegInit(UInt(XLEN.W), 0.U)
  val scause = RegInit(UInt(XLEN.W), 0.U)
  val stval = Reg(UInt(XLEN.W))
  val sscratch = RegInit(UInt(XLEN.W), 0.U)
  val scounteren = RegInit(UInt(XLEN.W), 0.U)

  //ret target
  val retTarget = WireInit(0.U(VAddrBits-1, 0))
  val trapTarget = WireInit(0.U(VAddrBits-1, 0))

  // User-Level CSRs
  val uepc = Reg(UInt(XLEN.W))

  // Hart Priviledge Mode
  val priviledgeMode = RegInit(UInt(2.W), ModeM)

  val addr = src2(16, 5)
  val csri = SignExt(src2(4, 0),XLEN) 
  val rdata = Wire(UInt(XLEN.W))
  val wdata = LookupTree(func, List(
    CSROpType.wrt  -> src1,
    CSROpType.set  -> (rdata | src1),
    CSROpType.clr  -> (rdata & ~src1),
    CSROpType.wrti -> csri,
    CSROpType.seti -> (rdata | csri),
    CSROpType.clri -> (rdata & ~csri)
  ))

  // CSR basic read and write
  val JumpType= func === CSROpType.jmp
  val wen = valid && !JumpType && !isMou
  val isIllegalMode  = wen && priviledgeMode < addr(9, 8)
  val justRead = (func === CSROpType.set || func === CSROpType.seti) && src1 === 0.U  // csrrs and csrrsi are exceptions when their src1 is zero
  val isIllegalWrite = wen && (addr(11, 10) === "b11".U) && !justRead  // Write a read-only CSR register

  val RegWen = wen && !isIllegalWrite && !isIllegalMode
  val isIllegalAddr = WireInit(false.B)
  val resetSatp = WireInit(false.B)
  when(addr === Sstatus.U){
    rdata := mstatus & sstatusRmask
    val tmp = (mstatus & ~sstatusWmask) | (wdata & sstatusWmask) 
    when(RegWen){mstatus := Cat(tmp.asTypeOf(new MstatusStruct).fs === "b11".U, tmp(XLEN-2,0))}
  }.elsewhen(addr === Sie.U){
    rdata := mie & sieMask
    when(RegWen && io.cfIn.pc =/= "h80001f04".U){mie := (mie & ~sieMask)|(wdata & sieMask)}
  }.elsewhen(addr === Stvec.U){
    rdata := stvec
    when(RegWen){stvec := wdata}
  }.elsewhen(addr === Scounteren.U){
    rdata := scounteren
    when(RegWen){scounteren := wdata}
  }.elsewhen(addr === Sscratch.U){
    rdata := sscratch
    when(RegWen){sscratch := wdata}
  }.elsewhen(addr === Sepc.U){
    rdata := sepc
    when(RegWen){sepc := wdata}
  }.elsewhen(addr === Scause.U){
    rdata := scause
    when(RegWen){scause := wdata}
  }.elsewhen(addr === Stval.U){
    rdata := stval
    when(RegWen){stval := wdata}
  }.elsewhen(addr === Satp.U){
    rdata := satp
    when(RegWen && (wdata.asTypeOf(new SatpStruct).mode === 0.U || wdata.asTypeOf(new SatpStruct).mode === 8.U)){
      satp := wdata
      resetSatp := true.B
    }
  }.elsewhen(addr === Mstatus.U){
    rdata := mstatus
    val tmp = wdata
    when(RegWen){mstatus := Cat(tmp.asTypeOf(new MstatusStruct).fs === "b11".U, tmp(XLEN-2,0))}
  }.elsewhen(addr === Misa.U){
    rdata := misa
  }.elsewhen(addr === Medeleg.U){
    rdata := medeleg
    val medelegMask = "hbbff".U
    when(RegWen){medeleg := (wdata & medelegMask) | (medeleg & ~medelegMask)}
  }.elsewhen(addr === Mideleg.U){
    rdata := mideleg
    val midelegMask = "h222".U
    when(RegWen){mideleg := (wdata & midelegMask) | (mideleg & ~midelegMask)}
  }.elsewhen(addr === Mie.U){
    rdata := mie
    when(RegWen){mie := wdata}
  }.elsewhen(addr === Mtvec.U){
    rdata := mtvec
    when(RegWen){mtvec := wdata}
  }.elsewhen(addr === Mcounteren.U){
    rdata := mcounteren
    when(RegWen){mcounteren := wdata}
  }.elsewhen(addr === Mvendorid.U || addr === Marchid.U || addr === Mimpid.U || addr === Mhartid.U){
    rdata := 0.U
  }.elsewhen(addr === Mscratch.U){
    rdata := mscratch
    when(RegWen){mscratch := wdata}
  }.elsewhen(addr === Mepc.U){
    rdata := mepc
    when(RegWen){mepc := wdata}
  }.elsewhen(addr === Mcause.U){
    rdata := mcause
    when(RegWen){mcause := wdata}
  }.elsewhen(addr === Mtval.U){
    rdata := mtval
    when(RegWen){mtval := wdata}
  }.elsewhen(addr === Pmpcfg0.U){
    rdata := pmpcfg0
    when(RegWen){pmpcfg0 := wdata}
  }.elsewhen(addr === Pmpcfg1.U){
    rdata := pmpcfg1
    when(RegWen){pmpcfg1 := wdata}
  }.elsewhen(addr === Pmpcfg2.U){
    rdata := pmpcfg2
    when(RegWen){pmpcfg2 := wdata}
  }.elsewhen(addr === Pmpcfg3.U){
    rdata := pmpcfg3
    when(RegWen){pmpcfg3 := wdata}
  }.elsewhen(addr === (PmpaddrBase + 0).U){
    rdata := pmpaddr0
    val pmpaddr0Mask = "h3ffffffff".U
    when(RegWen){pmpaddr0 := (wdata & pmpaddr0Mask) | (pmpaddr0 & ~pmpaddr0Mask)}
  }.elsewhen(addr === (PmpaddrBase + 1).U){
    rdata := pmpaddr1
    val pmpaddr1Mask = "h3fffffc00".U
    when(RegWen){pmpaddr1 := (wdata & pmpaddr1Mask) | (pmpaddr1 & ~pmpaddr1Mask)}
  }.elsewhen(addr === (PmpaddrBase + 2).U){
    rdata := pmpaddr2
    val pmpaddr2Mask = "h3fffffc00".U
    when(RegWen){pmpaddr2 := (wdata & pmpaddr2Mask) | (pmpaddr2 & ~pmpaddr2Mask)}
  }.elsewhen(addr === (PmpaddrBase + 3).U){
    rdata := pmpaddr3
    val pmpaddr3Mask = "h3fffffc00".U
    when(RegWen){pmpaddr3 := (wdata & pmpaddr3Mask) | (pmpaddr3 & ~pmpaddr3Mask)}
  }.elsewhen(addr === VXSAT.U){
    rdata := vxsat & 1.U
    when(RegWen){vxsat := (wdata & 1.U)}
  }.elsewhen(addr === Sip.U){
    rdata := mipWire.asUInt | mipReg
    when(RegWen){mipReg := (wdata & sipMask) | (mipReg & ~sipMask)}
  }.elsewhen(addr === Mip.U){
    rdata := mipWire.asUInt | mipReg //when need diff on rtthread，set it to 0.U
    when(RegWen){mipReg:= (wdata & mipFixMask) | (mipReg & ~mipFixMask)}
  }.otherwise{
    rdata := 0.U
    isIllegalAddr:= wen
  }

  //p-ext
  val OVWEN = WireInit(false.B)
  BoringUtils.addSink(OVWEN,"OVWEN")
  when(OVWEN){vxsat := 1.U}

  // xRet:mret,sret,uret
  val isMret  = addr === privMret && JumpType 
  val isSret  = addr === privSret && JumpType 
  val isUret  = addr === privUret && JumpType 
  val isIllegalSret = isSret && mstatusStruct.tsr.asBool
  val isRet   = valid && !isMou && (isMret || isSret || isUret) && !isIllegalSret

  Debug(wen, "csr write: pc %x addr %x rdata %x wdata %x func %x\n", io.cfIn.pc, addr, rdata, wdata, func)
  Debug(wen, "[MST] time %d pc %x mstatus %x mideleg %x medeleg %x mode %x\n", GTimer(), io.cfIn.pc, mstatus, mideleg , medeleg, priviledgeMode)
  

  // Exception and Intr
  // interrupts
  val intrVecEnable = Wire(Vec(12, Bool()))
  (0 to 12-1).map(i => intrVecEnable(i) := Mux(priviledgeMode < ModeM,  (priviledgeMode === ModeS && mstatusStruct.ie.s) || priviledgeMode < ModeS
                                                                        , !mideleg(i) && mstatusStruct.ie.m))
  val mipVec  = mipWire.asUInt | mipReg
  val intrVec = mie(11,0) & mipVec & intrVecEnable.asUInt
  val intrNO = IntPriority.map(i => i.U).reduceLeft((x,y)=>Mux(io.cfIn.intrVec(x),x,y))
  val raiseIntr = io.cfIn.intrVec.asUInt.orR
  Debug("[CSR] mip %x mipreg %x mipwire %x \n", mipVec,mipReg.asUInt,mipWire.asUInt)

  // exceptions
  val csrExceptionVec = WireInit(io.cfIn.exceptionVec) //merge iduexc lsuexc csruexc to csrExceptionVec
  csrExceptionVec(breakPoint) := io.in.valid && addr === privEbreak && JumpType
  csrExceptionVec(ecallM) := priviledgeMode === ModeM && io.in.valid && addr === privEcall && JumpType
  csrExceptionVec(ecallS) := priviledgeMode === ModeS && io.in.valid && addr === privEcall && JumpType
  csrExceptionVec(ecallU) := priviledgeMode === ModeU && io.in.valid && addr === privEcall && JumpType
  csrExceptionVec(illegalInstr) := isIllegalAddr || isIllegalWrite || isIllegalMode || isIllegalSret || io.cfIn.exceptionVec(illegalInstr)//&& !io.isBackendException // Trigger an illegal instr exception when unimplemented csr is being read/written or not having enough priviledge
  csrExceptionVec(loadPageFault) := io.dmemMMU.loadPF || io.cfIn.exceptionVec(loadPageFault)
  csrExceptionVec(storePageFault) := io.dmemMMU.storePF || io.cfIn.exceptionVec(storePageFault)
  val raiseException = csrExceptionVec.asUInt.orR 
  val exceptionNO = ExcPriority.map(i => i.U).reduceLeft((x,y)=>Mux(csrExceptionVec(x),x,y))

  //merge interrupts and exceptions
  val raiseExceptionIntr = (raiseException || raiseIntr) && io.instrValid && !isMou
  val causeNO = Cat(raiseIntr,Fill(XLEN-1,0.U)) | Mux(raiseIntr, intrNO, exceptionNO)

  Debug(raiseExceptionIntr, "excin %b excgen %b \n", io.cfIn.exceptionVec.asUInt,csrExceptionVec.asUInt())
  Debug(raiseExceptionIntr, "int/exc: pc %x int (%d):%x exc: (%d):%x\n",io.cfIn.pc, intrNO, io.cfIn.intrVec.asUInt, exceptionNO, csrExceptionVec.asUInt)
  Debug("[MST] time %d pc %x mstatus %x mideleg %x medeleg %x mode %x isMou %x\n", GTimer(), io.cfIn.pc, mstatus, mideleg , medeleg, priviledgeMode,isMou)
  Debug(io.redirect.valid, "redirect to %x\n", io.redirect.target)
  Debug(resetSatp, "satp reset\n")

  //xRet and exc and intr
  val mstatusNew = WireInit(mstatus.asTypeOf(new MstatusStruct))
  val delegS = (Mux(raiseIntr, mideleg , medeleg)(causeNO(3,0))) && (priviledgeMode < ModeM)

  when (raiseExceptionIntr) {//Exception or Interrupt
    val isPageFault= csrExceptionVec(instrPageFault) || csrExceptionVec(loadPageFault) || csrExceptionVec(storePageFault)
    val isMissAlign= csrExceptionVec(loadAddrMisaligned) || csrExceptionVec(storeAddrMisaligned)

    val dmemPagefaultAddr = io.dmemMMU.addr
    val dmemAddrMisalignedAddr = Wire(UInt(VAddrBits.W))
    val lsuAddr = WireInit(0.U(64.W))
    BoringUtils.addSink(lsuAddr, "LSUADDR")
    dmemAddrMisalignedAddr := lsuAddr

    val new_tval = Mux(isMissAlign,SignExt(dmemAddrMisalignedAddr, XLEN),
                      Mux(csrExceptionVec(instrPageFault), Mux(io.cfIn.crossPageIPFFix, SignExt((io.cfIn.pc + 2.U)(VAddrBits-1,0), XLEN), SignExt(io.cfIn.pc(VAddrBits-1,0), XLEN)), SignExt(dmemPagefaultAddr, XLEN)))
    when (delegS) {
      scause := causeNO
      sepc := SignExt(io.cfIn.pc, XLEN)
      mstatusNew.spp := priviledgeMode
      mstatusNew.pie.s := mstatus.asTypeOf(new MstatusStruct).ie.s
      mstatusNew.ie.s := false.B
      priviledgeMode := ModeS
      when(isPageFault | isMissAlign){
        stval := new_tval
      }.otherwise{
        stval := 0.U
      }
      trapTarget := stvec(VAddrBits-1,0)
    }.otherwise {
      mcause := causeNO
      mepc := SignExt(io.cfIn.pc, XLEN)
      mstatusNew.mpp := priviledgeMode
      mstatusNew.pie.m := mstatus.asTypeOf(new MstatusStruct).ie.m
      mstatusNew.ie.m := false.B
      priviledgeMode := ModeM
      when(isPageFault | isMissAlign){
        mtval := new_tval
      }.otherwise{
        mtval := 0.U
      }
      trapTarget := mtvec(VAddrBits-1,0)
    }
    mstatus := mstatusNew.asUInt
    lr := false.B
  }.elsewhen(isRet){//xRet
    when (isMret) {
      priviledgeMode := mstatusStruct.mpp
      mstatusNew.ie.m := mstatusStruct.pie.m
      mstatusNew.pie.m := true.B
      mstatusNew.mpp := ModeU
      retTarget := mepc(VAddrBits-1, 0)
    }.elsewhen (isSret) {
      priviledgeMode := Cat(0.U(1.W), mstatusStruct.spp)
      mstatusNew.ie.s := mstatusStruct.pie.s
      mstatusNew.pie.s := true.B
      mstatusNew.spp := ModeU
      retTarget := sepc(VAddrBits-1, 0)
    }.elsewhen (isUret) {
      priviledgeMode := ModeU
      mstatusNew.ie.u := mstatusStruct.pie.u
      mstatusNew.pie.u := true.B
      retTarget := uepc(VAddrBits-1, 0)
    }
    mstatus := mstatusNew.asUInt
    lr:=false.B
  }

  //connect tlb about satp
  if (Settings.get("HasDTLB")) {
    BoringUtils.addSource(satp, "CSRSATP")
  }

  //connect clint and pl
  BoringUtils.addSink(mipWire.t.m, "mtip")
  BoringUtils.addSink(mipWire.e.m, "meip")
  BoringUtils.addSink(mipWire.e.s, "meip")
  BoringUtils.addSink(mipWire.s.m, "msip")

  //connect idu
  BoringUtils.addSource(intrVec, "intrVecIDU")

  //connect mmu
  io.imemMMU.priviledgeMode := priviledgeMode
  io.dmemMMU.priviledgeMode := Mux(mstatusStruct.mprv.asBool, mstatusStruct.mpp, priviledgeMode)
  io.imemMMU.status_sum := mstatusStruct.sum.asBool
  io.dmemMMU.status_sum := mstatusStruct.sum.asBool
  io.imemMMU.status_mxr := DontCare
  io.dmemMMU.status_mxr := mstatusStruct.mxr.asBool

  //connect exu
  io.in.ready := true.B
  io.out.valid := valid
  io.out.bits := rdata
  io.wenFix := raiseException && valid && !isMou
  io.redirect.valid := (valid && (JumpType || isMou)) || raiseExceptionIntr || resetSatp
  io.redirect.rtype := 0.U
  io.redirect.target := Mux(resetSatp || isMou, io.cfIn.pc + 4.U, Mux(raiseExceptionIntr, trapTarget, retTarget))

  //mou
  val flushICache = valid && (func === MOUOpType.fencei) && isMou
  BoringUtils.addSource(flushICache, "MOUFlushICache")
  Debug(flushICache, "Flush I$ at %x\n", io.cfIn.pc)

  val flushTLB = valid && (func === MOUOpType.sfence_vma) && isMou
  BoringUtils.addSource(flushTLB, "MOUFlushTLB")
  Debug(flushTLB, "Sfence.vma at %x\n", io.cfIn.pc)

  if (!p.FPGAPlatform) {

    // for differential testing
    val difftest = Module(new DifftestCSRState)
    difftest.io.clock := clock
    difftest.io.coreid := 0.U // TODO
    difftest.io.priviledgeMode := RegNext(priviledgeMode)
    difftest.io.mstatus := RegNext(mstatus)
    difftest.io.sstatus := RegNext(mstatus & sstatusRmask)
    difftest.io.mepc := (RegNext(mepc) >> 1)<<1
    difftest.io.sepc := RegNext(sepc)
    difftest.io.mtval:= RegNext(mtval)
    difftest.io.stval:= RegNext(stval)
    difftest.io.mtvec := RegNext(mtvec)
    difftest.io.stvec := RegNext(stvec)
    difftest.io.mcause := RegNext(mcause)
    difftest.io.scause := RegNext(scause)
    difftest.io.satp := RegNext(satp)
    difftest.io.mip := RegNext(mipReg)
    difftest.io.mie := RegNext(mie)
    difftest.io.mscratch := RegNext(mscratch)
    difftest.io.sscratch := RegNext(sscratch)
    difftest.io.mideleg := RegNext(mideleg)
    difftest.io.medeleg := RegNext(medeleg)

    val difftestArchEvent = Module(new DifftestArchEvent)
    difftestArchEvent.io.clock := clock
    difftestArchEvent.io.coreid := 0.U // TODO
    difftestArchEvent.io.intrNO := RegNext(RegNext(Mux(raiseIntr && io.instrValid && valid, intrNO, 0.U)))
    difftestArchEvent.io.cause := RegNext(RegNext(Mux(raiseException && io.instrValid && valid, exceptionNO, 0.U)))
    difftestArchEvent.io.exceptionPC := RegNext(RegNext(SignExt(io.cfIn.pc, XLEN)))
    difftestArchEvent.io.exceptionInst := RegNext(RegNext(io.cfIn.instr))

  }

}
