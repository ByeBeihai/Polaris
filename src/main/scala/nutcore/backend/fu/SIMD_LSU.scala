package nutcore
import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import bus.simplebus._
import top.Settings

class SIMD_LSU_IO extends FunctionUnitIO {
  val wdata = Input(UInt(XLEN.W))
  val dmem = new SimpleBusUC(addrBits = VAddrBits)
  val isMMIO = Output(Bool())
  val loadAddrMisaligned = Output(Bool()) // TODO: refactor it for new backend
  val storeAddrMisaligned = Output(Bool()) // TODO: refactor it for new backend
  val flush = Input(Bool())
  val DecodeOut = new DecodeIO
  val DecodeIn = Flipped(new DecodeIO)
  val dtlbPF = Output(Bool())
  val storePF = Output(Bool())
  val loadPF = Output(Bool())
}

class SIMD_LSU extends NutCoreModule with HasLSUConst {
  val io = IO(new UnpipeLSUIO)
  val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)
  def access(valid: Bool, src1: UInt, src2: UInt, func: UInt, dtlbPF: Bool): UInt = {
    this.valid := valid
    this.src1 := src1
    this.src2 := src2
    this.func := func
    dtlbPF := io.dtlbPF
    io.out.bits
  }
    val lsExecUnit = Module(new LSExecUnit)
    lsExecUnit.io.instr := DontCare
    io.dtlbPF := lsExecUnit.io.dtlbPF
    io.dmem <> lsExecUnit.io.dmem
    io.out.bits := lsExecUnit.io.out.bits
    io.loadAddrMisaligned := lsExecUnit.io.loadAddrMisaligned
    io.storeAddrMisaligned := lsExecUnit.io.storeAddrMisaligned

    // LSU control FSM state
    val s_idle :: s_exec :: s_load :: s_lr :: s_sc :: s_amo_l :: s_amo_a :: s_amo_s :: Nil = Enum(8)

    // LSU control FSM
    val state = RegInit(s_idle)

    if(!IndependentAddrCalcState){
        lsExecUnit.io.in.valid     := io.in.valid
        lsExecUnit.io.out.ready    := io.out.ready 
        lsExecUnit.io.in.bits.src1 := src1 + src2
        lsExecUnit.io.in.bits.src2 := DontCare
        lsExecUnit.io.in.bits.func := func
        lsExecUnit.io.wdata        := io.wdata
        io.in.ready                := lsExecUnit.io.out.fire() 
        io.out.valid               := lsExecUnit.io.out.valid  
        state := s_idle
    }

    when(io.loadAddrMisaligned || io.storeAddrMisaligned){
      state := s_idle
      io.out.valid := true.B
      io.in.ready := true.B
    }

    val lsuMMIO = WireInit(false.B)
    BoringUtils.addSink(lsuMMIO, "lsuMMIO")

    val mmioReg = RegInit(false.B)
    when (!mmioReg) { mmioReg := lsuMMIO }
    when (io.out.fire()) { mmioReg := false.B }
    io.isMMIO := mmioReg && io.out.valid
}

class LSU_RESP extends NutCoreModule with HasLSUConst{
  val io = IO(new Bundle {
      val DecodeIn = Flipped(Decoupled(new DecodeIO))
      val DecodeOut = new DecodeIO
      val flush = Input(Bool())
      val dmemresp = Flipped(Decoupled(new SimpleBusRespBundle(0, 0)))
      val isMMIO = Output(Bool())
      val addr = Input(UInt(XLEN.W))
      val func = Input(FuOpType())
      val out = Decoupled(Output(UInt(XLEN.W)))
  })

  io.dmemresp.ready := true.B

  val rdatacache = RegInit(0.U(64.W))
  val s_wait_resp :: s_wait_fire ::Nil = Enum(2)
  val state = RegInit(s_wait_resp)

  val addr = io.addr
  val func = io.func
  val rdata = Mux(state ===s_wait_fire,rdatacache, io.dmemresp.bits.rdata)
  val isStore = LSUOpType.isStore(func)
  val partialLoad = !isStore && (func =/= LSUOpType.ld)
  val rdataSel = LookupTree(addr(XLEN/32, 0), List(
                  0.U -> rdata(XLEN-1, 0),
                  1.U -> rdata(XLEN-1, 8),
                  2.U -> rdata(XLEN-1, 16),
                  3.U -> rdata(XLEN-1, 24),
                  4.U -> rdata(XLEN-1, 32),
                  5.U -> rdata(XLEN-1, 40),
                  6.U -> rdata(XLEN-1, 48),
                  7.U -> rdata(XLEN-1, 56)
                ))
  val rdataPartialLoad = LookupTree(func, List(
      LSUOpType.lb   -> SignExt(rdataSel(7, 0) , XLEN),
      LSUOpType.lh   -> SignExt(rdataSel(15, 0), XLEN),
      LSUOpType.lw   -> SignExt(rdataSel(31, 0), XLEN),
      LSUOpType.lbu  -> ZeroExt(rdataSel(7, 0) , XLEN),
      LSUOpType.lhu  -> ZeroExt(rdataSel(15, 0), XLEN),
      LSUOpType.lwu  -> ZeroExt(rdataSel(31, 0), XLEN)
  ))
  switch (state) {
    is (s_wait_resp) { when (io.dmemresp.fire() && io.out.fire() || io.flush) { state := s_wait_resp 
                      }.elsewhen(io.dmemresp.fire() && !io.out.fire()) {state := s_wait_fire
                                                                        rdatacache := rdata} }
    is (s_wait_fire) { when(io.out.fire() || io.flush){state := s_wait_resp}}
  }
  io.out.bits := Mux(partialLoad, rdataPartialLoad, rdata(XLEN-1,0))
  io.out.valid := io.dmemresp.fire() && (state === s_wait_resp)|| state ===s_wait_fire
  io.DecodeOut := io.DecodeIn.bits

  io.DecodeIn.ready := !io.DecodeIn.valid || io.out.fire()

  val lsuMMIO = WireInit(false.B)
  BoringUtils.addSink(lsuMMIO, "lsuMMIO")

  val mmioReg = RegInit(false.B)
  when (!mmioReg) { mmioReg := lsuMMIO }
  when (io.out.valid) { mmioReg := false.B }
  io.isMMIO := mmioReg && io.out.valid

  Debug( "[LSURESP] valid %x pc %x instno %x\n outfire %x \n",io.DecodeIn.valid, io.DecodeOut.cf.pc,io.DecodeOut.InstNo,io.out.fire())
}

class pipeline_lsu extends NutCoreModule with HasLSUConst {
  val io = IO(new SIMD_LSU_IO)
  val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)
  val DecodeIn = io.DecodeIn
  def access(valid: Bool, src1: UInt, src2: UInt, func: UInt): UInt = {
    this.valid := valid
    this.src1 := src1+src2
    this.src2 := src2
    this.func := func
    io.out.bits
  }
  val lsu_resp = Module(new LSU_RESP)
  val s_idle :: s_wait_req ::Nil = Enum(2)
  val state = RegInit(s_wait_req)
  val addr = src1
  val isStore = valid && LSUOpType.isStore(func)
  val pipefire = WireInit(false.B)

  Debug( "[LSU] pc %x instno %x addr %x, size %x, wdata_raw %x, isStore %x reqfire %x \n", DecodeIn.cf.pc,DecodeIn.InstNo, addr, func(1,0), io.wdata, isStore,io.dmem.req.fire())

  val size = func(1,0)
  val reqAddr  = Mux((XLEN>=VAddrBits).B,addr(VAddrBits-1,0),SignExt(addr,VAddrBits))
  val reqWdata = LookupTree(func(1,0),List(
                  0.U -> Fill(XLEN/8 ,io.wdata(7 ,0)),
                  1.U -> Fill(XLEN/16,io.wdata(15,0)),
                  2.U -> Fill(XLEN/32,io.wdata(31,0)),
                  3.U -> Fill(XLEN/64,io.wdata(63,0))
                ))
  val reqWmask = LookupTree(func(1,0),List(
                  0.U -> (0x1.U << addr(XLEN/32,0)), 
                  1.U -> (0x3.U << addr(XLEN/32,0)), 
                  2.U -> (0xf.U << addr(XLEN/32,0)), 
                  3.U -> (0xff.U<< addr(XLEN/32,0)) 
                ))
  val addrAligned = LookupTree(func(1,0), List(
                  0.U   -> true.B,              
                  1.U   -> (addr(0) === 0.U),   
                  2.U   -> (addr(1,0) === 0.U), 
                  3.U   -> (addr(2,0) === 0.U)  
  ))

  io.dmem.req.bits.apply(
    addr = reqAddr, 
    size = size, 
    wdata = reqWdata,
    wmask = reqWmask,
    cmd = Mux(isStore, SimpleBusCmd.write, SimpleBusCmd.read))

  io.dmem.req.valid := valid && (state === s_idle) && !io.loadAddrMisaligned && !io.storeAddrMisaligned && !io.flush 
  io.dmem.resp.ready := true.B
  io.out.bits := lsu_resp.io.out.bits
  io.out.valid := lsu_resp.io.out.valid
  lsu_resp.io.out.ready := io.out.ready
  lsu_resp.io.flush := io.flush
  lsu_resp.io.dmemresp <> io.dmem.resp 
  io.in.ready := pipefire || !valid
  io.isMMIO := lsu_resp.io.isMMIO
  io.DecodeOut := lsu_resp.io.DecodeOut
  Debug("[LSU-EXECUNIT] state %x dresp %x dpf %x lm %x sm %x resfire %x outvalid %x \n", state, io.dmem.resp.fire(), false.B, io.loadAddrMisaligned, io.storeAddrMisaligned,io.dmem.resp.fire(),io.out.valid)

  switch (state) {
    is (s_idle) { when(io.flush || io.dmem.req.fire() && pipefire){
                    state := s_idle
                }.elsewhen (io.dmem.req.fire() && !pipefire){ 
                    state := s_wait_req } }
    is (s_wait_req) {when (pipefire || io.flush) { state := s_idle }}
  }

  io.loadAddrMisaligned :=  valid && !isStore && !addrAligned
  io.storeAddrMisaligned := valid && isStore && !addrAligned

  Debug(io.loadAddrMisaligned || io.storeAddrMisaligned, "misaligned addr detected\n")

  BoringUtils.addSource(io.dmem.isRead() && io.dmem.req.fire(), "perfCntCondMloadInstr")
  BoringUtils.addSource(BoolStopWatch(io.dmem.isRead(), io.dmem.resp.fire()), "perfCntCondMloadStall")
  BoringUtils.addSource(BoolStopWatch(io.dmem.isWrite(), io.dmem.resp.fire()), "perfCntCondMstoreStall")
  BoringUtils.addSource(io.isMMIO, "perfCntCondMmmioInstr")

  BoringUtils.addSource(addr, "LSUADDR")
  BoringUtils.addSource(pipefire, "lsu_firststage_fire")

  //connect it with lsuresp
  val lsu_resp_valid = RegInit(false.B)
  when (lsu_resp.io.out.fire()) { lsu_resp_valid := false.B }
  val lsu_resp_invalid = (state === s_idle && io.dmem.req.fire() || state === s_wait_req)
  pipefire :=  lsu_resp_invalid && lsu_resp.io.DecodeIn.ready
  when (lsu_resp_invalid && lsu_resp.io.DecodeIn.ready) { lsu_resp_valid := true.B }
  when (io.flush) { lsu_resp_valid := false.B }

  lsu_resp.io.DecodeIn.bits := RegEnable(DecodeIn, lsu_resp_invalid && lsu_resp.io.DecodeIn.ready)
  lsu_resp.io.addr := RegEnable(addr, lsu_resp_invalid && lsu_resp.io.DecodeIn.ready)
  lsu_resp.io.func := RegEnable(func, lsu_resp_invalid && lsu_resp.io.DecodeIn.ready)
  lsu_resp.io.DecodeIn.valid := lsu_resp_valid
}

class multicycle_lsu extends NutCoreModule with HasLSUConst {
  val io = IO(new SIMD_LSU_IO)
  val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)
  def access(valid: Bool, src1: UInt, src2: UInt, func: UInt): UInt = {
    this.valid := valid
    this.src1 := src1+src2
    this.src2 := src2
    this.func := func
    io.out.bits
  }

  val addr = src1
  val isStore = valid && LSUOpType.isStore(func)
  val partialLoad = !isStore && (func =/= LSUOpType.ld)
  val rdatacache = RegInit(0.U(64.W))

  val s_idle :: s_wait_resp :: s_wait_fire ::Nil = Enum(3)
  val state = RegInit(s_idle)

  val dtlbFinish = WireInit(false.B)
  val dtlbPF = WireInit(false.B)
  val dtlbEnable = WireInit(false.B)
  io.dtlbPF := dtlbPF

  Debug( "[LSU] addr %x, size %x, wdata_raw %x, isStore %x reqfire %x \n", addr, func(1,0), io.wdata, isStore,io.dmem.req.fire())

  val size = func(1,0)
  val reqAddr  = Mux((XLEN>=VAddrBits).B,addr(VAddrBits-1,0),SignExt(addr,VAddrBits))
  val reqWdata = LookupTree(func(1,0),List(
                  0.U -> Fill(XLEN/8 ,io.wdata(7 ,0)),
                  1.U -> Fill(XLEN/16,io.wdata(15,0)),
                  2.U -> Fill(XLEN/32,io.wdata(31,0)),
                  3.U -> Fill(XLEN/64,io.wdata(63,0))
                ))
  val reqWmask = LookupTree(func(1,0),List(
                  0.U -> (0x1.U << addr(XLEN/32,0)), 
                  1.U -> (0x3.U << addr(XLEN/32,0)), 
                  2.U -> (0xf.U << addr(XLEN/32,0)), 
                  3.U -> (0xff.U<< addr(XLEN/32,0)) 
                ))
  val rdata = Mux(state ===s_wait_fire,rdatacache, io.dmem.resp.bits.rdata)
  val rdataSel = LookupTree(addr(XLEN/32, 0), List(
                  0.U -> rdata(XLEN-1, 0),
                  1.U -> rdata(XLEN-1, 8),
                  2.U -> rdata(XLEN-1, 16),
                  3.U -> rdata(XLEN-1, 24),
                  4.U -> rdata(XLEN-1, 32),
                  5.U -> rdata(XLEN-1, 40),
                  6.U -> rdata(XLEN-1, 48),
                  7.U -> rdata(XLEN-1, 56)
                ))
  val rdataPartialLoad = LookupTree(func, List(
      LSUOpType.lb   -> SignExt(rdataSel(7, 0) , XLEN),
      LSUOpType.lh   -> SignExt(rdataSel(15, 0), XLEN),
      LSUOpType.lw   -> SignExt(rdataSel(31, 0), XLEN),
      LSUOpType.lbu  -> ZeroExt(rdataSel(7, 0) , XLEN),
      LSUOpType.lhu  -> ZeroExt(rdataSel(15, 0), XLEN),
      LSUOpType.lwu  -> ZeroExt(rdataSel(31, 0), XLEN)
  ))
  val addrAligned = LookupTree(func(1,0), List(
                  0.U   -> true.B,              
                  1.U   -> (addr(0) === 0.U),   
                  2.U   -> (addr(1,0) === 0.U), 
                  3.U   -> (addr(2,0) === 0.U)  
  ))
  io.dmem.req.bits.apply(
    addr = reqAddr, 
    size = size, 
    wdata = reqWdata,
    wmask = reqWmask,
    cmd = Mux(isStore, SimpleBusCmd.write, SimpleBusCmd.read))
  io.dmem.req.valid := valid && (state === s_idle) && !io.loadAddrMisaligned && !io.storeAddrMisaligned && !io.flush
  io.dmem.resp.ready := true.B
  io.out.bits := Mux(partialLoad, rdataPartialLoad, rdata(XLEN-1,0))
  io.out.valid := Mux( io.loadAddrMisaligned || io.storeAddrMisaligned, false.B, io.dmem.resp.fire() && (state === s_wait_resp)|| state ===s_wait_fire)
  io.in.ready := !valid || io.out.fire()
  io.isMMIO := DontCare
  Debug("[LSU-EXECUNIT] state %x dresp %x dpf %x lm %x sm %x resfire %x outvalid %x \n", state, io.dmem.resp.fire(), false.B, io.loadAddrMisaligned, io.storeAddrMisaligned,io.dmem.resp.fire(),io.out.valid)

  switch (state) {
    is (s_idle) { when(io.flush){
                    state := s_idle
                }.elsewhen (io.dmem.req.fire()){ 
                    state := s_wait_resp 
                }.elsewhen(dtlbPF){
                    state := s_wait_fire
                } }
    is (s_wait_resp) { when (io.dmem.resp.fire() && io.out.fire() || io.flush || dtlbPF) { 
                        state := s_idle 
                      }.elsewhen(io.dmem.resp.fire() && !io.out.fire()) {
                        state := s_wait_fire
                        rdatacache := rdata
                      }.elsewhen(dtlbPF){
                        state := s_wait_fire
                      }}
    is (s_wait_fire) { when(io.out.fire() || io.flush){state := s_idle}}
  }

  io.loadAddrMisaligned :=  valid && !isStore && !addrAligned
  io.storeAddrMisaligned := valid && isStore && !addrAligned

  Debug(io.loadAddrMisaligned || io.storeAddrMisaligned, "misaligned addr detected\n")

  BoringUtils.addSource(io.dmem.isRead() && io.dmem.req.fire(), "perfCntCondMloadInstr")
  BoringUtils.addSource(BoolStopWatch(io.dmem.isRead(), io.dmem.resp.fire()), "perfCntCondMloadStall")
  BoringUtils.addSource(BoolStopWatch(io.dmem.isWrite(), io.dmem.resp.fire()), "perfCntCondMstoreStall")
  BoringUtils.addSource(io.isMMIO, "perfCntCondMmmioInstr")

  if (Settings.get("HasDTLB")) {
    BoringUtils.addSink(dtlbFinish, "DTLBFINISH")
    BoringUtils.addSink(dtlbPF, "DTLBPF")
    BoringUtils.addSink(dtlbEnable, "DTLBENABLE")
  }

  val lsuMMIO = WireInit(false.B)
  BoringUtils.addSink(lsuMMIO, "lsuMMIO")

  val mmioReg = RegInit(false.B)
  when (!mmioReg) { mmioReg := lsuMMIO }
  when (io.out.valid) { mmioReg := false.B }
  io.isMMIO := mmioReg && io.out.valid

  BoringUtils.addSource(addr, "LSUADDR")
  BoringUtils.addSource(io.out.fire(), "lsu_firststage_fire")

  io.DecodeOut := io.DecodeIn
}

class multicycle_lsu_atom extends NutCoreModule with HasLSUConst {
  val io = IO(new SIMD_LSU_IO)
  val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)
  def access(valid: Bool, src1: UInt, src2: UInt, func: UInt): UInt = {
    this.valid := valid
    this.src1 := src1
    this.src2 := src2
    this.func := func
    io.out.bits
  }
    val exec_valid = WireInit(false.B)
    val exec_finish = WireInit(false.B)
    val exec_result = Wire(UInt(XLEN.W))
    val exec_addr = WireInit(src1)
    val exec_func = WireInit(func)
    val exec_wdata = WireInit(io.wdata)
    val exec_clear = WireInit(false.B)

    val storeReq = valid & LSUOpType.isStore(func)
    val loadReq  = valid & LSUOpType.isLoad(func)
    val atomReq  = valid & LSUOpType.isAtom(func)
    val amoReq   = valid & LSUOpType.isAMO(func)
    val lrReq   = valid & LSUOpType.isLR(func)
    val scReq   = valid & LSUOpType.isSC(func)
    if (Settings.get("HasDTLB")) {
      BoringUtils.addSource(amoReq, "ISAMO")
    }
    BoringUtils.addSource(amoReq, "ISAMO2")

    val aq = io.DecodeIn.cf.instr(26)
    val rl = io.DecodeIn.cf.instr(25)
    val funct3 = io.DecodeIn.cf.instr(14, 12)

    val atomWidthW = !funct3(0)
    val atomWidthD = funct3(0)

    // Atom LR/SC Control Bits
    val setLr = Wire(Bool())
    val setLrVal = Wire(Bool())
    val setLrAddr = Wire(UInt(AddrBits.W))
    val lr = WireInit(Bool(), false.B)
    val lrAddr = WireInit(UInt(AddrBits.W), DontCare)
    BoringUtils.addSource(setLr, "set_lr")
    BoringUtils.addSource(setLrVal, "set_lr_val")
    BoringUtils.addSource(setLrAddr, "set_lr_addr")
    BoringUtils.addSink(lr, "lr")
    BoringUtils.addSink(lrAddr, "lr_addr")

    val scInvalid = !(src1 === lrAddr) && scReq

    // PF signal from TLB
    val dtlbFinish = WireInit(false.B)
    val dtlbPF = WireInit(false.B)
    val dtlbEnable = WireInit(false.B)
    if (Settings.get("HasDTLB")) {
    BoringUtils.addSink(dtlbFinish, "DTLBFINISH")
    BoringUtils.addSink(dtlbPF, "DTLBPF")
    BoringUtils.addSink(dtlbEnable, "DTLBENABLE")
    }
    io.dtlbPF := dtlbPF


    // LSU control FSM state
    val s_idle :: s_lr :: s_sc :: s_amo_l :: s_amo_s :: Nil = Enum(5)

    // LSU control FSM
    val state = RegInit(s_idle)
    val atomMemReg = Reg(UInt(XLEN.W))
    val atomRegReg = Reg(UInt(XLEN.W))
    val atomALU = Module(new AtomALU)
    atomALU.io.src1 := exec_result
    atomALU.io.src2 := io.wdata
    atomALU.io.func := func
    atomALU.io.isWordOp := atomWidthW

    io.out.valid               := false.B
    io.in.ready                := io.out.fire() || !io.in.valid

    switch (state) {
      is(s_idle){ // calculate address 
        exec_valid := io.in.valid && !atomReq
        exec_addr  := src1 + src2
        exec_func  := func
        exec_wdata := io.wdata
        exec_clear := io.out.ready
        io.out.valid  := exec_finish  || scInvalid
        state := s_idle

        when(amoReq){state := s_amo_l}
        when(lrReq){state := s_lr}
        when(scReq){state := Mux(scInvalid, s_idle, s_sc)}
        
      } 

      is(s_amo_l){
        exec_valid := true.B
        exec_addr  := src1
        exec_func  := Mux(atomWidthD, LSUOpType.ld, LSUOpType.lw)
        exec_wdata := io.wdata
        exec_clear := true.B
        io.out.valid := false.B
        when(exec_finish){
          state := s_amo_s; 
          Debug("[AMO-L] lsExecUnit.io.out.bits %x addr %x src2 %x\n", exec_result, exec_addr, io.wdata)
        }
        atomMemReg := atomALU.io.result
        atomRegReg := exec_result
      }

      is(s_amo_s){
        exec_valid := true.B
        exec_addr  := src1
        exec_func  := Mux(atomWidthD, LSUOpType.sd, LSUOpType.sw)
        exec_wdata := atomMemReg
        exec_clear := io.out.ready
        io.out.valid := exec_finish
        when(io.out.fire()){
          state := s_idle; 
          Debug("[AMO-S] atomRegReg %x addr %x\n", atomRegReg, exec_addr)
        }
      }
      is(s_lr){
        exec_valid := true.B
        exec_addr  := src1
        exec_func  := Mux(atomWidthD, LSUOpType.ld, LSUOpType.lw)
        exec_wdata := io.wdata
        exec_clear := io.out.ready
        io.out.valid := exec_finish
        when(io.out.fire()){
          state := s_idle; 
          Debug("[LR]\n")
        }
      }
      is(s_sc){
        exec_valid := true.B
        exec_addr  := src1
        exec_func  := Mux(atomWidthD, LSUOpType.sd, LSUOpType.sw)
        exec_wdata := io.wdata
        exec_clear := io.out.ready
        io.out.valid := exec_finish
        when(io.out.fire()){
          state := s_idle; 
          Debug("[SC] \n")
        }
      }
    }
    val loadPF = WireInit(false.B)
    val storePF = WireInit(false.B)
    BoringUtils.addSink(loadPF, "loadPF")
    BoringUtils.addSink(storePF, "storePF")
    val hasLoadPF = RegInit(false.B)
    val hasStorePF= RegInit(false.B)
    when(loadPF && io.in.valid){
      hasLoadPF := true.B
    } 
    when(storePF && io.in.valid){
      hasStorePF := true.B
    }
    when(io.flush || io.out.fire()){
      hasLoadPF := false.B
      hasStorePF := false.B
    }
    io.loadPF := hasLoadPF
    io.storePF := hasStorePF
    when(hasLoadPF || hasStorePF || io.loadAddrMisaligned || io.storeAddrMisaligned){
      io.out.valid := true.B
      io.in.ready := false.B
    }

  Debug(io.out.fire(), "[LSU-AGU] state %x inv %x inr %x\n", state, io.in.valid, io.in.ready)
  Debug("[LSU-AGU] state %x atomReq %x func %x\n", state, atomReq, func)

    //Set LR/SC bits
    setLr := io.out.fire() && (lrReq || scReq)
    setLrVal := lrReq
    setLrAddr := src1

    io.out.bits := Mux(scReq, scInvalid, Mux(state === s_amo_s, atomRegReg, exec_result))

    val lsuMMIO = WireInit(false.B)
    BoringUtils.addSink(lsuMMIO, "lsuMMIO")

    val mmioReg = RegInit(false.B)
    when (!mmioReg) { mmioReg := lsuMMIO }
    when (io.out.fire()) { mmioReg := false.B }
    io.isMMIO := mmioReg && io.out.valid

    Debug("lsuMMIO %x mmioReg %x io.isMMIO %x \n",lsuMMIO,mmioReg,io.isMMIO)

    when(io.flush){state := s_idle}
    io.DecodeOut := io.DecodeIn
    when(!io.in.valid){io.in.ready := true.B}
    BoringUtils.addSource(io.out.fire(), "lsu_firststage_fire")

    def genWmask(addr: UInt, sizeEncode: UInt): UInt = {
    LookupTree(sizeEncode, List(
      "b00".U -> 0x1.U, //0001 << addr(2:0)
      "b01".U -> 0x3.U, //0011
      "b10".U -> 0xf.U, //1111
      "b11".U -> 0xff.U //11111111
    )) << addr(2, 0)
  }
  def genWdata(data: UInt, sizeEncode: UInt): UInt = {
    LookupTree(sizeEncode, List(
      "b00".U -> Fill(8, data(7, 0)),
      "b01".U -> Fill(4, data(15, 0)),
      "b10".U -> Fill(2, data(31, 0)),
      "b11".U -> data
    ))
  }

  def genWmask32(addr: UInt, sizeEncode: UInt): UInt = {
    LookupTree(sizeEncode, List(
      "b00".U -> 0x1.U, //0001 << addr(1:0)
      "b01".U -> 0x3.U, //0011
      "b10".U -> 0xf.U  //1111
    )) << addr(1, 0)
  }
  def genWdata32(data: UInt, sizeEncode: UInt): UInt = {
    LookupTree(sizeEncode, List(
      "b00".U -> Fill(4, data(7, 0)),
      "b01".U -> Fill(2, data(15, 0)),
      "b10".U -> data
    ))
  }
  
  val dmem = io.dmem
  val addrLatch = RegNext(exec_addr)
  val isStore = exec_valid && LSUOpType.isStore(exec_func)
  val partialLoad = !isStore && (exec_func =/= LSUOpType.ld)

  val s_init :: s_wait_tlb :: s_wait_resp :: s_wait_fire :: Nil = Enum(4)
  val req_state = RegInit(s_init)

  switch (req_state) {
    is (s_init) { 
      when (dmem.req.fire() && dtlbEnable)  { req_state := s_wait_tlb  }
      when (dmem.req.fire() && !dtlbEnable) { req_state := s_wait_resp }
      when (dmem.req.fire() && dtlbEnable && dtlbFinish && dtlbPF) {req_state := s_init}
      when (dmem.req.fire() && dtlbEnable && dtlbFinish && !dtlbPF) {req_state := s_wait_resp}
    }
    is (s_wait_tlb) {
      when (dtlbFinish && dtlbPF ) { req_state := s_init }
      when (dtlbFinish && !dtlbPF) { req_state := s_wait_resp/*Mux(isStore, s_partialLoad, s_wait_resp) */} 
    }
    is (s_wait_resp) { when (dmem.resp.fire()) { req_state := Mux(exec_finish && exec_clear, s_init,s_wait_fire) } }
    is (s_wait_fire) { when(exec_finish && exec_clear){req_state := s_init }}
  }
  Debug(dmem.req.fire(), "[LSU] %x, size %x, wdata_raw %x, isStore %x\n", exec_addr, exec_func(1,0), exec_wdata, isStore)
  Debug(dmem.req.fire(), "[LSU] dtlbFinish:%d dtlbEnable:%d dtlbPF:%d req_state:%d addr:%x dmemReqFire:%d dmemRespFire:%d dmemRdata:%x\n",dtlbFinish, dtlbEnable, dtlbPF, req_state,  dmem.req.bits.addr, dmem.req.fire(), dmem.resp.fire(), dmem.resp.bits.rdata)
  Debug(dtlbFinish && dtlbEnable, "[LSU] dtlbFinish:%d dtlbEnable:%d dtlbPF:%d req_state:%d addr:%x dmemReqFire:%d dmemRespFire:%d dmemRdata:%x\n",dtlbFinish, dtlbEnable, dtlbPF, req_state,  dmem.req.bits.addr, dmem.req.fire(), dmem.resp.fire(), dmem.resp.bits.rdata)

  val size = exec_func(1,0)
  val reqAddr  = if (XLEN == 32) SignExt(exec_addr, VAddrBits) else exec_addr(VAddrBits-1,0)
  val reqWdata = if (XLEN == 32) genWdata32(exec_wdata, size) else genWdata(exec_wdata, size)
  val reqWmask = if (XLEN == 32) genWmask32(exec_addr, size) else genWmask(exec_addr, size)
  dmem.req.bits.apply(
    addr = reqAddr, 
    size = size, 
    wdata = reqWdata,
    wmask = reqWmask,
    cmd = Mux(isStore, SimpleBusCmd.write, SimpleBusCmd.read))
  dmem.req.valid := exec_valid && (req_state === s_init) && !io.loadAddrMisaligned && !io.storeAddrMisaligned && !io.flush
  dmem.resp.ready := true.B
  
  val rdata = dmem.resp.bits.rdata
  val rdatacache = RegEnable(rdata,dmem.resp.fire())
  val rdataLatch = Mux(req_state === s_wait_fire,rdatacache,rdata)
  val rdataSel64 = LookupTree(addrLatch(2, 0), List(
    "b000".U -> rdataLatch(63, 0),
    "b001".U -> rdataLatch(63, 8),
    "b010".U -> rdataLatch(63, 16),
    "b011".U -> rdataLatch(63, 24),
    "b100".U -> rdataLatch(63, 32),
    "b101".U -> rdataLatch(63, 40),
    "b110".U -> rdataLatch(63, 48),
    "b111".U -> rdataLatch(63, 56)
  ))
  val rdataSel32 = LookupTree(addrLatch(1, 0), List(
    "b00".U -> rdataLatch(31, 0),
    "b01".U -> rdataLatch(31, 8),
    "b10".U -> rdataLatch(31, 16),
    "b11".U -> rdataLatch(31, 24)
  ))
  val rdataSel = if (XLEN == 32) rdataSel32 else rdataSel64
  val rdataPartialLoad = LookupTree(exec_func, List(
      LSUOpType.lb   -> SignExt(rdataSel(7, 0) , XLEN),
      LSUOpType.lh   -> SignExt(rdataSel(15, 0), XLEN),
      LSUOpType.lw   -> SignExt(rdataSel(31, 0), XLEN),
      LSUOpType.lbu  -> ZeroExt(rdataSel(7, 0) , XLEN),
      LSUOpType.lhu  -> ZeroExt(rdataSel(15, 0), XLEN),
      LSUOpType.lwu  -> ZeroExt(rdataSel(31, 0), XLEN)
  ))
  val addrAligned = LookupTree(exec_func(1,0), List(
    "b00".U   -> true.B,            //b
    "b01".U   -> (exec_addr(0) === 0.U),   //h
    "b10".U   -> (exec_addr(1,0) === 0.U), //w
    "b11".U   -> (exec_addr(2,0) === 0.U)  //d
  ))
  exec_result := Mux(partialLoad, rdataPartialLoad, rdataLatch(XLEN-1,0))
  exec_finish := Mux(req_state === s_wait_fire, true.B, dmem.resp.fire() && (req_state === s_wait_resp))

  val isAMO = WireInit(false.B)
  BoringUtils.addSink(isAMO, "ISAMO2")
  BoringUtils.addSource(exec_addr, "LSUADDR")

  io.loadAddrMisaligned :=  exec_valid && !isStore && !isAMO && !addrAligned
  io.storeAddrMisaligned := exec_valid && (isStore || isAMO) && !addrAligned

  when(io.flush){req_state := s_init}

  Debug(io.loadAddrMisaligned || io.storeAddrMisaligned, "misaligned addr detected\n")

  BoringUtils.addSource(dmem.isRead() && dmem.req.fire(), "perfCntCondMloadInstr")
  BoringUtils.addSource(BoolStopWatch(dmem.isRead(), dmem.resp.fire()), "perfCntCondMloadStall")
  BoringUtils.addSource(BoolStopWatch(dmem.isWrite(), dmem.resp.fire()), "perfCntCondMstoreStall")
  BoringUtils.addSource(io.isMMIO && io.out.fire(), "perfCntCondMmmioInstr")
}
