package nutcore
import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import bus.simplebus._
import top.Settings

class SIMD_Pipelsu_Bundle extends NutCoreBundle with HasNutCoreParameter {
  val isMMIO = Output(Bool())
  val loadAddrMisaligned = Output(Bool()) // TODO: refactor it for new backend
  val storeAddrMisaligned = Output(Bool()) // TODO: refactor it for new backend
  val Decode = new DecodeIO
  val loadPF = Output(Bool())
  val storePF = Output(Bool())
  val wdata = Output(UInt(XLEN.W))
  val result = Output(UInt(XLEN.W))
  val src1 = Output(UInt(XLEN.W))
  val src2 = Output(UInt(XLEN.W))
  val func = Output(FuOpType())
  val addr = Output(UInt(XLEN.W))
}
class SIMD_Pipelsu_IO  extends NutCoreBundle{
  val in = Flipped(Decoupled(new SIMD_Pipelsu_Bundle))
  val out= Decoupled(new SIMD_Pipelsu_Bundle)
  val dmem = new SimpleBusUC(addrBits = VAddrBits)
  val flush = Input(Bool())
}
class pipeline_lsu_stage1 extends NutCoreModule with HasLSUConst {
  val io = IO(new SIMD_Pipelsu_IO)
  val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)
  
  val exec_valid = WireInit(false.B)
  val exec_finish = WireInit(false.B)
  val exec_addr = WireInit(src1)
  val exec_func = WireInit(func)
  val exec_wdata = WireInit(io.in.bits.wdata)
  val exec_clear = WireInit(false.B)
  io.out.bits := io.in.bits

  // PF signal from TLB
  val dtlbFinish = WireInit(false.B)
  val dtlbPF = WireInit(false.B)
  val dtlbEnable = WireInit(false.B)
  if (Settings.get("HasDTLB")) {
  BoringUtils.addSink(dtlbFinish, "DTLBFINISH")
  BoringUtils.addSink(dtlbPF, "DTLBPF")
  BoringUtils.addSink(dtlbEnable, "DTLBENABLE")
  }

  // LSU control FSM state
  val s_idle :: Nil = Enum(1)

  // LSU control FSM
  val state = RegInit(s_idle)
  io.out.valid               := false.B
  io.in.ready                := io.out.fire() || !io.in.valid
  switch (state) {
    is(s_idle){ // calculate address 
      exec_valid := io.in.valid
      exec_addr  := src1 + src2
      exec_func  := func
      exec_wdata := io.in.bits.wdata
      exec_clear := io.out.ready
      io.out.valid  := exec_finish
      state := s_idle
    } 
  }

  Debug("[stage1] state %x inv %x inr %x func %x\n", state, io.in.valid, io.in.ready,func)

  val lsuMMIO = WireInit(false.B)
  BoringUtils.addSink(lsuMMIO, "lsuMMIO")

  val mmioReg = RegInit(false.B)
  when (!mmioReg && io.in.valid) { mmioReg := lsuMMIO }
  when (io.out.fire()) { mmioReg := false.B }
  io.out.bits.isMMIO := (mmioReg || lsuMMIO)

  Debug("lsuMMIO %x mmioReg %x io.isMMIO %x \n",lsuMMIO,mmioReg,io.out.bits.isMMIO)

  when(io.flush){state := s_idle}
  when(!io.in.valid || io.out.fire()){io.in.ready := true.B}

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

  val s_init :: s_wait_tlb :: s_wait_resp :: Nil = Enum(3)
  val req_state = RegInit(s_init)

  switch (req_state) {
    is (s_init) { 
      when (dmem.req.fire() && dtlbEnable)  { req_state := s_wait_tlb  }
      when (dmem.req.fire() && !dtlbEnable) { req_state := Mux(exec_finish && exec_clear,s_init,s_wait_resp) }
      when (dmem.req.fire() && dtlbEnable && dtlbFinish && dtlbPF) {req_state := s_init}
      when (dmem.req.fire() && dtlbEnable && dtlbFinish && !dtlbPF) {req_state := Mux(exec_finish && exec_clear,s_init,s_wait_resp)}
    }
    is (s_wait_tlb) {
      when (dtlbFinish && dtlbPF ) { req_state := s_init }
      when (dtlbFinish && !dtlbPF) { req_state := Mux(exec_finish && exec_clear,s_init,s_wait_resp)} 
    }
    is (s_wait_resp) { when(exec_finish && exec_clear){req_state := s_init }}
  }
  Debug(dmem.req.fire(), "[stage1] %x, size %x, wdata_raw %x, isStore %x\n", exec_addr, exec_func(1,0), exec_wdata, isStore)
  Debug(dmem.req.fire(), "[stage1] dtlbFinish:%d dtlbEnable:%d dtlbPF:%d req_state:%d addr:%x dmemReqFire:%d dmemRespFire:%d dmemRdata:%x\n",dtlbFinish, dtlbEnable, dtlbPF, req_state,  dmem.req.bits.addr, dmem.req.fire(), dmem.resp.fire(), dmem.resp.bits.rdata)
  Debug(dtlbFinish && dtlbEnable, "[stage1] dtlbFinish:%d dtlbEnable:%d dtlbPF:%d req_state:%d addr:%x dmemReqFire:%d dmemRespFire:%d dmemRdata:%x\n",dtlbFinish, dtlbEnable, dtlbPF, req_state,  dmem.req.bits.addr, dmem.req.fire(), dmem.resp.fire(), dmem.resp.bits.rdata)

  val size = exec_func(1,0)
  val reqAddr  = if (XLEN == 32) SignExt(exec_addr, VAddrBits) else exec_addr(VAddrBits-1,0)
  val reqWdata = if (XLEN == 32) genWdata32(exec_wdata, size) else genWdata(exec_wdata, size)
  val reqWmask = if (XLEN == 32) genWmask32(exec_addr, size) else genWmask(exec_addr, size)
  val addrAligned = LookupTree(exec_func(1,0), List(
    "b00".U   -> true.B,            //b
    "b01".U   -> (exec_addr(0) === 0.U),   //h
    "b10".U   -> (exec_addr(1,0) === 0.U), //w
    "b11".U   -> (exec_addr(2,0) === 0.U)  //d
  ))
  val hasloadAddrMisaligned = exec_valid && !isStore && !addrAligned
  val hasstoreAddrMisaligned= exec_valid &&  isStore && !addrAligned
  dmem.req.bits.apply(
    addr = reqAddr, 
    size = size, 
    wdata = reqWdata,
    wmask = reqWmask,
    cmd = Mux(isStore, SimpleBusCmd.write, SimpleBusCmd.read))
  dmem.req.valid := exec_valid && (req_state === s_init) && !hasloadAddrMisaligned && !hasstoreAddrMisaligned && !io.flush
  dmem.resp <> DontCare
  
  exec_finish := Mux(req_state === s_wait_resp, true.B, dmem.req.fire())


  io.out.bits.loadAddrMisaligned :=  hasloadAddrMisaligned
  io.out.bits.storeAddrMisaligned := hasstoreAddrMisaligned

  when(io.flush){req_state := s_init}

  Debug(hasloadAddrMisaligned || hasstoreAddrMisaligned, "misaligned addr detected\n")
  Debug("[stage1]loadPF %x storePF %x\n",io.out.bits.loadPF,io.out.bits.storePF)

  BoringUtils.addSource(dmem.isRead() && dmem.req.fire(), "perfCntCondMloadInstr")

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
  io.out.bits.loadPF := hasLoadPF
  io.out.bits.storePF := hasStorePF
  when(hasLoadPF || hasStorePF || hasloadAddrMisaligned || hasstoreAddrMisaligned){
    state := s_idle
    io.out.valid := true.B
    io.in.ready := false.B
  }
  io.out.bits.addr := exec_addr
}

class pipeline_lsu_stage2 extends NutCoreModule with HasLSUConst {
  val io = IO(new SIMD_Pipelsu_IO)
  val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)
  
  val exec_valid = WireInit(false.B)
  val exec_finish = WireInit(false.B)
  val exec_addr = WireInit(src1)
  val exec_func = WireInit(func)
  val exec_wdata = WireInit(io.in.bits.wdata)
  val exec_clear = WireInit(false.B)
  val exec_result = WireInit(0.U(64.W))
  io.out.bits := io.in.bits

  // LSU control FSM state
  val s_idle :: Nil = Enum(1)

  // LSU control FSM
  val state = RegInit(s_idle)
  io.out.valid               := false.B
  io.in.ready                := io.out.fire() || !io.in.valid
  switch (state) {
    is(s_idle){ // calculate address 
      exec_valid := io.in.valid
      exec_addr  := io.in.bits.addr
      exec_func  := func
      exec_wdata := io.in.bits.wdata
      exec_clear := io.out.ready
      io.out.valid  := exec_finish
      state := s_idle
    } 
  }
  Debug("[stage2] state %x invalid %x inready %x func %x\n", state, io.in.valid, io.in.ready,func)

  io.out.bits.result := exec_result

  Debug("stage2 : lsuMMIO %x \n",io.out.bits.isMMIO)

  when(io.flush){state := s_idle}
  when(!io.in.valid || io.out.fire()){io.in.ready := true.B}


  val s_wait_resp :: s_wait_fire :: Nil = Enum(2)
  val req_state = RegInit(s_wait_resp)
  val dmem = io.dmem
  val addrLatch = exec_addr
  val isStore = exec_valid && LSUOpType.isStore(exec_func)
  val partialLoad = !isStore && (exec_func =/= LSUOpType.ld)
  val rdata = dmem.resp.bits.rdata
  val rdatacache = RegEnable(rdata,dmem.resp.fire())
  val rdataLatch = Mux(req_state === s_wait_fire,rdatacache,rdata)
  dmem.resp.ready := true.B
  dmem.req <> DontCare
  Debug("[stage2] dmemrespvalid %x dmemrespready %x\n", dmem.resp.valid,dmem.resp.ready)
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


  switch (req_state) {
    is (s_wait_resp) { when (dmem.resp.fire()) { req_state := Mux(exec_finish && exec_clear, s_wait_resp,s_wait_fire) } }
    is (s_wait_fire) { when(exec_finish && exec_clear){req_state := s_wait_resp }}
  }

  exec_result := Mux(partialLoad, rdataPartialLoad, rdataLatch(XLEN-1,0))
  exec_finish := Mux(req_state === s_wait_fire, true.B, dmem.resp.fire())
  
  dmem.resp.ready := true.B

  when(io.in.valid && (io.in.bits.loadPF || io.in.bits.storePF || io.in.bits.loadAddrMisaligned || io.in.bits.storeAddrMisaligned)){
    io.out.valid := true.B
    io.in.ready := false.B
  }

  when(io.flush){req_state := s_wait_resp}

  BoringUtils.addSource(BoolStopWatch(dmem.isRead(), dmem.resp.fire()), "perfCntCondMloadStall")
  BoringUtils.addSource(BoolStopWatch(dmem.isWrite(), dmem.resp.fire()), "perfCntCondMstoreStall")
  BoringUtils.addSource(io.out.bits.isMMIO && io.out.fire(), "perfCntCondMmmioInstr")
}
class pipeline_lsu_empty_stage extends NutCoreModule with HasLSUConst{
  val io = IO(new SIMD_Pipelsu_IO)
  io.out.valid := io.in.valid
  io.in.ready := io.out.fire() || !io.in.valid
  io.out.bits := io.in.bits
  io.dmem <> DontCare
}
class new_SIMD_LSU_IO extends FunctionUnitIO {
  val wdata = Input(UInt(XLEN.W))
  val dmem = new SimpleBusUC(addrBits = VAddrBits)
  val isMMIO = Output(Bool())
  val loadAddrMisaligned = Output(Bool()) // TODO: refactor it for new backend
  val storeAddrMisaligned = Output(Bool()) // TODO: refactor it for new backend
  val flush = Input(Bool())
  val DecodeOut = new DecodeIO
  val DecodeIn = Flipped(new DecodeIO)
  val loadPF = Output(Bool())
  val storePF = Output(Bool())
}
class lsu_for_atom extends NutCoreModule with HasLSUConst {
  val io = IO(new SIMD_Pipelsu_IO)
  val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)

    val exec_valid = WireInit(false.B)
    val exec_finish = WireInit(false.B)
    val exec_result = Wire(UInt(XLEN.W))
    val exec_addr = WireInit(src1)
    val exec_func = WireInit(func)
    val exec_wdata = WireInit(io.in.bits.wdata)
    val exec_clear = WireInit(false.B)
    io.out.bits := io.in.bits

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

    val aq = io.in.bits.Decode.cf.instr(26)
    val rl = io.in.bits.Decode.cf.instr(25)
    val funct3 = io.in.bits.Decode.cf.instr(14, 12)

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
    Debug("setLr %x setLrVal %x setLrAddr %x lr %x lrAddr %x src1 %x\n",setLr,setLrVal,setLrAddr,lr,lrAddr,src1)

    // PF signal from TLB
    val dtlbFinish = WireInit(false.B)
    val dtlbPF = WireInit(false.B)
    val dtlbEnable = WireInit(false.B)
    if (Settings.get("HasDTLB")) {
    BoringUtils.addSink(dtlbFinish, "DTLBFINISH")
    BoringUtils.addSink(dtlbPF, "DTLBPF")
    BoringUtils.addSink(dtlbEnable, "DTLBENABLE")
    }
    val loadPF = WireInit(false.B)
    val storePF = WireInit(false.B)
    BoringUtils.addSink(loadPF, "loadPF")
    BoringUtils.addSink(storePF, "storePF")
    val hasLoadPF = RegInit(false.B)
    val hasStorePF= RegInit(false.B)
    when(loadPF){
      hasLoadPF := true.B
    } 
    when(storePF){
      hasStorePF := true.B
    }
    when(io.flush || io.out.fire()){
      hasLoadPF := false.B
      hasStorePF := false.B
    }
    io.out.bits.loadPF := hasLoadPF
    io.out.bits.storePF := hasStorePF


    // LSU control FSM state
    val s_idle :: s_lr :: s_sc :: s_amo_l :: s_amo_s :: Nil = Enum(5)

    // LSU control FSM
    val state = RegInit(s_idle)
    val atomMemReg = Reg(UInt(XLEN.W))
    val atomRegReg = Reg(UInt(XLEN.W))
    val atomALU = Module(new AtomALU)
    atomALU.io.src1 := exec_result
    atomALU.io.src2 := io.in.bits.wdata
    atomALU.io.func := func
    atomALU.io.isWordOp := atomWidthW

    io.out.valid               := false.B
    io.in.ready                := io.out.fire() || !io.in.valid

    switch (state) {
      is(s_idle){  
        exec_valid := io.in.valid && !atomReq
        exec_addr  := src1 + src2
        exec_func  := func
        exec_wdata := io.in.bits.wdata
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
        exec_wdata := io.in.bits.wdata
        exec_clear := true.B
        io.out.valid := false.B
        when(exec_finish){
          state := s_amo_s; 
          Debug("[AMO-L] lsExecUnit.io.out.bits %x addr %x src2 %x\n", exec_result, exec_addr, io.in.bits.wdata)
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
        exec_wdata := io.in.bits.wdata
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
        exec_wdata := io.in.bits.wdata
        exec_clear := io.out.ready
        io.out.valid := exec_finish
        when(io.out.fire()){
          state := s_idle; 
          Debug("[SC] \n")
        }
      }
    }
    when(io.in.valid && (io.out.bits.storePF || io.out.bits.loadPF || io.out.bits.loadAddrMisaligned || io.out.bits.storeAddrMisaligned)){
      //state := s_idle
      io.out.valid := true.B
      io.in.ready := false.B
    }

  Debug(io.out.fire(), "[LSU-AGU] state %x inv %x inr %x\n", state, io.in.valid, io.in.ready)
  Debug("[LSU-AGU] state %x atomReq %x func %x outvalid %x exec_finish %x\n", state, atomReq, func,io.out.valid,exec_finish)

    //Set LR/SC bits
    setLr := io.out.fire() && (lrReq || scReq)
    setLrVal := lrReq
    setLrAddr := src1

    io.out.bits.result := Mux(scReq, scInvalid, Mux(state === s_amo_s, atomRegReg, exec_result))

    val lsuMMIO = WireInit(false.B)
    BoringUtils.addSink(lsuMMIO, "lsuMMIO")

    val mmioReg = RegInit(false.B)
    when (!mmioReg && io.in.valid) { mmioReg := lsuMMIO }
    when (io.out.fire()) { mmioReg := false.B }
    io.out.bits.isMMIO := mmioReg && io.out.valid

    Debug("lsuMMIO %x mmioReg %x io.isMMIO %x \n",lsuMMIO,mmioReg,io.out.bits.isMMIO)

    when(io.flush){state := s_idle}
    when(!io.in.valid){io.in.ready := true.B}

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
  dmem.req.valid := exec_valid && (req_state === s_init) && !io.out.bits.loadAddrMisaligned && !io.out.bits.storeAddrMisaligned && !io.flush
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
  Debug("req_state %x\n",req_state)

  val isAMO = WireInit(false.B)
  BoringUtils.addSink(isAMO, "ISAMO2")

  io.out.bits.loadAddrMisaligned :=  exec_valid && !isStore && !isAMO && !addrAligned
  io.out.bits.storeAddrMisaligned := exec_valid && (isStore || isAMO) && !addrAligned

  when(io.flush){req_state := s_init}

  Debug(io.out.bits.loadAddrMisaligned || io.out.bits.storeAddrMisaligned, "misaligned addr detected\n")

  //BoringUtils.addSource(dmem.isRead() && dmem.req.fire(), "perfCntCondMloadInstr")
  //BoringUtils.addSource(BoolStopWatch(dmem.isRead(), dmem.resp.fire()), "perfCntCondMloadStall")
  //BoringUtils.addSource(BoolStopWatch(dmem.isWrite(), dmem.resp.fire()), "perfCntCondMstoreStall")
  //BoringUtils.addSource(io.out.bits.isMMIO && io.out.fire(), "perfCntCondMmmioInstr")
}

class pipeline_lsu_atom extends NutCoreModule with HasLSUConst {
  val io = IO(new new_SIMD_LSU_IO)
  val (valid, src1, src2, func) = (io.in.valid, io.in.bits.src1, io.in.bits.src2, io.in.bits.func)
  def access(valid: Bool, src1: UInt, src2: UInt, func: UInt): UInt = {
    this.valid := valid
    this.src1 := src1
    this.src2 := src2
    this.func := func
    io.out.bits
  }
  val stage1 = Module(new pipeline_lsu_stage1)
  val stage2 = Module(new pipeline_lsu_stage2)
  val stage_empty = Module(new pipeline_lsu_empty_stage)
  val atomstage = Module(new lsu_for_atom)

  val atomReq = LSUOpType.isAtom(func)

  val stage2_exp = WireInit(false.B)

  val stage_empty_exp = WireInit(false.B)

  val lsu_firststage_fire = WireInit(false.B)

  val addr = WireInit(src1)

  stage1.io.in.valid := valid && !stage2_exp && !stage_empty_exp && !atomReq && Mux(stage2.io.in.valid,stage2.io.out.ready,true.B)
  stage1.io.flush    := io.flush
  stage1.io.in.bits  := 0.U.asTypeOf(new SIMD_Pipelsu_Bundle)
  stage1.io.in.bits.src1  := src1
  stage1.io.in.bits.src2  := src2
  stage1.io.in.bits.func  := func
  stage1.io.in.bits.wdata := io.wdata
  stage1.io.in.bits.Decode:= io.DecodeIn

  atomstage.io.in.valid := valid && atomReq && !stage2.io.in.valid
  atomstage.io.flush    := io.flush
  atomstage.io.in.bits  := 0.U.asTypeOf(new SIMD_Pipelsu_Bundle)
  atomstage.io.in.bits.src1  := src1
  atomstage.io.in.bits.src2  := src2
  atomstage.io.in.bits.func  := func
  atomstage.io.in.bits.wdata := io.wdata
  atomstage.io.in.bits.Decode:= io.DecodeIn
  atomstage.io.out.ready     := io.out.ready
  
  PipelineConnect(stage1.io.out, stage2.io.in, stage2.io.out.fire(), io.flush)
  stage2_exp  := stage2.io.in.valid && (stage2.io.out.bits.loadAddrMisaligned || stage2.io.out.bits.storeAddrMisaligned || stage2.io.out.bits.storePF || stage2.io.out.bits.loadPF)
  stage2.io.flush := io.flush
  stage2.io.out.ready := io.out.ready

  stage_empty_exp := stage_empty.io.in.valid && (stage_empty.io.out.bits.loadAddrMisaligned || stage_empty.io.out.bits.storeAddrMisaligned || stage_empty.io.out.bits.storePF || stage_empty.io.out.bits.loadPF)
  stage_empty.io.flush := io.flush
  stage_empty.io.out.ready := io.out.ready

  val fake_dmem = 0.U.asTypeOf(new SimpleBusUC(addrBits = VAddrBits))

  atomstage.io.dmem <> fake_dmem
  stage1.io.dmem <> fake_dmem
  stage2.io.dmem <> fake_dmem
  stage_empty.io.dmem <> fake_dmem
  
  val empty_out = WireInit(0.U.asTypeOf(Decoupled(new SIMD_Pipelsu_Bundle)))
  when(atomstage.io.in.valid){
    empty_out.valid := atomstage.io.out.valid
    empty_out.bits  := atomstage.io.out.bits
    atomstage.io.out.ready := empty_out.ready
  }.elsewhen(stage2.io.in.valid && stage2_exp){
    empty_out.valid := stage2.io.out.valid
    empty_out.bits  := stage2.io.out.bits
    stage2.io.out.ready := empty_out.ready
  }
  PipelineConnect(empty_out, stage_empty.io.in, stage_empty.io.out.fire(), io.flush)

  io.loadAddrMisaligned  := stage_empty.io.out.valid && stage_empty.io.out.bits.loadAddrMisaligned
  io.storeAddrMisaligned := stage_empty.io.out.valid && stage_empty.io.out.bits.storeAddrMisaligned
  io.storePF  := stage_empty.io.out.valid && stage_empty.io.out.bits.storePF
  io.loadPF   := stage_empty.io.out.valid && stage_empty.io.out.bits.loadPF
  addr := stage_empty.io.out.bits.addr
  when(stage_empty.io.in.valid){
    io.out.valid:= stage_empty.io.out.valid
    io.out.bits := stage_empty.io.out.bits.result
    io.isMMIO   := stage_empty.io.out.bits.isMMIO
    io.DecodeOut:= stage_empty.io.out.bits.Decode
  }.otherwise{
    io.out.valid:= stage2.io.out.valid && !stage2_exp
    io.out.bits := stage2.io.out.bits.result
    io.isMMIO   := stage2.io.out.bits.isMMIO
    io.DecodeOut:= stage2.io.out.bits.Decode
  }

  when(atomstage.io.in.valid){
    io.dmem <> atomstage.io.dmem
    lsu_firststage_fire := atomstage.io.out.fire()
  }.otherwise{
    io.dmem.req <> stage1.io.dmem.req
    io.dmem.resp <> stage2.io.dmem.resp
    stage1.io.dmem.resp <> DontCare
    stage2.io.dmem.req  <> DontCare
    lsu_firststage_fire := stage1.io.out.fire()
  }

  io.in.ready  := !valid || lsu_firststage_fire
  BoringUtils.addSource(lsu_firststage_fire,"lsu_firststage_fire")
  BoringUtils.addSource(addr,"LSUADDR")

  Debug("stage1pc %x outvalid %x stage2pc %x outvalid %x\n",stage1.io.out.bits.Decode.cf.pc,stage1.io.out.valid,stage2.io.out.bits.Decode.cf.pc,stage2.io.out.valid)
  Debug("stage2exp %x stageemptyexp %x\n",stage2_exp,stage_empty_exp)
  Debug("stageemptyinvalid %x stageemptyinready %x stageemptyoutvalid %x stageemptyoutready %x\n",stage_empty.io.in.valid,stage_empty.io.in.ready,stage_empty.io.out.valid,stage_empty.io.out.ready)
}