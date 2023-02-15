package nutcore

import chisel3._
import chisel3.util._
import chisel3.util.experimental.BoringUtils

import utils._
import top.Settings
import difftest._

class PerfU(implicit val p: NutCoreConfig) extends NutCoreModule {
  val hasPerfCnt = EnablePerfCnt && !p.FPGAPlatform
  val nrPerfCnts = if (hasPerfCnt) 0x80 else 0x3
  val perfCnts = List.fill(nrPerfCnts)(RegInit(0.U(64.W)))

  val mapping = Map() ++ (0 until nrPerfCnts).map { case i => MaskedRegMap(0xb00 + i, perfCnts(i)) }

  val generalPerfCntList = Map(
    "Mcycle"      -> (0xb00, "perfCntCondMcycle"     ),
    "Minstret"    -> (0xb02, "perfCntCondMinstret"   ),
    "MultiCommit" -> (0xb03, "perfCntCondMultiCommit"),
    "MimemStall"  -> (0xb04, "perfCntCondMimemStall" ),
    "MaluInstr"   -> (0xb05, "perfCntCondMaluInstr"  ),
    "MbruInstr"   -> (0xb06, "perfCntCondMbruInstr"  ),
    "MlsuInstr"   -> (0xb07, "perfCntCondMlsuInstr"  ),
    "MmduInstr"   -> (0xb08, "perfCntCondMmduInstr"  ),
    "McsrInstr"   -> (0xb09, "perfCntCondMcsrInstr"  ),
    "MloadInstr"  -> (0xb0a, "perfCntCondMloadInstr" ),
    "MmmioInstr"  -> (0xb0b, "perfCntCondMmmioInstr" ),
    "MicacheHit"  -> (0xb0c, "perfCntCondMicacheHit" ),
    "MdcacheHit"  -> (0xb0d, "perfCntCondMdcacheHit" ),
    "MmulInstr"   -> (0xb0e, "perfCntCondMmulInstr"  ),
    "MifuFlush"   -> (0xb0f, "perfCntCondMifuFlush"  ),
    "MbpBRight"   -> (0xb10, "MbpBRight"             ),
    "MbpBWrong"   -> (0xb11, "MbpBWrong"             ),
    "MbpJRight"   -> (0xb12, "MbpJRight"             ),
    "MbpJWrong"   -> (0xb13, "MbpJWrong"             ),
    "MbpIRight"   -> (0xb14, "MbpIRight"             ),
    "MbpIWrong"   -> (0xb15, "MbpIWrong"             ),
    "MbpRRight"   -> (0xb16, "MbpRRight"             ),
    "MbpRWrong"   -> (0xb17, "MbpRWrong"             ),
    "Ml2cacheHit" -> (0xb18, "perfCntCondMl2cacheHit"),
    "MultiCommit2"-> (0xb19, "perfCntCondMultiCommit2"),
    "MultiCommit3"-> (0xb1a, "perfCntCondMultiCommit3"),
    "MultiCommit4"-> (0xb1b, "perfCntCondMultiCommit4"),
    "CsrOps"      -> (0xb1c, "csrops"                ),
    "MultiCommit5"-> (0xb1d, "perfCntCondMultiCommit5"),
    "MultiCommit6"-> (0xb1e, "perfCntCondMultiCommit6"),
    "csrnotalone" -> (0xb1f, "csrnotalone"            ),
    "mounotalone" -> (0xb20, "mounotalone"            ),
    "LsuWorking"  -> (0xb21, "perfCntCondLsuWorking"  )
  )
  val sequentialPerfCntList = Map(
    "MrawStall"   -> (0xb31, "perfCntCondMrawStall"    ),
    "MexuBusy"    -> (0xb32, "perfCntCondMexuBusy"     ),
    "MloadStall"  -> (0xb33, "perfCntCondMloadStall"   ),
    "MstoreStall" -> (0xb34, "perfCntCondMstoreStall"  ),
    "ISUIssue"    -> (0xb35, "perfCntCondISUIssue"     )
  )

  val perfCntList = generalPerfCntList ++ sequentialPerfCntList

  val perfCntCond = List.fill(0x80)(WireInit(false.B))
  (perfCnts zip perfCntCond).map { case (c, e) => { when (e) { c := c + 1.U } } }
  // Manually update perf counter
  val pendingLS = WireInit(0.U(5.W))
  val pendingSCmt = WireInit(0.U(5.W))
  val pendingSReq = WireInit(0.U(5.W))
  BoringUtils.addSink(pendingLS, "perfCntSrcMpendingLS")
  BoringUtils.addSink(pendingSCmt, "perfCntSrcMpendingSCmt")
  BoringUtils.addSink(pendingSReq, "perfCntSrcMpendingSReq")
  when(perfCntCond(0xb03 & 0x7f)) { when(perfCntCond(0xb19 & 0x7f)){
                                      perfCnts(0xb02 & 0x7f) := perfCnts(0xb02 & 0x7f) + 2.U 
                                  }.elsewhen(perfCntCond(0xb1a & 0x7f)){
                                      perfCnts(0xb02 & 0x7f) := perfCnts(0xb02 & 0x7f) + 3.U 
                                  }.elsewhen(perfCntCond(0xb1b & 0x7f)){
                                      perfCnts(0xb02 & 0x7f) := perfCnts(0xb02 & 0x7f) + 4.U 
                                  }.elsewhen(perfCntCond(0xb1d & 0x7f)){
                                      perfCnts(0xb02 & 0x7f) := perfCnts(0xb02 & 0x7f) + 5.U 
                                  }.elsewhen(perfCntCond(0xb1e & 0x7f)){
                                      perfCnts(0xb02 & 0x7f) := perfCnts(0xb02 & 0x7f) + 6.U 
                                  }} // MultiCommit
  if (hasPerfCnt) {
    when(true.B) { perfCnts(0xb63 & 0x7f) := perfCnts(0xb63 & 0x7f) + pendingLS } 
    when(true.B) { perfCnts(0xb64 & 0x7f) := perfCnts(0xb64 & 0x7f) + pendingSCmt } 
    when(true.B) { perfCnts(0xb65 & 0x7f) := perfCnts(0xb66 & 0x7f) + pendingSReq } 
  }

  BoringUtils.addSource(WireInit(true.B), "perfCntCondMcycle")
  perfCntList.map { case (name, (addr, boringId)) => {
    BoringUtils.addSink(perfCntCond(addr & 0x7f), boringId)
    if (!hasPerfCnt) {
      // do not enable perfcnts except for Mcycle and Minstret
      if (addr != perfCntList("Mcycle")._1 && addr != perfCntList("Minstret")._1) {
        perfCntCond(addr & 0x7f) := false.B
      }
    }
  }}

  val nutcoretrap = WireInit(false.B)
  BoringUtils.addSink(nutcoretrap, "nutcoretrap")
  def readWithScala(addr: Int): UInt = mapping(addr)._1

  println("PerfU index %d",perfCntList("Mcycle")._1.U)

  if (!p.FPGAPlatform) {
    // to monitor
    BoringUtils.addSource(readWithScala(perfCntList("Mcycle")._1), "simCycleCnt")
    BoringUtils.addSource(readWithScala(perfCntList("Minstret")._1), "simInstrCnt")
    if (hasPerfCnt) {
      // display all perfcnt when nutcoretrap is executed
      val PrintPerfCntToCSV = true
      when (nutcoretrap) {
        printf("======== PerfCnt =========\n")
        perfCntList.toSeq.sortBy(_._2._1).map { case (name, (addr, boringId)) =>
          printf("%d <- " + name + "\n", readWithScala(addr)) }
        if(PrintPerfCntToCSV){
        printf("======== PerfCntCSV =========\n\n")
        perfCntList.toSeq.sortBy(_._2._1).map { case (name, (addr, boringId)) =>
          printf(name + ", ")}
        printf("\n\n\n")
        perfCntList.toSeq.sortBy(_._2._1).map { case (name, (addr, boringId)) =>
          printf("%d, ", readWithScala(addr)) }
        printf("\n\n\n")
        }
      }
    }
  }else {
    BoringUtils.addSource(readWithScala(perfCntList("Minstret")._1), "ilaInstrCnt")
  }
}