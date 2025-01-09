/**************************************************************************************
* Copyright (c) 2020 Institute of Computing Technology, CAS
* Copyright (c) 2020 University of Chinese Academy of Sciences
* 
* NutShell is licensed under Mulan PSL v2.
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

package polaris

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import top.Settings

class TableAddr(val idxBits: Int) extends PolarisCoreBundle {
  val padLen = if (Settings.get("IsRV32") || !Settings.get("EnableOutOfOrderExec")) 2 else 3
  def tagBits = VAddrBits - padLen - idxBits

  //val res = UInt((AddrBits - VAddrBits).W)
  val tag = UInt(tagBits.W)
  val idx = UInt(idxBits.W)
  val pad = UInt(padLen.W)

  def fromUInt(x: UInt) = x.asTypeOf(UInt(VAddrBits.W)).asTypeOf(this)
  def getTag(x: UInt) = fromUInt(x).tag
  def getIdx(x: UInt) = fromUInt(x).idx
}

class TableAddr_SIMD(val idxBits: Int) extends PolarisCoreBundle {
  val padLen = 3
  def tagBits = VAddrBits - padLen - idxBits
  val tag = UInt(tagBits.W)
  val idx = UInt(idxBits.W)
  val pad = UInt(padLen.W)

  def fromUInt(x: UInt) = x.asTypeOf(UInt(VAddrBits.W)).asTypeOf(this)
  def getTag(x: UInt) = fromUInt(x).tag
  def getIdx(x: UInt) = fromUInt(x).idx
}

object BTBtype {
  def B = "b00".U  // branch
  def J = "b01".U  // jump
  def I = "b10".U  // indirect
  def R = "b11".U  // return

  def apply() = UInt(2.W)
}

class BPUUpdateReq extends PolarisCoreBundle {
  val valid = Output(Bool())
  val pc = Output(UInt(VAddrBits.W))
  val isMissPredict = Output(Bool())
  val actualTarget = Output(UInt(VAddrBits.W))
  val actualTaken = Output(Bool())  // for branch
  val fuOpType = Output(FuOpType())
  val btbType = Output(BTBtype())
  val isRVC = Output(Bool()) // for ras, save PC+2 to stack if is RVC
}

// nextline predicter generates NPC from current NPC in 1 cycle
class BPU_ooo extends PolarisCoreModule {
  val io = IO(new Bundle {
    val in = new Bundle { val pc = Flipped(Valid((UInt(VAddrBits.W)))) }
    val out = new RedirectIO 
    val flush = Input(Bool())
    val brIdx = Output(Vec(4, Bool()))
    // val target = Output(Vec(4, UInt(VAddrBits.W)))
    // val instValid = Output(UInt(4.W)) // now instValid is generated in IFU
    val crosslineJump = Output(Bool())
  })

  val flush = BoolStopWatch(io.flush, io.in.pc.valid, startHighPriority = true)

  // BTB
  val NRbtb = 512
  val btbAddr = new TableAddr_SIMD(log2Up(NRbtb >> 2))
  def btbEntry() = new Bundle {
    val tag = UInt(btbAddr.tagBits.W)
    val _type = UInt(2.W)
    val target = UInt(VAddrBits.W)
    val crosslineJump = Bool()
    val valid = Bool()
  }

  val btb = List.fill(4)(Module(new SRAMTemplate(btbEntry(), set = NRbtb >> 2, shouldReset = true, holdRead = true, singlePort = false)))
  // flush BTB when executing fence.i
  val flushBTB = WireInit(false.B)
  val flushTLB = WireInit(false.B)
  BoringUtils.addSink(flushBTB, "MOUFlushICache")
  BoringUtils.addSink(flushTLB, "MOUFlushTLB")
  (0 to 3).map(i => (btb(i).reset := reset.asBool || (flushBTB || flushTLB)))

  Debug(reset.asBool || (flushBTB || flushTLB), "[BPU-RESET] bpu-reset flushBTB:%d flushTLB:%d\n", flushBTB, flushTLB)

  (0 to 3).map(i => (btb(i).io.r.req.valid := io.in.pc.valid))
  (0 to 3).map(i => (btb(i).io.r.req.bits.setIdx := btbAddr.getIdx(io.in.pc.bits)))


  val btbRead = Wire(Vec(4, btbEntry()))
  (0 to 3).map(i => (btbRead(i) := btb(i).io.r.resp.data(0)))
  // since there is one cycle latency to read SyncReadMem,
  // we should latch the input pc for one cycle
  val pcLatch = RegEnable(io.in.pc.bits, io.in.pc.valid)
  val btbHit = Wire(Vec(4, Bool()))
  (0 to 3).map(i => btbHit(i) := btbRead(i).valid && btbRead(i).tag === btbAddr.getTag(pcLatch) && !flush && RegNext(btb(i).io.r.req.fire(), init = false.B))
  // btbHit will ignore pc(2,0). pc(2,0) is used to build brIdx
  val crosslineJump = btbRead(3).crosslineJump && btbHit(3) && !io.brIdx(0) && !io.brIdx(1) && !io.brIdx(2)
  io.crosslineJump := crosslineJump
  // val crosslineJumpLatch = RegNext(crosslineJump)
  // val crosslineJumpTarget = RegEnable(btbRead.target, crosslineJump)
  
  // PHT
  val pht = List.fill(4)(Mem(NRbtb >> 2, UInt(2.W)))
  val phtTaken = Wire(Vec(4, Bool()))
  (0 to 3).map(i => (phtTaken(i) := RegEnable(pht(i).read(btbAddr.getIdx(io.in.pc.bits))(1), io.in.pc.valid)))

  // RAS
  val NRras = 16
  val ras = Mem(NRras, UInt(VAddrBits.W))
  val sp = Counter(NRras)
  val rasTarget = RegEnable(ras.read(sp.value), io.in.pc.valid)

  // update
  val req = WireInit(0.U.asTypeOf(new BPUUpdateReq))
  val btbWrite = WireInit(0.U.asTypeOf(btbEntry()))
  BoringUtils.addSink(req, "bpuUpdateReq")

  btbWrite.tag := btbAddr.getTag(req.pc)
  btbWrite.target := req.actualTarget
  btbWrite._type := req.btbType
  btbWrite.crosslineJump := req.pc(2,1)==="h3".U && !req.isRVC // ((pc_offset % 8) == 6) && inst is 32bit in length
  btbWrite.valid := true.B 
  // NOTE: We only update BTB at a miss prediction.
  // If a miss prediction is found, the pipeline will be flushed
  // in the next cycle. Therefore it is safe to use single-port
  // SRAM to implement BTB, since write requests have higher priority
  // than read request. Again, since the pipeline will be flushed
  // in the next cycle, the read request will be useless.
  (0 to 3).map(i => btb(i).io.w.req.valid := req.isMissPredict && req.valid && i.U === req.pc(2,1))
  (0 to 3).map(i => btb(i).io.w.req.bits.setIdx := btbAddr.getIdx(req.pc))
  (0 to 3).map(i => btb(i).io.w.req.bits.data := btbWrite)

  val getpht = LookupTree(req.pc(2,1), List.tabulate(4)(i => (i.U -> pht(i).read(btbAddr.getIdx(req.pc)))))
  val cnt = RegNext(getpht)
  val reqLatch = RegNext(req)
  when (reqLatch.valid && ALUOpType.isBranch(reqLatch.fuOpType)) {
    val taken = reqLatch.actualTaken
    val newCnt = Mux(taken, cnt + 1.U, cnt - 1.U)
    val wen = (taken && (cnt =/= "b11".U)) || (!taken && (cnt =/= "b00".U))
    for(i <- 0 to 3){
      Debug(i.U === reqLatch.pc(2,1)&&reqLatch.isMissPredict,"[redirect] reqLatchpc=%x predictWrong=%x actualTarget=%x actualTaken=%x fuOpType=%x btbType=%x isRVC=%x \n" ,reqLatch.pc,reqLatch.isMissPredict,reqLatch.actualTarget,reqLatch.actualTaken,reqLatch.fuOpType,reqLatch.btbType,reqLatch.isRVC)}
    when (wen) {
      (0 to 3).map(i => when(i.U === reqLatch.pc(2,1)){pht(i).write(btbAddr.getIdx(reqLatch.pc), newCnt)})
    }
  }
  when (req.valid) {
    when (req.fuOpType === ALUOpType.call)  {
      ras.write(sp.value + 1.U, Mux(req.isRVC, req.pc + 2.U, req.pc + 4.U))
      sp.value := sp.value + 1.U
    }
    .elsewhen (req.fuOpType === ALUOpType.ret) {
      when(sp.value === 0.U) {
        // RAS empty, do nothing
      }
      sp.value := Mux(sp.value===0.U, 0.U, sp.value - 1.U)
    }
  }

  def genInstValid(pc: UInt) = LookupTree(pc(2,1), List(
    "b00".U -> "b1111".U,
    "b01".U -> "b1110".U,
    "b10".U -> "b1100".U,
    "b11".U -> "b1000".U
  ))

  val pcLatchValid = genInstValid(pcLatch)

  val target = Wire(Vec(4, UInt(VAddrBits.W)))
  (0 to 3).map(i => target(i) := Mux(btbRead(i)._type === BTBtype.R, rasTarget, btbRead(i).target))
  (0 to 3).map(i => io.brIdx(i) := btbHit(i) && pcLatchValid(i).asBool && Mux(btbRead(i)._type === BTBtype.B, phtTaken(i), true.B) && btbRead(i).valid)
  io.out.target := PriorityMux(io.brIdx, target)
  io.out.valid := io.brIdx.asUInt.orR
  io.out.rtype := 0.U

  
  // Debug area
  Debug(req.valid, "[BTBUP] reqpc=%x btbtag(reqpc)=%x index=%x iobridx=%x reqtgt=%x type=%x\n", req.pc, btbAddr.getTag(req.pc), btbAddr.getIdx(req.pc), io.brIdx.asUInt, req.actualTarget, req.btbType)

  // for(i <- 0 to 3){

  //   Debug("[i===%x BTBHIT] pcLatch =%x btbHit(i) %x := btbRead(i).valid %x && btbRead(i).tag %x === btbAddr.getTag(pcLatch) %x %x RegNext(btb(i).io.r.req.fire(), init = false.B) %x !flush %x\n",i.asUInt,pcLatch,btbHit(i),btbRead(i).valid,btbRead(i).tag,btbAddr.getTag(pcLatch),btbRead(i).tag === btbAddr.getTag(pcLatch),RegNext(btb(i).io.r.req.fire(), init = false.B),!flush)

  //   Debug("[i===%x BTBREAD] btb(i).io.r.req.valid %x btb(i).io.r.req.bits.setIdx %x btb(i).io.r.resp.data %x\n",i.asUInt,btb(i).io.r.req.valid,btb(i).io.r.req.bits.setIdx,btb(i).io.r.resp.data.asUInt)
  //   Debug("[i===%x BTBWRITE] req.isMissPredict %x req.valid %x req.pc(2,1) %x btb(i).io.w.req.valid %x btb(i).io.w.req.bits.getIdx %x btb(i).io.w.resp.data %x\n",i.asUInt,req.isMissPredict,req.valid,req.pc(2,1),req.isMissPredict && req.valid && i.U === req.pc(2,1),btbAddr.getIdx(req.pc),btbWrite.asUInt)


  //   Debug(btbHit(i),"[BTBHT1] i=%x pcLatch=%x btbread(i)tag=%x,%x index=%x bridx=%x tgt=btb%x,out%x flush %x type:%x\n",i.asUInt,pcLatch, btbRead(i).tag, btbAddr.getTag(pcLatch), btbAddr.getIdx(pcLatch), io.brIdx(i), btbRead(i).target, io.out.target, flush,btbRead(i)._type)    
  //   Debug(btbHit(i),"[BTBHT2] io.brIdx =%x %x %x %x target=%x %x %x %x \n",io.brIdx(0),io.brIdx(1),io.brIdx(2),io.brIdx(3),target(0),target(1),target(2),target(3))
  //   Debug(btbHit(i),"[BTBHT3] i=%x pcLatch=%x pcLatchValid=%x btbreadtype =%x phttaken=%x btbreadvaild=%x \n",i.asUInt,pcLatch,pcLatchValid(i).asBool,btbRead(i)._type === BTBtype.B,phtTaken(i),btbRead(i).valid)
  //   Debug(btbHit(i),"[BTBHT4] i=%x pcLatch=%x phtTaken =%x %x %x %x io.in.pc.valid=%x in.pc=%x btbidx=%x phtread(i)=%x\n",i.asUInt,pcLatch,phtTaken(0),phtTaken(1),phtTaken(2),phtTaken(3), io.in.pc.valid.asUInt,io.in.pc.bits.asUInt,btbAddr.getIdx(io.in.pc.bits),pht(i).read(btbAddr.getIdx(io.in.pc.bits)))
  // }

  // Debug("[BPUOUT] io.out.valid=%x io.out.target=%x io.brIdx.asUInt=%x \n",io.out.valid, io.out.target, io.brIdx.asUInt)


  // io.out.valid := btbHit && Mux(btbRead._type === BTBtype.B, phtTaken, true.B) && !crosslineJump || crosslineJumpLatch && !flush && !crosslineJump
  // Note: 
  // btbHit && Mux(btbRead._type === BTBtype.B, phtTaken, true.B) && !crosslineJump : normal branch predict
  // crosslineJumpLatch && !flush && !crosslineJump : cross line branch predict, bpu will require imem to fetch the next 16bit of current inst in next instline
  // `&& !crosslineJump` is used to make sure this logic will run correctly when imem stalls (pcUpdate === false)
  // by using `instline`, we mean a 64 bit instfetch result from imem
  // ROCKET uses a 32 bit instline, and its IDU logic is more simple than this implentation.
}
class BPU_embedded extends PolarisCoreModule {
  val io = IO(new Bundle {
    val in = new Bundle { val pc = Flipped(Valid((UInt(32.W)))) }
    val out = new RedirectIO
    val flush = Input(Bool())
  })

  val flush = BoolStopWatch(io.flush, io.in.pc.valid, startHighPriority = true)

  // BTB
  val NRbtb = 512
  val btbAddr = new TableAddr(log2Up(NRbtb))
  def btbEntry() = new Bundle {
    val tag = UInt(btbAddr.tagBits.W)
    val _type = UInt(2.W)
    val target = UInt(32.W)
  }

  val btb = Module(new SRAMTemplate(btbEntry(), set = NRbtb, shouldReset = true, holdRead = true, singlePort = true))
  btb.io.r.req.valid := io.in.pc.valid
  btb.io.r.req.bits.setIdx := btbAddr.getIdx(io.in.pc.bits)

  val btbRead = Wire(btbEntry())
  btbRead := btb.io.r.resp.data(0)
  // since there is one cycle latency to read SyncReadMem,
  // we should latch the input pc for one cycle
  val pcLatch = RegEnable(io.in.pc.bits, io.in.pc.valid)
  val btbHit = btbRead.tag === btbAddr.getTag(pcLatch) && !flush && RegNext(btb.io.r.req.ready, init = false.B)

  // PHT
  val pht = Mem(NRbtb, UInt(2.W))
  val phtTaken = RegEnable(pht.read(btbAddr.getIdx(io.in.pc.bits))(1), io.in.pc.valid)

  // RAS
  val NRras = 16
  val ras = Mem(NRras, UInt(32.W))
  val sp = Counter(NRras)
  val rasTarget = RegEnable(ras.read(sp.value), io.in.pc.valid)

  // update
  val req = WireInit(0.U.asTypeOf(new BPUUpdateReq))
  val btbWrite = WireInit(0.U.asTypeOf(btbEntry()))
  BoringUtils.addSink(req, "bpuUpdateReq")

  btbWrite.tag := btbAddr.getTag(req.pc)
  btbWrite.target := req.actualTarget
  btbWrite._type := req.btbType
  // NOTE: We only update BTB at a miss prediction.
  // If a miss prediction is found, the pipeline will be flushed
  // in the next cycle. Therefore it is safe to use single-port
  // SRAM to implement BTB, since write requests have higher priority
  // than read request. Again, since the pipeline will be flushed
  // in the next cycle, the read request will be useless.
  btb.io.w.req.valid := req.isMissPredict && req.valid
  btb.io.w.req.bits.setIdx := btbAddr.getIdx(req.pc)
  btb.io.w.req.bits.data := btbWrite

  val cnt = RegNext(pht.read(btbAddr.getIdx(req.pc)))
  val reqLatch = RegNext(req)
  when (reqLatch.valid && ALUOpType.isBranch(reqLatch.fuOpType)) {
    val taken = reqLatch.actualTaken
    val newCnt = Mux(taken, cnt + 1.U, cnt - 1.U)
    val wen = (taken && (cnt =/= "b11".U)) || (!taken && (cnt =/= "b00".U))
    when (wen) {
      pht.write(btbAddr.getIdx(reqLatch.pc), newCnt)
    }
  }
  when (req.valid) {
    when (req.fuOpType === ALUOpType.call) {
      ras.write(sp.value + 1.U, req.pc + 4.U)
      sp.value := sp.value + 1.U
    }
    .elsewhen (req.fuOpType === ALUOpType.ret) {
      sp.value := sp.value - 1.U
    }
  }

  val flushBTB = WireInit(false.B)
  val flushTLB = WireInit(false.B)
  BoringUtils.addSink(flushBTB, "MOUFlushICache")
  BoringUtils.addSink(flushTLB, "MOUFlushTLB")

  io.out.target := Mux(btbRead._type === BTBtype.R, rasTarget, btbRead.target)
  io.out.valid := btbHit && Mux(btbRead._type === BTBtype.B, phtTaken, true.B)
  io.out.rtype := 0.U
}

class BPU_inorder extends PolarisCoreModule {
  val io = IO(new Bundle {
    val in = new Bundle { val pc = Flipped(Valid((UInt(VAddrBits.W)))) }
    val out = new RedirectIO
    val flush = Input(Bool())
    val brIdx = Output(UInt(3.W))
    val crosslineJump = Output(Bool())
  })

  val flush = BoolStopWatch(io.flush, io.in.pc.valid, startHighPriority = true)

  // BTB
  val NRbtb = 512
  val btbAddr = new TableAddr(log2Up(NRbtb))
  def btbEntry() = new Bundle {
    val tag = UInt(btbAddr.tagBits.W)
    val _type = UInt(2.W)
    val target = UInt(VAddrBits.W)
    val brIdx = UInt(3.W)
    val valid = Bool()
  }

  val btb = Module(new SRAMTemplate(btbEntry(), set = NRbtb, shouldReset = true, holdRead = true, singlePort = true))
  // flush BTB when executing fence.i
  val flushBTB = WireInit(false.B)
  val flushTLB = WireInit(false.B)
  BoringUtils.addSink(flushBTB, "MOUFlushICache")
  BoringUtils.addSink(flushTLB, "MOUFlushTLB")
  btb.reset := reset.asBool || (flushBTB || flushTLB)
  Debug(reset.asBool || (flushBTB || flushTLB), "[BPU-RESET] bpu-reset flushBTB:%d flushTLB:%d\n", flushBTB, flushTLB)

  btb.io.r.req.valid := io.in.pc.valid
  btb.io.r.req.bits.setIdx := btbAddr.getIdx(io.in.pc.bits)


  val btbRead = Wire(btbEntry())
  btbRead := btb.io.r.resp.data(0)
  // since there is one cycle latency to read SyncReadMem,
  // we should latch the input pc for one cycle
  val pcLatch = RegEnable(io.in.pc.bits, io.in.pc.valid)
  val btbHit = btbRead.valid && btbRead.tag === btbAddr.getTag(pcLatch) && !flush && RegNext(btb.io.r.req.fire(), init = false.B) && !(pcLatch(1) && btbRead.brIdx(0))
  // btbHit will ignore pc(1,0). pc(1,0) is used to build brIdx
  // !(pcLatch(1) && btbRead.brIdx(0)) is used to deal with the following case:
  // -------------------------------------------------
  // 0 jump rvc         // marked as "take branch" in BTB
  // 2 xxx  rvc <-- pc  // misrecognize this instr as "btb hit" with target of previous jump instr
  // -------------------------------------------------
  val crosslineJump = btbRead.brIdx(2) && btbHit
  io.crosslineJump := crosslineJump
  // val crosslineJumpLatch = RegNext(crosslineJump)
  // val crosslineJumpTarget = RegEnable(btbRead.target, crosslineJump)
  // Debug(btbHit, "[BTBHT1] pc=%x tag=%x,%x index=%x bridx=%x tgt=%x,%x flush %x type:%x\n",  pcLatch, btbRead.tag, btbAddr.getTag(pcLatch), btbAddr.getIdx(pcLatch), btbRead.brIdx, btbRead.target, io.out.target, flush,btbRead._type)
  // Debug(btbHit, "[BTBHT2] btbRead.brIdx %x mask %x\n", btbRead.brIdx, Cat(crosslineJump, Fill(2, io.out.valid)))
  // Debug(btbHit, "[BTBHT5] btbReqValid:%d btbReqSetIdx:%x\n",btb.io.r.req.valid, btb.io.r.req.bits.setId)
  
  // PHT
  val pht = Mem(NRbtb, UInt(2.W))
  val phtTaken = RegEnable(pht.read(btbAddr.getIdx(io.in.pc.bits))(1), io.in.pc.valid)

  // RAS

  val NRras = 16
  val ras = Mem(NRras, UInt(VAddrBits.W))
  // val raBrIdxs = Mem(NRras, UInt(2.W))
  val sp = Counter(NRras)
  val rasTarget = RegEnable(ras.read(sp.value), io.in.pc.valid)
  // val rasBrIdx = RegEnable(raBrIdxs.read(sp.value), io.in.pc.valid)

  // update
  val req = WireInit(0.U.asTypeOf(new BPUUpdateReq))
  val btbWrite = WireInit(0.U.asTypeOf(btbEntry()))
  BoringUtils.addSink(req, "bpuUpdateReq")


    //val fflag = req.btbType===3.U && btb.io.w.req.valid && btb.io.w.req.bits.setIdx==="hc9".U
    //when(fflag && GTimer()>2888000.U) {
    //  Debug("%d\n", GTimer())
    //  Debug("[BTBHT6] btbWrite.type is BTBtype.R/RET!!! Inpc:%x btbWrite.brIdx:%x setIdx:%x\n", io.in.pc.bits, btbWrite.brIdx, btb.io.w.req.bits.setIdx)
    //  Debug("[BTBHT6] tag:%x target:%x _type:%x bridx:%x\n", btbWrite.tag,btbWrite.target,btbWrite._type,btbWrite.brIdx)
    //  Debug(p"[BTBHT6] req:${req} \n")
    //} 
    //Debug("[BTBHT5] tag: target:%x type:%d brIdx:%d\n", req.actualTarget, req.btbType, Cat(req.pc(2,0)==="h6".U && !req.isRVC, req.pc(1), ~req.pc(1)))

  btbWrite.tag := btbAddr.getTag(req.pc)
  btbWrite.target := req.actualTarget
  btbWrite._type := req.btbType
  btbWrite.brIdx := Cat(req.pc(2,0)==="h6".U && !req.isRVC, req.pc(1), ~req.pc(1))
  btbWrite.valid := true.B 
  // NOTE: We only update BTB at a miss prediction.
  // If a miss prediction is found, the pipeline will be flushed
  // in the next cycle. Therefore it is safe to use single-port
  // SRAM to implement BTB, since write requests have higher priority
  // than read request. Again, since the pipeline will be flushed
  // in the next cycle, the read request will be useless.
  btb.io.w.req.valid := req.isMissPredict && req.valid
  btb.io.w.req.bits.setIdx := btbAddr.getIdx(req.pc)
  btb.io.w.req.bits.data := btbWrite

  //Debug(true) {
    when (btb.io.w.req.valid && btbWrite.tag === btbAddr.getTag("hffffffff803541a4".U)) {
     Debug("[BTBWrite] %d setIdx:%x req.valid:%d pc:%x target:%x bridx:%x\n", GTimer(), btbAddr.getIdx(req.pc), req.valid, req.pc, req.actualTarget, btbWrite.brIdx)
    }
  //}

  //when (GTimer() > 77437484.U && btb.io.w.req.valid) {
  //  Debug("[BTBWrite-ALL] %d setIdx:%x req.valid:%d pc:%x target:%x bridx:%x\n", GTimer(), btbAddr.getIdx(req.pc), req.valid, req.pc, req.actualTarget, btbWrite.brIdx)
  //}

  val cnt = RegNext(pht.read(btbAddr.getIdx(req.pc)))
  val reqLatch = RegNext(req)
  when (reqLatch.valid && ALUOpType.isBranch(reqLatch.fuOpType)) {
    val taken = reqLatch.actualTaken
    val newCnt = Mux(taken, cnt + 1.U, cnt - 1.U)
    val wen = (taken && (cnt =/= "b11".U)) || (!taken && (cnt =/= "b00".U))
    Debug(reqLatch.isMissPredict,"[redirect] reqLatchpc=%x predictWrong=%x actualTarget=%x actualTaken=%x fuOpType=%x btbType=%x isRVC=%x \n" ,reqLatch.pc,reqLatch.isMissPredict,reqLatch.actualTarget,reqLatch.actualTaken,reqLatch.fuOpType,reqLatch.btbType,reqLatch.isRVC)
    when (wen) {
      pht.write(btbAddr.getIdx(reqLatch.pc), newCnt)
    }
  }
  when (req.valid) {
    when (req.fuOpType === ALUOpType.call)  {
      ras.write(sp.value + 1.U, Mux(req.isRVC, req.pc + 2.U, req.pc + 4.U))
      // raBrIdxs.write(sp.value + 1.U, Mux(req.pc(1), 2.U, 1.U))
      sp.value := sp.value + 1.U
    }
    .elsewhen (req.fuOpType === ALUOpType.ret) {
      when(sp.value === 0.U) {
        //Debug("ATTTTT: sp.value is 0.U\n") //TODO: sp.value may equal to 0.U
      }
      sp.value := Mux(sp.value===0.U, 0.U, sp.value - 1.U) //TODO: sp.value may less than 0.U
    }
  }

  io.out.target := Mux(btbRead._type === BTBtype.R, rasTarget, btbRead.target)
  // io.out.target := Mux(crosslineJumpLatch && !flush, crosslineJumpTarget, Mux(btbRead._type === BTBtype.R, rasTarget, btbRead.target))
  // io.out.brIdx  := btbRead.brIdx & Fill(3, io.out.valid)
  io.brIdx  := btbRead.brIdx & Cat(true.B, crosslineJump, Fill(2, io.out.valid))
  io.out.valid := btbHit && Mux(btbRead._type === BTBtype.B, phtTaken, true.B && rasTarget=/=0.U) //TODO: add rasTarget=/=0.U, need fix
  io.out.rtype := 0.U

  Debug(req.valid, "[BTBUP] pc=%x tag=%x index=%x bridx=%x tgt=%x type=%x\n", req.pc, btbAddr.getTag(req.pc), btbAddr.getIdx(req.pc), Cat(req.pc(1), ~req.pc(1)), req.actualTarget, req.btbType)

  Debug(btbHit,"[BTBHT1]  pcLatch=%x tag=%x,%x index=%x bridx=%x tgt=%x,%x flush %x type:%x\n",pcLatch, btbRead.tag, btbAddr.getTag(pcLatch), btbAddr.getIdx(pcLatch), io.brIdx, btbRead.target, io.out.target, flush,btbRead._type)    
  Debug(btbHit,"[BTBHT3] ,pcLatch=%x  btbreadtype =%x phttaken=%x btbreadvaild=%x \n",pcLatch,btbRead._type === BTBtype.B,phtTaken,btbRead.valid)
  Debug(btbHit,"[BTBHT4] ,pcLatch=%x htTaken =%x io.in.pc.valid=%x in.pc=%x btbidx=%x phtread=%x\n",pcLatch,phtTaken, io.in.pc.valid.asUInt,io.in.pc.bits.asUInt,btbAddr.getIdx(io.in.pc.bits),pht.read(btbAddr.getIdx(io.in.pc.bits)))



  // io.out.valid := btbHit && Mux(btbRead._type === BTBtype.B, phtTaken, true.B) && !crosslineJump || crosslineJumpLatch && !flush && !crosslineJump
  // Note: 
  // btbHit && Mux(btbRead._type === BTBtype.B, phtTaken, true.B) && !crosslineJump : normal branch predict
  // crosslineJumpLatch && !flush && !crosslineJump : cross line branch predict, bpu will require imem to fetch the next 16bit of current inst in next instline
  // `&& !crosslineJump` is used to make sure this logic will run correctly when imem stalls (pcUpdate === false)
  // by using `instline`, we mean a 64 bit instfetch result from imem
  // ROCKET uses a 32 bit instline, and its IDU logic is more simple than this implentation.
}

class BPU_SIMD extends PolarisCoreModule {
  val io = IO(new Bundle {
    val in = new Bundle { val pc = Flipped(Valid((UInt(VAddrBits.W)))) }
    val out = new RedirectIO
    val flush = Input(Bool())
    val brIdx = Output(Vec(4, Bool()))    
    val brinfo = Output(UInt(3.W))
    val crosslineJump = Output(Bool())
  })

  def InstValid(pc: UInt) = LookupTree(pc(2,1), List(
    "b00".U -> "b1111".U,
    "b01".U -> "b1110".U,
    "b10".U -> "b1100".U,
    "b11".U -> "b1000".U
  ))

  // Debug(p"[BPU IN]io.in=${io.in}\n\n")
  val flush = BoolStopWatch(io.flush, io.in.pc.valid, startHighPriority = true)

  // BTB
  val NRbtb = 512
  val btbAddr = new TableAddr_SIMD(log2Up(NRbtb >> 2))
  def btbEntry() = new Bundle {
    val tag = UInt(btbAddr.tagBits.W)
    val _type = UInt(2.W)
    val target = UInt(VAddrBits.W)
    val brinfo = UInt(3.W)
    val valid = Bool()
  }

  val btb = List.fill(4)(Module(new SRAMTemplate(btbEntry(), set = NRbtb >> 2, shouldReset = true, holdRead = true, singlePort = true)))
  // flush BTB when executing fence.i
  val flushBTB = WireInit(false.B)
  val flushTLB = WireInit(false.B)
  BoringUtils.addSink(flushBTB, "MOUFlushICache")
  BoringUtils.addSink(flushTLB, "MOUFlushTLB")
  (0 to 3).map(i => (btb(i).reset := reset.asBool || (flushBTB || flushTLB)))
  // Debug(reset.asBool || (flushBTB || flushTLB), "[BPU-RESET] bpu-reset flushBTB:%d flushTLB:%d\n", flushBTB, flushTLB)

  (0 to 3).map(i => (btb(i).io.r.req.valid := io.in.pc.valid))
  (0 to 3).map(i => (btb(i).io.r.req.bits.setIdx := btbAddr.getIdx(io.in.pc.bits)))
  val btbRead = Wire(Vec(4, btbEntry()))
  (0 to 3).map(i => (btbRead(i) := btb(i).io.r.resp.data(0)))

  val pcLatch = RegEnable(io.in.pc.bits, io.in.pc.valid)
  val btbHit = Wire(Vec(4, Bool()))
  (0 to 3).map(i => btbHit(i) :=btbRead(i).valid && btbRead(i).tag === btbAddr.getTag(pcLatch) && RegNext(btb(i).io.r.req.fire(), init = false.B)  && !(pcLatch(1) && btbRead(i).brinfo(0)))
  // (0 to 3).map(i => btbHit(i) :=btbRead(i).valid && btbRead(i).tag === btbAddr.getTag(pcLatch) && !flush && RegNext(btb(i).io.r.req.fire(), init = false.B)  && !(pcLatch(1) && btbRead(i).brinfo(0)))

  val crosslineJump = btbRead(3).brinfo(2) && btbHit(3)  && !io.brIdx(0) && !io.brIdx(1) && !io.brIdx(2)
  io.crosslineJump := crosslineJump

  // PHT
  val pht = List.fill(4)(Mem(NRbtb >> 2, UInt(2.W)))
  val phtTaken = Wire(Vec(4, Bool()))
  (0 to 3).map(i => (phtTaken(i) := RegEnable(pht(i).read(btbAddr.getIdx(io.in.pc.bits))(1), io.in.pc.valid)))

  // RAS
  val NRras = 16
  val ras = Mem(NRras, UInt(VAddrBits.W))
  val sp = Counter(NRras)
  val rasTarget = RegEnable(ras.read(sp.value), io.in.pc.valid)

  // update BTB PHT RAS
  val req = WireInit(0.U.asTypeOf(new BPUUpdateReq))
  val btbWrite = WireInit(0.U.asTypeOf(btbEntry()))
  BoringUtils.addSink(req, "bpuUpdateReq")

  btbWrite.tag := btbAddr.getTag(req.pc)
  btbWrite.target := req.actualTarget
  btbWrite._type := req.btbType
  btbWrite.brinfo := Cat(req.pc(2,0)==="h6".U && !req.isRVC, req.pc(1), ~req.pc(1))
  btbWrite.valid := true.B 

  (0 to 3).map(i => btb(i).io.w.req.valid := req.isMissPredict && req.valid && i.U === req.pc(2,1))
  (0 to 3).map(i => btb(i).io.w.req.bits.setIdx := btbAddr.getIdx(req.pc))
  (0 to 3).map(i => btb(i).io.w.req.bits.data := btbWrite)

  val getpht = LookupTree(req.pc(2,1), List.tabulate(4)(i => (i.U -> pht(i).read(btbAddr.getIdx(req.pc)))))
  val cnt = RegNext(getpht)
  val reqLatch = RegNext(req)
  when (reqLatch.valid && ALUOpType.isBranch(reqLatch.fuOpType)) {
    val taken = reqLatch.actualTaken
    val newCnt = Mux(taken, cnt + 1.U, cnt - 1.U)
    val wen = (taken && (cnt =/= "b11".U)) || (!taken && (cnt =/= "b00".U))
    when (wen) {
      (0 to 3).map(i => when(i.U === reqLatch.pc(2,1)){pht(i).write(btbAddr.getIdx(reqLatch.pc), newCnt)})
    }
  }
  when (req.valid) {
    when (req.fuOpType === ALUOpType.call)  {
      ras.write(sp.value + 1.U, Mux(req.isRVC, req.pc + 2.U, req.pc + 4.U))
      sp.value := sp.value + 1.U
    }
    .elsewhen (req.fuOpType === ALUOpType.ret && req.pc =/= reqLatch.pc) {
      when(sp.value === 0.U) {
      }
      sp.value := Mux(sp.value===0.U, 0.U, sp.value - 1.U) 
    }
  }

  //IO OUT
  val pcLatchValid = InstValid(pcLatch)
  val target = Wire(Vec(4,UInt(VAddrBits.W)))
  val brinfo = Wire(Vec(4,UInt(3.W)))
  (0 to 3).map(i => target(i) := Mux(btbRead(i)._type === BTBtype.R && sp.value =/= 0.U, rasTarget, btbRead(i).target))
  (0 to 3).map(i => brinfo(i) := btbRead(i).brinfo & Cat(true.B, crosslineJump, Fill(2, io.out.valid))) 
  (0 to 3).map(i => io.brIdx(i) := btbHit(i) && pcLatchValid(i).asBool && Mux(btbRead(i)._type === BTBtype.B, phtTaken(i), true.B) && btbRead(i).valid)
  io.out.target := PriorityMux(io.brIdx, target)
  io.brinfo := PriorityMux(io.brIdx, brinfo)
  io.out.valid := io.brIdx.asUInt.orR
  io.out.rtype := 0.U


}

class DummyPredicter extends PolarisCoreModule {
  val io = IO(new Bundle {
    val in = new Bundle { val pc = Flipped(Valid((UInt(VAddrBits.W)))) }
    val out = new RedirectIO
    val valid = Output(Bool())
    val flush = Input(Bool())
    val ignore = Input(Bool())
    val brIdx = Output(Vec(4, Bool()))
  })
  // Note: when io.ignore, io.out.valid must be false.B for this pc
  // This limitation is for cross instline inst fetch logic
  io.valid := io.in.pc.valid // Predicter is returning a result
  io.out.valid := false.B // Need redirect
  io.out.target := DontCare // Redirect target
  io.out.rtype := DontCare // Predicter does not need to care about it 
  io.brIdx := VecInit(Seq.fill(4)(false.B)) // Which inst triggers jump
}

//---- Legacy BPUs ----
/*
class BPU_nodelay extends PolarisCoreModule {
  val io = IO(new Bundle {
    val in = Flipped(Valid(new CtrlFlowIO))
    val out = new RedirectIO
  })

  val instr = io.in.bits.instr
  val immJ = SignExt(Cat(instr(31), instr(19, 12), instr(20), instr(30, 21), 0.U(1.W)), XLEN)
  val immB = SignExt(Cat(instr(31), instr(7), instr(30, 25), instr(11, 8), 0.U(1.W)), XLEN)
  val table = Array(
    RV32I_BRUInstr.JAL  -> List(immJ, true.B),
    RV32I_BRUInstr.BNE  -> List(immB, instr(31)),
    RV32I_BRUInstr.BEQ  -> List(immB, instr(31)),
    RV32I_BRUInstr.BLT  -> List(immB, instr(31)),
    RV32I_BRUInstr.BGE  -> List(immB, instr(31)),
    RV32I_BRUInstr.BLTU -> List(immB, instr(31)),
    RV32I_BRUInstr.BGEU -> List(immB, instr(31))
  )
  val default = List(immB, false.B)
  val offset :: predict :: Nil = ListLookup(instr, default, table)

  io.out.target := io.in.bits.pc + offset
  io.out.valid := io.in.valid && predict(0)
  io.out.rtype := 0.U
}
*/