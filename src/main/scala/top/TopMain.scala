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
/**************************************************************************************
* Reference:
* Zong, J., Wang, J., Li, G., Wu, R., Zhao D.*, Polaris 23: a high throughput neuromorphic processing element by RISC-V customized instruction extension for spiking neural network (RV-SNN 2.0) and SIMD-style implementation of LIF model with backpropagation STDP. J Supercomput 81, 398 (2025)
***************************************************************************************/

package top

import polaris.PolarisConfig
import system.Polaris
import device.{AXI4VGA}
import sim.SimTop

import chisel3._
import chisel3.stage._

class Top extends Module {
  val io = IO(new Bundle{})
  val polaris = Module(new Polaris()(PolarisConfig()))
  val vga = Module(new AXI4VGA)

  polaris.io := DontCare
  vga.io := DontCare
  dontTouch(polaris.io)
  dontTouch(vga.io)
}

object TopMain extends App {
  def parseArgs(info: String, args: Array[String]): String = {
    var target = ""
    for (arg <- args) { if (arg.startsWith(info + "=") == true) { target = arg } }
    require(target != "")
    target.substring(info.length()+1)
  }
  val board = parseArgs("BOARD", args)
  val core = parseArgs("CORE", args)
  
  val s = (board match {
    case "sim"    => Nil
    case "pynq"   => PynqSettings()
    case "axu3cg" => Axu3cgSettings()
    case "PXIe"   => PXIeSettings()
  } ) ++ ( core match {
    case "inorder"  => InOrderSettings()
    case "ooo"  => OOOSettings()
    case "embedded"=> EmbededSettings()
  } )
  s.foreach{Settings.settings += _} // add and overwrite DefaultSettings
  println("====== Settings = (" + board + ", " +  core + ") ======")
  Settings.settings.toList.sortBy(_._1)(Ordering.String).foreach {
    case (f, v: Long) =>
      println(f + " = 0x" + v.toHexString)
    case (f, v) =>
      println(f + " = " + v)
  }
  if (board == "sim") {
    (new ChiselStage).execute(args, Seq(
      ChiselGeneratorAnnotation(() => new SimTop))
    )
  } else {
    (new ChiselStage).execute(args, Seq(
      ChiselGeneratorAnnotation(() => new Top))
    )
  }
}
