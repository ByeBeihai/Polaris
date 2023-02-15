//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_cef6.bd
//Design : bd_cef6
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_cef6,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_cef6,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "nutshell_system_ila_0_0.hwdef" *) 
module bd_cef6
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN nutshell_coreclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  input [38:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [4:0]probe3;
  input [63:0]probe4;
  input [63:0]probe5;

  wire clk_1;
  wire [38:0]probe0_1;
  wire [0:0]probe1_1;
  wire [0:0]probe2_1;
  wire [4:0]probe3_1;
  wire [63:0]probe4_1;
  wire [63:0]probe5_1;

  assign clk_1 = clk;
  assign probe0_1 = probe0[38:0];
  assign probe1_1 = probe1[0];
  assign probe2_1 = probe2[0];
  assign probe3_1 = probe3[4:0];
  assign probe4_1 = probe4[63:0];
  assign probe5_1 = probe5[63:0];
  bd_cef6_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe2(probe2_1),
        .probe3(probe3_1),
        .probe4(probe4_1),
        .probe5(probe5_1));
endmodule
