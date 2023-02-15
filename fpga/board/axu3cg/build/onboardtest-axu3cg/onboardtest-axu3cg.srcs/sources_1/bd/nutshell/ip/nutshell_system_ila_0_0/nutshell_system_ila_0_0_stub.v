// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Aug 16 11:47:14 2022
// Host        : stu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_system_ila_0_0/nutshell_system_ila_0_0_stub.v
// Design      : nutshell_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3cg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_cef6,Vivado 2019.1" *)
module nutshell_system_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[38:0],probe1[0:0],probe2[0:0],probe3[4:0],probe4[63:0],probe5[63:0]" */;
  input clk;
  input [38:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [4:0]probe3;
  input [63:0]probe4;
  input [63:0]probe5;
endmodule
