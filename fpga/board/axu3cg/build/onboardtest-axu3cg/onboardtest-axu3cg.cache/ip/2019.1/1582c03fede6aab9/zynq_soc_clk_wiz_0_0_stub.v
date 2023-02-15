// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Aug 16 11:37:16 2022
// Host        : stu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_soc_clk_wiz_0_0_stub.v
// Design      : zynq_soc_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3cg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(coreclk, uncoreclk, clk40, clk27, resetn, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="coreclk,uncoreclk,clk40,clk27,resetn,locked,clk_in1" */;
  output coreclk;
  output uncoreclk;
  output clk40;
  output clk27;
  input resetn;
  output locked;
  input clk_in1;
endmodule
