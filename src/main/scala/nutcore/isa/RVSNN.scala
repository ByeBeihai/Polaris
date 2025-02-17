/**************************************************************************************
* Copyright (c) 2025 Institute of Computing Technology, CAS
* Copyright (c) 2025 University of Chinese Academy of Sciences
* 
* polaris is licensed under Mulan PSL v2.
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
/**************************************************************************************
* Reference:
* Zong, J., Wang, J., Li, G., Wu, R., Zhao D.*, Polaris 23: a high throughput neuromorphic processing element by RISC-V customized instruction extension for spiking neural network (RV-SNN 2.0) and SIMD-style implementation of LIF model with backpropagation STDP. J Supercomput 81, 398 (2025)
***************************************************************************************/
package polaris

import chisel3._
import chisel3.util._

object RVSNNInstr extends HasInstrType{
    def NUP =   BitPat("b000000_?_?????_?????_000_?????_0001011")
    def BPO =   BitPat("b0000001_?????_?????_001_?????_0001011")
    def EXP =   BitPat("b0000000_00000_?????_010_?????_0001011")
    def TDR =   BitPat("b0000000_?????_?????_100_?????_0001011")
    def SUM =   BitPat("b000000_?_?????_?????_101_?????_0001011")
    def SVR =   BitPat("b0000011_?????_?????_111_?????_0001011")

    val table = Array(
        NUP         ->  List(InstrSNN, FuType.snnu, SNNOpType.nup),
        BPO         ->  List(InstrSNN, FuType.snnu, SNNOpType.bpo),
        EXP         ->  List(InstrSNN, FuType.snnu, SNNOpType.exp),
        TDR         ->  List(InstrSNN, FuType.snnu, SNNOpType.tdr),
        SUM         ->  List(InstrSNN, FuType.snnu, SNNOpType.sum),
        SVR         ->  List(InstrSNN, FuType.snnu, SNNOpType.svr)
    )
}