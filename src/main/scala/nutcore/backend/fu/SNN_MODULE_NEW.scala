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

import utils._

class SNNISU_NEW extends PolarisCoreModule{
    val io = IO(new Bundle{
        val validIn = Vec(2, Input(Bool()))
        val dcIn = Vec(2, Flipped(new DecodeIO))
        val SCtrl = Vec(2, new SCtrlIO)
        val dcOut = Vec(2, new DecodeIO)
        val LNUsumres = Input(UInt(64.W))
        val LNUvalid = Input(Bool())
    })


    def notafter(ptr1:UInt,ptr2:UInt,flag1:UInt,flag2:UInt):Bool= (ptr1 <= ptr2) && (flag1 === flag2) || (ptr1 > ptr2) && (flag1 =/= flag2)
    
    val src01  = io.dcIn(0).data.src1
    val src02  = io.dcIn(0).data.src2
    val func0  = io.dcIn(0).ctrl.fuOpType
    val src11  = io.dcIn(1).data.src1
    val src12  = io.dcIn(1).data.src2
    val func1  = io.dcIn(1).ctrl.fuOpType

    io.dcOut := io.dcIn

    val srf = new SRegFile

    io.SCtrl(0).SRF4(3) := DontCare
    io.SCtrl(1).SRF4(3) := DontCare

    io.SCtrl(0).isNup  := func0 === SNNOpType.nup
    io.SCtrl(0).isBpo  := func0 === SNNOpType.bpo 
    io.SCtrl(0).isExp  := func0 === SNNOpType.exp 
    io.SCtrl(0).isTdr  := func0 === SNNOpType.tdr 
    io.SCtrl(0).isSum  := func0 === SNNOpType.sum 
    io.SCtrl(0).isSvr  := func0 === SNNOpType.svr 
    io.SCtrl(0).hasTs  := func0 === SNNOpType.nup && io.dcIn(0).cf.instr(25) === "b1".U
    io.SCtrl(0).hasAcc := func0 === SNNOpType.sum && io.dcIn(0).cf.instr(25) === "b1".U
    io.SCtrl(1).isNup  := func1 === SNNOpType.nup
    io.SCtrl(1).isBpo  := func1 === SNNOpType.bpo 
    io.SCtrl(1).isExp  := func1 === SNNOpType.exp 
    io.SCtrl(1).isTdr  := func1 === SNNOpType.tdr 
    io.SCtrl(1).isSum  := func1 === SNNOpType.sum 
    io.SCtrl(1).isSvr  := func1 === SNNOpType.svr 
    io.SCtrl(1).hasTs  := func1 === SNNOpType.nup && io.dcIn(1).cf.instr(25) === "b1".U
    io.SCtrl(1).hasAcc := func1 === SNNOpType.sum && io.dcIn(1).cf.instr(25) === "b1".U
    val len = 16
    for(i <- 0 until( XLEN/ len)){
        io.SCtrl(0).DIn1(i) := src01(len * i + len - 1, len * i)
        io.SCtrl(0).DIn2(i) := src02(len * i + len - 1, len * i)
        io.SCtrl(1).DIn1(i) := src11(len * i + len - 1, len * i)
        io.SCtrl(1).DIn2(i) := src12(len * i + len - 1, len * i)
        Debug("DIN01(%d) %x DIN02(%d) %x SRF04(%d) %x\n", i.U, io.SCtrl(0).DIn1(i), i.U, io.SCtrl(0).DIn2(i), i.U, io.SCtrl(0).SRF4(i))
        Debug("DIN11(%d) %x DIN12(%d) %x SRF14(%d) %x\n", i.U, io.SCtrl(1).DIn1(i), i.U, io.SCtrl(1).DIn2(i), i.U, io.SCtrl(1).SRF4(i))
    }
    val depender = Mux(notafter(io.dcIn(0).InstNo, io.dcIn(1).InstNo, io.dcIn(0).InstFlag, io.dcIn(1).InstFlag), 0.U, 1.U) 
    val dependee = Mux(depender === 0.U, 1.U, 0.U)
    val acc_depend = (io.SCtrl(dependee).isSum && io.SCtrl(dependee).hasAcc && io.validIn(dependee)) && (io.SCtrl(depender).isSum && io.SCtrl(depender).hasAcc && io.validIn(depender)) 
    val svr_depend = (io.SCtrl(dependee).isSum && io.SCtrl(dependee).hasAcc && io.validIn(dependee)) && (io.SCtrl(depender).isSvr && io.validIn(depender))
    when(acc_depend){
        val adder_depender = WireInit(0.U.asTypeOf(Vec(4, UInt(16.W))))
        val adder_dependee = WireInit(0.U.asTypeOf(Vec(4, UInt(16.W))))
        for(i <- 0 until 4){
            adder_depender(i) := Mux(io.SCtrl(depender).DIn2(i) === 1.U, io.SCtrl(depender).DIn1(i), 0.U)
            adder_dependee(i) := Mux(io.SCtrl(dependee).DIn2(i) === 1.U, io.SCtrl(dependee).DIn1(i), 0.U)
        }
        val toDependee = adder_depender.reduce(_ + _) + srf.read(SRFAddr.ACC)
        val toSRF = toDependee + adder_dependee.reduce(_ + _)
        io.SCtrl(dependee).SRF4(3) := toDependee
        io.SCtrl(depender).SRF4(3) := srf.read(SRFAddr.ACC)
        srf.write(SRFAddr.ACC, toSRF)
    }.elsewhen(svr_depend){
        io.SCtrl(dependee).SRF4(3) := io.dcIn(depender).data.src2
        io.SCtrl(depender).SRF4(3) := io.dcIn(depender).data.src2
        srf.write(SRFAddr.ACC, io.dcIn(depender).data.src2)
    }.otherwise{
        io.SCtrl(0).SRF4(3) := srf.read(SRFAddr.ACC)
        io.SCtrl(1).SRF4(3) := srf.read(SRFAddr.ACC)
    }

    when(io.SCtrl(0).isSvr){
        srf.write(SRFAddr.ACC, src02)
        srf.write(SRFAddr.VR, ZeroExt(src01(15, 0), 64))
        srf.write(SRFAddr.LR, ZeroExt(src01(31, 16), 64))
        srf.write(SRFAddr.TAU, ZeroExt(src01(47, 32), 64))
    }
    when(io.SCtrl(1).isSvr){
        srf.write(SRFAddr.ACC, src12)
        srf.write(SRFAddr.VR, ZeroExt(src01(15, 0), 64))
        srf.write(SRFAddr.LR, ZeroExt(src01(31, 16), 64))
        srf.write(SRFAddr.TAU, ZeroExt(src01(47, 32), 64))
    }

    when(io.LNUvalid){
        srf.write(SRFAddr.ACC, io.LNUsumres)
    }

    for(i <- 0 until 2){
        io.SCtrl(i).SRF4(SRFAddr.VR) := srf.read(SRFAddr.VR)
        io.SCtrl(i).SRF4(SRFAddr.TAU) := srf.read(SRFAddr.TAU)
        io.SCtrl(i).SRF4(SRFAddr.LR) := srf.read(SRFAddr.LR)
    }
    for(i <- 0 until 4){
        Debug("[SRF] srf(%d) %x\n", 1.U, srf.read(i.U))
    }
}

class LNU_NEW extends PolarisCoreModule{
    val io = IO(new LNU_IO)


    val nu_res = WireInit(VecInit(Seq.fill(XLEN/16)(0.U(16.W))))
    val nu = WireInit(VecInit(Seq.fill(XLEN/16)(0.U(16.W))))
    val tmp_nu = WireInit(VecInit(Seq.fill(XLEN/16)(0.U(16.W))))
    val ksiw03 = WireInit(VecInit(Seq.fill(4)(0.U(16.W))))
    val sumres = WireInit(0.U(XLEN.W))
    when(io.in.bits.SCtrl.isNup){
        for(i <- 0 until (XLEN/16)){
            when(io.in.bits.SCtrl.hasTs){
                val tau = io.in.bits.SCtrl.SRF4(SRFAddr.TAU)
                val vr = io.in.bits.SCtrl.SRF4(SRFAddr.VR)
                nu(i) := io.in.bits.SCtrl.DIn1(i)(7, 0)
                
                tmp_nu(i) := nu(i) + ((vr + io.in.bits.SCtrl.DIn2(i)) >> tau) - (nu(i) >> tau)
                nu_res(i) := Cat(io.in.bits.SCtrl.DIn1(i)(15, 8), tmp_nu(i)) 
                Debug("[LNU] NU(%d) %x NURES(%d) %x\n", i.U, nu(i), i.U, nu_res(i))
            }.otherwise{
                val tau = io.in.bits.SCtrl.SRF4(SRFAddr.TAU)
                val vr = io.in.bits.SCtrl.SRF4(SRFAddr.VR)
                nu(i) := io.in.bits.SCtrl.DIn1(i)
                val weight = io.in.bits.SCtrl.DIn2(i)
                nu_res(i) := nu(i) + ((vr + weight) >> tau) - (nu(i) >> tau)
                Debug("[LNU] NU(%d) %x SP(%d) %x VR %x TAU %x NURES(%d) %x\n", i.U, nu(i),i.U, weight, vr, tau, i.U, nu_res(i))
            }
        }
    }.elsewhen(io.in.bits.SCtrl.isSvr){
        for (i <- 1 to 2){
            nu_res(i) := 0.U
        }
        nu_res(0) := 1.U
    }.elsewhen(io.in.bits.SCtrl.isSum){
        val acc = io.in.bits.SCtrl.SRF4(SRFAddr.ACC)

        for(i <- 0 until XLEN/16){
          ksiw03(i) := Mux(io.in.bits.SCtrl.DIn2(i) === 1.U, io.in.bits.SCtrl.DIn1(i), 0.U(16.W))
          Debug("[LNU] k(%d) %x\n", i.U, ksiw03(i))
        }
        Debug("[LNU] acc %x\n", acc)
        sumres := Mux(io.in.bits.SCtrl.hasAcc , ksiw03.reduce(_ + _) + acc, ksiw03.reduce(_ + _))
    } 
    io.out.bits.res := Mux(io.in.bits.SCtrl.isSum, sumres, nu_res.reverse.reduce(Cat(_,_))) 


    io.in.ready := !io.in.valid
    io.out.valid :=  io.in.valid 

    io.out.bits.dcOut :=  io.in.bits.dcIn
    Debug("[LNU] READY %x OUTVALID %x INVALID %x RES %x\n", io.in.ready, io.out.valid, io.in.valid, io.out.bits.res)
}