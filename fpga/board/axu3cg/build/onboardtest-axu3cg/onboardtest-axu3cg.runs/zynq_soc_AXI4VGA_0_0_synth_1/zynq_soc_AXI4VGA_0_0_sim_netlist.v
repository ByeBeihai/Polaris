// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Aug 16 11:32:23 2022
// Host        : stu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_soc_AXI4VGA_0_0_sim_netlist.v
// Design      : zynq_soc_AXI4VGA_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4RAM
   (io_in_fb_bvalid,
    fb_io_in_rvalid,
    io_vga_rgb,
    fb_io_in_rdata,
    io_in_fb_wready,
    io_in_fb_awready,
    reset,
    clock,
    fbPixelAddrV1_reg,
    Q,
    fbPixelAddrV0_reg,
    io_vga_rgb_23_sp_1,
    \io_vga_rgb[0] ,
    r,
    REG_1,
    io_in_fb_awaddr,
    io_in_fb_wdata,
    io_in_fb_wstrb,
    io_in_fb_wvalid,
    io_in_fb_awvalid,
    io_in_fb_bready);
  output io_in_fb_bvalid;
  output fb_io_in_rvalid;
  output [23:0]io_vga_rgb;
  output [47:0]fb_io_in_rdata;
  output io_in_fb_wready;
  output io_in_fb_awready;
  input reset;
  input clock;
  input [15:0]fbPixelAddrV1_reg;
  input [0:0]Q;
  input [15:0]fbPixelAddrV0_reg;
  input io_vga_rgb_23_sp_1;
  input [1:0]\io_vga_rgb[0] ;
  input [47:0]r;
  input REG_1;
  input [15:0]io_in_fb_awaddr;
  input [47:0]io_in_fb_wdata;
  input [5:0]io_in_fb_wstrb;
  input io_in_fb_wvalid;
  input io_in_fb_awvalid;
  input io_in_fb_bready;

  wire MEM_0_reg_bram_10_i_1_n_0;
  wire MEM_0_reg_bram_10_i_2_n_0;
  wire MEM_0_reg_bram_10_i_3_n_0;
  wire MEM_0_reg_bram_10_n_0;
  wire MEM_0_reg_bram_10_n_1;
  wire MEM_0_reg_bram_10_n_136;
  wire MEM_0_reg_bram_10_n_137;
  wire MEM_0_reg_bram_10_n_138;
  wire MEM_0_reg_bram_10_n_139;
  wire MEM_0_reg_bram_10_n_60;
  wire MEM_0_reg_bram_10_n_61;
  wire MEM_0_reg_bram_10_n_62;
  wire MEM_0_reg_bram_10_n_63;
  wire MEM_0_reg_bram_10_n_64;
  wire MEM_0_reg_bram_10_n_65;
  wire MEM_0_reg_bram_10_n_66;
  wire MEM_0_reg_bram_10_n_67;
  wire MEM_0_reg_bram_11_i_1_n_0;
  wire MEM_0_reg_bram_11_i_2_n_0;
  wire MEM_0_reg_bram_11_i_3_n_0;
  wire MEM_0_reg_bram_11_n_0;
  wire MEM_0_reg_bram_11_n_1;
  wire MEM_0_reg_bram_11_n_136;
  wire MEM_0_reg_bram_11_n_137;
  wire MEM_0_reg_bram_11_n_138;
  wire MEM_0_reg_bram_11_n_139;
  wire MEM_0_reg_bram_11_n_60;
  wire MEM_0_reg_bram_11_n_61;
  wire MEM_0_reg_bram_11_n_62;
  wire MEM_0_reg_bram_11_n_63;
  wire MEM_0_reg_bram_11_n_64;
  wire MEM_0_reg_bram_11_n_65;
  wire MEM_0_reg_bram_11_n_66;
  wire MEM_0_reg_bram_11_n_67;
  wire MEM_0_reg_bram_12_i_1_n_0;
  wire MEM_0_reg_bram_12_i_2_n_0;
  wire MEM_0_reg_bram_12_i_3_n_0;
  wire MEM_0_reg_bram_12_n_0;
  wire MEM_0_reg_bram_12_n_1;
  wire MEM_0_reg_bram_12_n_136;
  wire MEM_0_reg_bram_12_n_137;
  wire MEM_0_reg_bram_12_n_138;
  wire MEM_0_reg_bram_12_n_139;
  wire MEM_0_reg_bram_12_n_60;
  wire MEM_0_reg_bram_12_n_61;
  wire MEM_0_reg_bram_12_n_62;
  wire MEM_0_reg_bram_12_n_63;
  wire MEM_0_reg_bram_12_n_64;
  wire MEM_0_reg_bram_12_n_65;
  wire MEM_0_reg_bram_12_n_66;
  wire MEM_0_reg_bram_12_n_67;
  wire MEM_0_reg_bram_13_i_1_n_0;
  wire MEM_0_reg_bram_13_i_2_n_0;
  wire MEM_0_reg_bram_13_i_3_n_0;
  wire MEM_0_reg_bram_13_n_0;
  wire MEM_0_reg_bram_13_n_1;
  wire MEM_0_reg_bram_13_n_136;
  wire MEM_0_reg_bram_13_n_137;
  wire MEM_0_reg_bram_13_n_138;
  wire MEM_0_reg_bram_13_n_139;
  wire MEM_0_reg_bram_13_n_60;
  wire MEM_0_reg_bram_13_n_61;
  wire MEM_0_reg_bram_13_n_62;
  wire MEM_0_reg_bram_13_n_63;
  wire MEM_0_reg_bram_13_n_64;
  wire MEM_0_reg_bram_13_n_65;
  wire MEM_0_reg_bram_13_n_66;
  wire MEM_0_reg_bram_13_n_67;
  wire MEM_0_reg_bram_14_i_1_n_0;
  wire MEM_0_reg_bram_14_i_2_n_0;
  wire MEM_0_reg_bram_14_i_3_n_0;
  wire MEM_0_reg_bram_14_n_0;
  wire MEM_0_reg_bram_14_n_1;
  wire MEM_0_reg_bram_14_n_136;
  wire MEM_0_reg_bram_14_n_137;
  wire MEM_0_reg_bram_14_n_138;
  wire MEM_0_reg_bram_14_n_139;
  wire MEM_0_reg_bram_14_n_60;
  wire MEM_0_reg_bram_14_n_61;
  wire MEM_0_reg_bram_14_n_62;
  wire MEM_0_reg_bram_14_n_63;
  wire MEM_0_reg_bram_14_n_64;
  wire MEM_0_reg_bram_14_n_65;
  wire MEM_0_reg_bram_14_n_66;
  wire MEM_0_reg_bram_14_n_67;
  wire MEM_0_reg_bram_15_i_1_n_0;
  wire MEM_0_reg_bram_15_i_2_n_0;
  wire MEM_0_reg_bram_15_i_3_n_0;
  wire MEM_0_reg_bram_15_n_124;
  wire MEM_0_reg_bram_15_n_125;
  wire MEM_0_reg_bram_15_n_126;
  wire MEM_0_reg_bram_15_n_127;
  wire MEM_0_reg_bram_15_n_128;
  wire MEM_0_reg_bram_15_n_129;
  wire MEM_0_reg_bram_15_n_130;
  wire MEM_0_reg_bram_15_n_131;
  wire MEM_0_reg_bram_1_i_10_n_0;
  wire MEM_0_reg_bram_1_i_11_n_0;
  wire MEM_0_reg_bram_1_i_12_n_0;
  wire MEM_0_reg_bram_1_i_13_n_0;
  wire MEM_0_reg_bram_1_i_14_n_0;
  wire MEM_0_reg_bram_1_i_15_n_0;
  wire MEM_0_reg_bram_1_i_17_n_0;
  wire MEM_0_reg_bram_1_i_1_n_0;
  wire MEM_0_reg_bram_1_i_20_n_0;
  wire MEM_0_reg_bram_1_i_21_n_0;
  wire MEM_0_reg_bram_1_i_2_n_0;
  wire MEM_0_reg_bram_1_i_3_n_0;
  wire MEM_0_reg_bram_1_i_4_n_0;
  wire MEM_0_reg_bram_1_i_5_n_0;
  wire MEM_0_reg_bram_1_i_6_n_0;
  wire MEM_0_reg_bram_1_i_7_n_0;
  wire MEM_0_reg_bram_1_i_8_n_0;
  wire MEM_0_reg_bram_1_i_9_n_0;
  wire MEM_0_reg_bram_1_n_0;
  wire MEM_0_reg_bram_1_n_1;
  wire MEM_0_reg_bram_1_n_136;
  wire MEM_0_reg_bram_1_n_137;
  wire MEM_0_reg_bram_1_n_138;
  wire MEM_0_reg_bram_1_n_139;
  wire MEM_0_reg_bram_1_n_60;
  wire MEM_0_reg_bram_1_n_61;
  wire MEM_0_reg_bram_1_n_62;
  wire MEM_0_reg_bram_1_n_63;
  wire MEM_0_reg_bram_1_n_64;
  wire MEM_0_reg_bram_1_n_65;
  wire MEM_0_reg_bram_1_n_66;
  wire MEM_0_reg_bram_1_n_67;
  wire MEM_0_reg_bram_2_i_1_n_0;
  wire MEM_0_reg_bram_2_i_2_n_0;
  wire MEM_0_reg_bram_2_i_3_n_0;
  wire MEM_0_reg_bram_2_i_4_n_0;
  wire MEM_0_reg_bram_2_n_0;
  wire MEM_0_reg_bram_2_n_1;
  wire MEM_0_reg_bram_2_n_136;
  wire MEM_0_reg_bram_2_n_137;
  wire MEM_0_reg_bram_2_n_138;
  wire MEM_0_reg_bram_2_n_139;
  wire MEM_0_reg_bram_2_n_60;
  wire MEM_0_reg_bram_2_n_61;
  wire MEM_0_reg_bram_2_n_62;
  wire MEM_0_reg_bram_2_n_63;
  wire MEM_0_reg_bram_2_n_64;
  wire MEM_0_reg_bram_2_n_65;
  wire MEM_0_reg_bram_2_n_66;
  wire MEM_0_reg_bram_2_n_67;
  wire MEM_0_reg_bram_3_i_1_n_0;
  wire MEM_0_reg_bram_3_i_2_n_0;
  wire MEM_0_reg_bram_3_i_3_n_0;
  wire MEM_0_reg_bram_3_i_4_n_0;
  wire MEM_0_reg_bram_3_n_0;
  wire MEM_0_reg_bram_3_n_1;
  wire MEM_0_reg_bram_3_n_136;
  wire MEM_0_reg_bram_3_n_137;
  wire MEM_0_reg_bram_3_n_138;
  wire MEM_0_reg_bram_3_n_139;
  wire MEM_0_reg_bram_3_n_60;
  wire MEM_0_reg_bram_3_n_61;
  wire MEM_0_reg_bram_3_n_62;
  wire MEM_0_reg_bram_3_n_63;
  wire MEM_0_reg_bram_3_n_64;
  wire MEM_0_reg_bram_3_n_65;
  wire MEM_0_reg_bram_3_n_66;
  wire MEM_0_reg_bram_3_n_67;
  wire MEM_0_reg_bram_4_i_1_n_0;
  wire MEM_0_reg_bram_4_i_2_n_0;
  wire MEM_0_reg_bram_4_i_3_n_0;
  wire MEM_0_reg_bram_4_i_4_n_0;
  wire MEM_0_reg_bram_4_n_0;
  wire MEM_0_reg_bram_4_n_1;
  wire MEM_0_reg_bram_4_n_136;
  wire MEM_0_reg_bram_4_n_137;
  wire MEM_0_reg_bram_4_n_138;
  wire MEM_0_reg_bram_4_n_139;
  wire MEM_0_reg_bram_4_n_60;
  wire MEM_0_reg_bram_4_n_61;
  wire MEM_0_reg_bram_4_n_62;
  wire MEM_0_reg_bram_4_n_63;
  wire MEM_0_reg_bram_4_n_64;
  wire MEM_0_reg_bram_4_n_65;
  wire MEM_0_reg_bram_4_n_66;
  wire MEM_0_reg_bram_4_n_67;
  wire MEM_0_reg_bram_5_i_1_n_0;
  wire MEM_0_reg_bram_5_i_2_n_0;
  wire MEM_0_reg_bram_5_i_3_n_0;
  wire MEM_0_reg_bram_5_i_4_n_0;
  wire MEM_0_reg_bram_5_n_0;
  wire MEM_0_reg_bram_5_n_1;
  wire MEM_0_reg_bram_5_n_136;
  wire MEM_0_reg_bram_5_n_137;
  wire MEM_0_reg_bram_5_n_138;
  wire MEM_0_reg_bram_5_n_139;
  wire MEM_0_reg_bram_5_n_60;
  wire MEM_0_reg_bram_5_n_61;
  wire MEM_0_reg_bram_5_n_62;
  wire MEM_0_reg_bram_5_n_63;
  wire MEM_0_reg_bram_5_n_64;
  wire MEM_0_reg_bram_5_n_65;
  wire MEM_0_reg_bram_5_n_66;
  wire MEM_0_reg_bram_5_n_67;
  wire MEM_0_reg_bram_6_i_1_n_0;
  wire MEM_0_reg_bram_6_i_2_n_0;
  wire MEM_0_reg_bram_6_i_3_n_0;
  wire MEM_0_reg_bram_6_i_4_n_0;
  wire MEM_0_reg_bram_6_n_0;
  wire MEM_0_reg_bram_6_n_1;
  wire MEM_0_reg_bram_6_n_136;
  wire MEM_0_reg_bram_6_n_137;
  wire MEM_0_reg_bram_6_n_138;
  wire MEM_0_reg_bram_6_n_139;
  wire MEM_0_reg_bram_6_n_60;
  wire MEM_0_reg_bram_6_n_61;
  wire MEM_0_reg_bram_6_n_62;
  wire MEM_0_reg_bram_6_n_63;
  wire MEM_0_reg_bram_6_n_64;
  wire MEM_0_reg_bram_6_n_65;
  wire MEM_0_reg_bram_6_n_66;
  wire MEM_0_reg_bram_6_n_67;
  wire MEM_0_reg_bram_7_i_1_n_0;
  wire MEM_0_reg_bram_7_i_2_n_0;
  wire MEM_0_reg_bram_7_i_3_n_0;
  wire MEM_0_reg_bram_7_i_4_n_0;
  wire MEM_0_reg_bram_7_i_5_n_0;
  wire MEM_0_reg_bram_7_n_0;
  wire MEM_0_reg_bram_7_n_1;
  wire MEM_0_reg_bram_7_n_136;
  wire MEM_0_reg_bram_7_n_137;
  wire MEM_0_reg_bram_7_n_138;
  wire MEM_0_reg_bram_7_n_139;
  wire MEM_0_reg_bram_7_n_60;
  wire MEM_0_reg_bram_7_n_61;
  wire MEM_0_reg_bram_7_n_62;
  wire MEM_0_reg_bram_7_n_63;
  wire MEM_0_reg_bram_7_n_64;
  wire MEM_0_reg_bram_7_n_65;
  wire MEM_0_reg_bram_7_n_66;
  wire MEM_0_reg_bram_7_n_67;
  wire MEM_0_reg_bram_8_i_1_n_0;
  wire MEM_0_reg_bram_8_i_2_n_0;
  wire MEM_0_reg_bram_8_i_3_n_0;
  wire MEM_0_reg_bram_8_i_4_n_0;
  wire MEM_0_reg_bram_8_n_124;
  wire MEM_0_reg_bram_8_n_125;
  wire MEM_0_reg_bram_8_n_126;
  wire MEM_0_reg_bram_8_n_127;
  wire MEM_0_reg_bram_8_n_128;
  wire MEM_0_reg_bram_8_n_129;
  wire MEM_0_reg_bram_8_n_130;
  wire MEM_0_reg_bram_8_n_131;
  wire MEM_0_reg_bram_9_i_1_n_0;
  wire MEM_0_reg_bram_9_i_2_n_0;
  wire MEM_0_reg_bram_9_i_3_n_0;
  wire MEM_0_reg_bram_9_n_0;
  wire MEM_0_reg_bram_9_n_1;
  wire MEM_0_reg_bram_9_n_136;
  wire MEM_0_reg_bram_9_n_137;
  wire MEM_0_reg_bram_9_n_138;
  wire MEM_0_reg_bram_9_n_139;
  wire MEM_0_reg_bram_9_n_60;
  wire MEM_0_reg_bram_9_n_61;
  wire MEM_0_reg_bram_9_n_62;
  wire MEM_0_reg_bram_9_n_63;
  wire MEM_0_reg_bram_9_n_64;
  wire MEM_0_reg_bram_9_n_65;
  wire MEM_0_reg_bram_9_n_66;
  wire MEM_0_reg_bram_9_n_67;
  wire MEM_1_reg_bram_10_i_1_n_0;
  wire MEM_1_reg_bram_10_n_0;
  wire MEM_1_reg_bram_10_n_1;
  wire MEM_1_reg_bram_10_n_136;
  wire MEM_1_reg_bram_10_n_137;
  wire MEM_1_reg_bram_10_n_138;
  wire MEM_1_reg_bram_10_n_139;
  wire MEM_1_reg_bram_10_n_60;
  wire MEM_1_reg_bram_10_n_61;
  wire MEM_1_reg_bram_10_n_62;
  wire MEM_1_reg_bram_10_n_63;
  wire MEM_1_reg_bram_10_n_64;
  wire MEM_1_reg_bram_10_n_65;
  wire MEM_1_reg_bram_10_n_66;
  wire MEM_1_reg_bram_10_n_67;
  wire MEM_1_reg_bram_11_i_1_n_0;
  wire MEM_1_reg_bram_11_n_0;
  wire MEM_1_reg_bram_11_n_1;
  wire MEM_1_reg_bram_11_n_136;
  wire MEM_1_reg_bram_11_n_137;
  wire MEM_1_reg_bram_11_n_138;
  wire MEM_1_reg_bram_11_n_139;
  wire MEM_1_reg_bram_11_n_60;
  wire MEM_1_reg_bram_11_n_61;
  wire MEM_1_reg_bram_11_n_62;
  wire MEM_1_reg_bram_11_n_63;
  wire MEM_1_reg_bram_11_n_64;
  wire MEM_1_reg_bram_11_n_65;
  wire MEM_1_reg_bram_11_n_66;
  wire MEM_1_reg_bram_11_n_67;
  wire MEM_1_reg_bram_12_i_1_n_0;
  wire MEM_1_reg_bram_12_n_0;
  wire MEM_1_reg_bram_12_n_1;
  wire MEM_1_reg_bram_12_n_136;
  wire MEM_1_reg_bram_12_n_137;
  wire MEM_1_reg_bram_12_n_138;
  wire MEM_1_reg_bram_12_n_139;
  wire MEM_1_reg_bram_12_n_60;
  wire MEM_1_reg_bram_12_n_61;
  wire MEM_1_reg_bram_12_n_62;
  wire MEM_1_reg_bram_12_n_63;
  wire MEM_1_reg_bram_12_n_64;
  wire MEM_1_reg_bram_12_n_65;
  wire MEM_1_reg_bram_12_n_66;
  wire MEM_1_reg_bram_12_n_67;
  wire MEM_1_reg_bram_13_i_1_n_0;
  wire MEM_1_reg_bram_13_n_0;
  wire MEM_1_reg_bram_13_n_1;
  wire MEM_1_reg_bram_13_n_136;
  wire MEM_1_reg_bram_13_n_137;
  wire MEM_1_reg_bram_13_n_138;
  wire MEM_1_reg_bram_13_n_139;
  wire MEM_1_reg_bram_13_n_60;
  wire MEM_1_reg_bram_13_n_61;
  wire MEM_1_reg_bram_13_n_62;
  wire MEM_1_reg_bram_13_n_63;
  wire MEM_1_reg_bram_13_n_64;
  wire MEM_1_reg_bram_13_n_65;
  wire MEM_1_reg_bram_13_n_66;
  wire MEM_1_reg_bram_13_n_67;
  wire MEM_1_reg_bram_14_i_1_n_0;
  wire MEM_1_reg_bram_14_n_0;
  wire MEM_1_reg_bram_14_n_1;
  wire MEM_1_reg_bram_14_n_136;
  wire MEM_1_reg_bram_14_n_137;
  wire MEM_1_reg_bram_14_n_138;
  wire MEM_1_reg_bram_14_n_139;
  wire MEM_1_reg_bram_14_n_60;
  wire MEM_1_reg_bram_14_n_61;
  wire MEM_1_reg_bram_14_n_62;
  wire MEM_1_reg_bram_14_n_63;
  wire MEM_1_reg_bram_14_n_64;
  wire MEM_1_reg_bram_14_n_65;
  wire MEM_1_reg_bram_14_n_66;
  wire MEM_1_reg_bram_14_n_67;
  wire MEM_1_reg_bram_15_i_1_n_0;
  wire MEM_1_reg_bram_15_n_124;
  wire MEM_1_reg_bram_15_n_125;
  wire MEM_1_reg_bram_15_n_126;
  wire MEM_1_reg_bram_15_n_127;
  wire MEM_1_reg_bram_15_n_128;
  wire MEM_1_reg_bram_15_n_129;
  wire MEM_1_reg_bram_15_n_130;
  wire MEM_1_reg_bram_15_n_131;
  wire MEM_1_reg_bram_1_i_10_n_0;
  wire MEM_1_reg_bram_1_i_11_n_0;
  wire MEM_1_reg_bram_1_i_12_n_0;
  wire MEM_1_reg_bram_1_i_13_n_0;
  wire MEM_1_reg_bram_1_i_1_n_0;
  wire MEM_1_reg_bram_1_i_2_n_0;
  wire MEM_1_reg_bram_1_i_3_n_0;
  wire MEM_1_reg_bram_1_i_4_n_0;
  wire MEM_1_reg_bram_1_i_5_n_0;
  wire MEM_1_reg_bram_1_i_6_n_0;
  wire MEM_1_reg_bram_1_i_7_n_0;
  wire MEM_1_reg_bram_1_i_8_n_0;
  wire MEM_1_reg_bram_1_i_9_n_0;
  wire MEM_1_reg_bram_1_n_0;
  wire MEM_1_reg_bram_1_n_1;
  wire MEM_1_reg_bram_1_n_136;
  wire MEM_1_reg_bram_1_n_137;
  wire MEM_1_reg_bram_1_n_138;
  wire MEM_1_reg_bram_1_n_139;
  wire MEM_1_reg_bram_1_n_60;
  wire MEM_1_reg_bram_1_n_61;
  wire MEM_1_reg_bram_1_n_62;
  wire MEM_1_reg_bram_1_n_63;
  wire MEM_1_reg_bram_1_n_64;
  wire MEM_1_reg_bram_1_n_65;
  wire MEM_1_reg_bram_1_n_66;
  wire MEM_1_reg_bram_1_n_67;
  wire MEM_1_reg_bram_2_i_1_n_0;
  wire MEM_1_reg_bram_2_n_0;
  wire MEM_1_reg_bram_2_n_1;
  wire MEM_1_reg_bram_2_n_136;
  wire MEM_1_reg_bram_2_n_137;
  wire MEM_1_reg_bram_2_n_138;
  wire MEM_1_reg_bram_2_n_139;
  wire MEM_1_reg_bram_2_n_60;
  wire MEM_1_reg_bram_2_n_61;
  wire MEM_1_reg_bram_2_n_62;
  wire MEM_1_reg_bram_2_n_63;
  wire MEM_1_reg_bram_2_n_64;
  wire MEM_1_reg_bram_2_n_65;
  wire MEM_1_reg_bram_2_n_66;
  wire MEM_1_reg_bram_2_n_67;
  wire MEM_1_reg_bram_3_i_1_n_0;
  wire MEM_1_reg_bram_3_n_0;
  wire MEM_1_reg_bram_3_n_1;
  wire MEM_1_reg_bram_3_n_136;
  wire MEM_1_reg_bram_3_n_137;
  wire MEM_1_reg_bram_3_n_138;
  wire MEM_1_reg_bram_3_n_139;
  wire MEM_1_reg_bram_3_n_60;
  wire MEM_1_reg_bram_3_n_61;
  wire MEM_1_reg_bram_3_n_62;
  wire MEM_1_reg_bram_3_n_63;
  wire MEM_1_reg_bram_3_n_64;
  wire MEM_1_reg_bram_3_n_65;
  wire MEM_1_reg_bram_3_n_66;
  wire MEM_1_reg_bram_3_n_67;
  wire MEM_1_reg_bram_4_i_1_n_0;
  wire MEM_1_reg_bram_4_n_0;
  wire MEM_1_reg_bram_4_n_1;
  wire MEM_1_reg_bram_4_n_136;
  wire MEM_1_reg_bram_4_n_137;
  wire MEM_1_reg_bram_4_n_138;
  wire MEM_1_reg_bram_4_n_139;
  wire MEM_1_reg_bram_4_n_60;
  wire MEM_1_reg_bram_4_n_61;
  wire MEM_1_reg_bram_4_n_62;
  wire MEM_1_reg_bram_4_n_63;
  wire MEM_1_reg_bram_4_n_64;
  wire MEM_1_reg_bram_4_n_65;
  wire MEM_1_reg_bram_4_n_66;
  wire MEM_1_reg_bram_4_n_67;
  wire MEM_1_reg_bram_5_i_1_n_0;
  wire MEM_1_reg_bram_5_n_0;
  wire MEM_1_reg_bram_5_n_1;
  wire MEM_1_reg_bram_5_n_136;
  wire MEM_1_reg_bram_5_n_137;
  wire MEM_1_reg_bram_5_n_138;
  wire MEM_1_reg_bram_5_n_139;
  wire MEM_1_reg_bram_5_n_60;
  wire MEM_1_reg_bram_5_n_61;
  wire MEM_1_reg_bram_5_n_62;
  wire MEM_1_reg_bram_5_n_63;
  wire MEM_1_reg_bram_5_n_64;
  wire MEM_1_reg_bram_5_n_65;
  wire MEM_1_reg_bram_5_n_66;
  wire MEM_1_reg_bram_5_n_67;
  wire MEM_1_reg_bram_6_i_1_n_0;
  wire MEM_1_reg_bram_6_n_0;
  wire MEM_1_reg_bram_6_n_1;
  wire MEM_1_reg_bram_6_n_136;
  wire MEM_1_reg_bram_6_n_137;
  wire MEM_1_reg_bram_6_n_138;
  wire MEM_1_reg_bram_6_n_139;
  wire MEM_1_reg_bram_6_n_60;
  wire MEM_1_reg_bram_6_n_61;
  wire MEM_1_reg_bram_6_n_62;
  wire MEM_1_reg_bram_6_n_63;
  wire MEM_1_reg_bram_6_n_64;
  wire MEM_1_reg_bram_6_n_65;
  wire MEM_1_reg_bram_6_n_66;
  wire MEM_1_reg_bram_6_n_67;
  wire MEM_1_reg_bram_7_i_1_n_0;
  wire MEM_1_reg_bram_7_n_0;
  wire MEM_1_reg_bram_7_n_1;
  wire MEM_1_reg_bram_7_n_136;
  wire MEM_1_reg_bram_7_n_137;
  wire MEM_1_reg_bram_7_n_138;
  wire MEM_1_reg_bram_7_n_139;
  wire MEM_1_reg_bram_7_n_60;
  wire MEM_1_reg_bram_7_n_61;
  wire MEM_1_reg_bram_7_n_62;
  wire MEM_1_reg_bram_7_n_63;
  wire MEM_1_reg_bram_7_n_64;
  wire MEM_1_reg_bram_7_n_65;
  wire MEM_1_reg_bram_7_n_66;
  wire MEM_1_reg_bram_7_n_67;
  wire MEM_1_reg_bram_8_i_1_n_0;
  wire MEM_1_reg_bram_8_n_124;
  wire MEM_1_reg_bram_8_n_125;
  wire MEM_1_reg_bram_8_n_126;
  wire MEM_1_reg_bram_8_n_127;
  wire MEM_1_reg_bram_8_n_128;
  wire MEM_1_reg_bram_8_n_129;
  wire MEM_1_reg_bram_8_n_130;
  wire MEM_1_reg_bram_8_n_131;
  wire MEM_1_reg_bram_9_i_1_n_0;
  wire MEM_1_reg_bram_9_n_0;
  wire MEM_1_reg_bram_9_n_1;
  wire MEM_1_reg_bram_9_n_136;
  wire MEM_1_reg_bram_9_n_137;
  wire MEM_1_reg_bram_9_n_138;
  wire MEM_1_reg_bram_9_n_139;
  wire MEM_1_reg_bram_9_n_60;
  wire MEM_1_reg_bram_9_n_61;
  wire MEM_1_reg_bram_9_n_62;
  wire MEM_1_reg_bram_9_n_63;
  wire MEM_1_reg_bram_9_n_64;
  wire MEM_1_reg_bram_9_n_65;
  wire MEM_1_reg_bram_9_n_66;
  wire MEM_1_reg_bram_9_n_67;
  wire MEM_2_reg_bram_10_i_1_n_0;
  wire MEM_2_reg_bram_10_n_0;
  wire MEM_2_reg_bram_10_n_1;
  wire MEM_2_reg_bram_10_n_136;
  wire MEM_2_reg_bram_10_n_137;
  wire MEM_2_reg_bram_10_n_138;
  wire MEM_2_reg_bram_10_n_139;
  wire MEM_2_reg_bram_10_n_60;
  wire MEM_2_reg_bram_10_n_61;
  wire MEM_2_reg_bram_10_n_62;
  wire MEM_2_reg_bram_10_n_63;
  wire MEM_2_reg_bram_10_n_64;
  wire MEM_2_reg_bram_10_n_65;
  wire MEM_2_reg_bram_10_n_66;
  wire MEM_2_reg_bram_10_n_67;
  wire MEM_2_reg_bram_11_i_1_n_0;
  wire MEM_2_reg_bram_11_n_0;
  wire MEM_2_reg_bram_11_n_1;
  wire MEM_2_reg_bram_11_n_136;
  wire MEM_2_reg_bram_11_n_137;
  wire MEM_2_reg_bram_11_n_138;
  wire MEM_2_reg_bram_11_n_139;
  wire MEM_2_reg_bram_11_n_60;
  wire MEM_2_reg_bram_11_n_61;
  wire MEM_2_reg_bram_11_n_62;
  wire MEM_2_reg_bram_11_n_63;
  wire MEM_2_reg_bram_11_n_64;
  wire MEM_2_reg_bram_11_n_65;
  wire MEM_2_reg_bram_11_n_66;
  wire MEM_2_reg_bram_11_n_67;
  wire MEM_2_reg_bram_12_i_1_n_0;
  wire MEM_2_reg_bram_12_n_0;
  wire MEM_2_reg_bram_12_n_1;
  wire MEM_2_reg_bram_12_n_136;
  wire MEM_2_reg_bram_12_n_137;
  wire MEM_2_reg_bram_12_n_138;
  wire MEM_2_reg_bram_12_n_139;
  wire MEM_2_reg_bram_12_n_60;
  wire MEM_2_reg_bram_12_n_61;
  wire MEM_2_reg_bram_12_n_62;
  wire MEM_2_reg_bram_12_n_63;
  wire MEM_2_reg_bram_12_n_64;
  wire MEM_2_reg_bram_12_n_65;
  wire MEM_2_reg_bram_12_n_66;
  wire MEM_2_reg_bram_12_n_67;
  wire MEM_2_reg_bram_13_i_1_n_0;
  wire MEM_2_reg_bram_13_n_0;
  wire MEM_2_reg_bram_13_n_1;
  wire MEM_2_reg_bram_13_n_136;
  wire MEM_2_reg_bram_13_n_137;
  wire MEM_2_reg_bram_13_n_138;
  wire MEM_2_reg_bram_13_n_139;
  wire MEM_2_reg_bram_13_n_60;
  wire MEM_2_reg_bram_13_n_61;
  wire MEM_2_reg_bram_13_n_62;
  wire MEM_2_reg_bram_13_n_63;
  wire MEM_2_reg_bram_13_n_64;
  wire MEM_2_reg_bram_13_n_65;
  wire MEM_2_reg_bram_13_n_66;
  wire MEM_2_reg_bram_13_n_67;
  wire MEM_2_reg_bram_14_i_1_n_0;
  wire MEM_2_reg_bram_14_n_0;
  wire MEM_2_reg_bram_14_n_1;
  wire MEM_2_reg_bram_14_n_136;
  wire MEM_2_reg_bram_14_n_137;
  wire MEM_2_reg_bram_14_n_138;
  wire MEM_2_reg_bram_14_n_139;
  wire MEM_2_reg_bram_14_n_60;
  wire MEM_2_reg_bram_14_n_61;
  wire MEM_2_reg_bram_14_n_62;
  wire MEM_2_reg_bram_14_n_63;
  wire MEM_2_reg_bram_14_n_64;
  wire MEM_2_reg_bram_14_n_65;
  wire MEM_2_reg_bram_14_n_66;
  wire MEM_2_reg_bram_14_n_67;
  wire MEM_2_reg_bram_15_i_1_n_0;
  wire MEM_2_reg_bram_15_n_124;
  wire MEM_2_reg_bram_15_n_125;
  wire MEM_2_reg_bram_15_n_126;
  wire MEM_2_reg_bram_15_n_127;
  wire MEM_2_reg_bram_15_n_128;
  wire MEM_2_reg_bram_15_n_129;
  wire MEM_2_reg_bram_15_n_130;
  wire MEM_2_reg_bram_15_n_131;
  wire MEM_2_reg_bram_1_i_10_n_0;
  wire MEM_2_reg_bram_1_i_11_n_0;
  wire MEM_2_reg_bram_1_i_12_n_0;
  wire MEM_2_reg_bram_1_i_13_n_0;
  wire MEM_2_reg_bram_1_i_1_n_0;
  wire MEM_2_reg_bram_1_i_2_n_0;
  wire MEM_2_reg_bram_1_i_3_n_0;
  wire MEM_2_reg_bram_1_i_4_n_0;
  wire MEM_2_reg_bram_1_i_5_n_0;
  wire MEM_2_reg_bram_1_i_6_n_0;
  wire MEM_2_reg_bram_1_i_7_n_0;
  wire MEM_2_reg_bram_1_i_8_n_0;
  wire MEM_2_reg_bram_1_i_9_n_0;
  wire MEM_2_reg_bram_1_n_0;
  wire MEM_2_reg_bram_1_n_1;
  wire MEM_2_reg_bram_1_n_136;
  wire MEM_2_reg_bram_1_n_137;
  wire MEM_2_reg_bram_1_n_138;
  wire MEM_2_reg_bram_1_n_139;
  wire MEM_2_reg_bram_1_n_60;
  wire MEM_2_reg_bram_1_n_61;
  wire MEM_2_reg_bram_1_n_62;
  wire MEM_2_reg_bram_1_n_63;
  wire MEM_2_reg_bram_1_n_64;
  wire MEM_2_reg_bram_1_n_65;
  wire MEM_2_reg_bram_1_n_66;
  wire MEM_2_reg_bram_1_n_67;
  wire MEM_2_reg_bram_2_i_1_n_0;
  wire MEM_2_reg_bram_2_n_0;
  wire MEM_2_reg_bram_2_n_1;
  wire MEM_2_reg_bram_2_n_136;
  wire MEM_2_reg_bram_2_n_137;
  wire MEM_2_reg_bram_2_n_138;
  wire MEM_2_reg_bram_2_n_139;
  wire MEM_2_reg_bram_2_n_60;
  wire MEM_2_reg_bram_2_n_61;
  wire MEM_2_reg_bram_2_n_62;
  wire MEM_2_reg_bram_2_n_63;
  wire MEM_2_reg_bram_2_n_64;
  wire MEM_2_reg_bram_2_n_65;
  wire MEM_2_reg_bram_2_n_66;
  wire MEM_2_reg_bram_2_n_67;
  wire MEM_2_reg_bram_3_i_1_n_0;
  wire MEM_2_reg_bram_3_n_0;
  wire MEM_2_reg_bram_3_n_1;
  wire MEM_2_reg_bram_3_n_136;
  wire MEM_2_reg_bram_3_n_137;
  wire MEM_2_reg_bram_3_n_138;
  wire MEM_2_reg_bram_3_n_139;
  wire MEM_2_reg_bram_3_n_60;
  wire MEM_2_reg_bram_3_n_61;
  wire MEM_2_reg_bram_3_n_62;
  wire MEM_2_reg_bram_3_n_63;
  wire MEM_2_reg_bram_3_n_64;
  wire MEM_2_reg_bram_3_n_65;
  wire MEM_2_reg_bram_3_n_66;
  wire MEM_2_reg_bram_3_n_67;
  wire MEM_2_reg_bram_4_i_1_n_0;
  wire MEM_2_reg_bram_4_n_0;
  wire MEM_2_reg_bram_4_n_1;
  wire MEM_2_reg_bram_4_n_136;
  wire MEM_2_reg_bram_4_n_137;
  wire MEM_2_reg_bram_4_n_138;
  wire MEM_2_reg_bram_4_n_139;
  wire MEM_2_reg_bram_4_n_60;
  wire MEM_2_reg_bram_4_n_61;
  wire MEM_2_reg_bram_4_n_62;
  wire MEM_2_reg_bram_4_n_63;
  wire MEM_2_reg_bram_4_n_64;
  wire MEM_2_reg_bram_4_n_65;
  wire MEM_2_reg_bram_4_n_66;
  wire MEM_2_reg_bram_4_n_67;
  wire MEM_2_reg_bram_5_i_1_n_0;
  wire MEM_2_reg_bram_5_n_0;
  wire MEM_2_reg_bram_5_n_1;
  wire MEM_2_reg_bram_5_n_136;
  wire MEM_2_reg_bram_5_n_137;
  wire MEM_2_reg_bram_5_n_138;
  wire MEM_2_reg_bram_5_n_139;
  wire MEM_2_reg_bram_5_n_60;
  wire MEM_2_reg_bram_5_n_61;
  wire MEM_2_reg_bram_5_n_62;
  wire MEM_2_reg_bram_5_n_63;
  wire MEM_2_reg_bram_5_n_64;
  wire MEM_2_reg_bram_5_n_65;
  wire MEM_2_reg_bram_5_n_66;
  wire MEM_2_reg_bram_5_n_67;
  wire MEM_2_reg_bram_6_i_1_n_0;
  wire MEM_2_reg_bram_6_n_0;
  wire MEM_2_reg_bram_6_n_1;
  wire MEM_2_reg_bram_6_n_136;
  wire MEM_2_reg_bram_6_n_137;
  wire MEM_2_reg_bram_6_n_138;
  wire MEM_2_reg_bram_6_n_139;
  wire MEM_2_reg_bram_6_n_60;
  wire MEM_2_reg_bram_6_n_61;
  wire MEM_2_reg_bram_6_n_62;
  wire MEM_2_reg_bram_6_n_63;
  wire MEM_2_reg_bram_6_n_64;
  wire MEM_2_reg_bram_6_n_65;
  wire MEM_2_reg_bram_6_n_66;
  wire MEM_2_reg_bram_6_n_67;
  wire MEM_2_reg_bram_7_i_1_n_0;
  wire MEM_2_reg_bram_7_n_0;
  wire MEM_2_reg_bram_7_n_1;
  wire MEM_2_reg_bram_7_n_136;
  wire MEM_2_reg_bram_7_n_137;
  wire MEM_2_reg_bram_7_n_138;
  wire MEM_2_reg_bram_7_n_139;
  wire MEM_2_reg_bram_7_n_60;
  wire MEM_2_reg_bram_7_n_61;
  wire MEM_2_reg_bram_7_n_62;
  wire MEM_2_reg_bram_7_n_63;
  wire MEM_2_reg_bram_7_n_64;
  wire MEM_2_reg_bram_7_n_65;
  wire MEM_2_reg_bram_7_n_66;
  wire MEM_2_reg_bram_7_n_67;
  wire MEM_2_reg_bram_8_i_1_n_0;
  wire MEM_2_reg_bram_8_n_124;
  wire MEM_2_reg_bram_8_n_125;
  wire MEM_2_reg_bram_8_n_126;
  wire MEM_2_reg_bram_8_n_127;
  wire MEM_2_reg_bram_8_n_128;
  wire MEM_2_reg_bram_8_n_129;
  wire MEM_2_reg_bram_8_n_130;
  wire MEM_2_reg_bram_8_n_131;
  wire MEM_2_reg_bram_9_i_1_n_0;
  wire MEM_2_reg_bram_9_n_0;
  wire MEM_2_reg_bram_9_n_1;
  wire MEM_2_reg_bram_9_n_136;
  wire MEM_2_reg_bram_9_n_137;
  wire MEM_2_reg_bram_9_n_138;
  wire MEM_2_reg_bram_9_n_139;
  wire MEM_2_reg_bram_9_n_60;
  wire MEM_2_reg_bram_9_n_61;
  wire MEM_2_reg_bram_9_n_62;
  wire MEM_2_reg_bram_9_n_63;
  wire MEM_2_reg_bram_9_n_64;
  wire MEM_2_reg_bram_9_n_65;
  wire MEM_2_reg_bram_9_n_66;
  wire MEM_2_reg_bram_9_n_67;
  wire MEM_2_reg_mux_sel_reg_0_n_0;
  wire MEM_4_reg_bram_10_i_1_n_0;
  wire MEM_4_reg_bram_10_n_0;
  wire MEM_4_reg_bram_10_n_1;
  wire MEM_4_reg_bram_10_n_136;
  wire MEM_4_reg_bram_10_n_137;
  wire MEM_4_reg_bram_10_n_138;
  wire MEM_4_reg_bram_10_n_139;
  wire MEM_4_reg_bram_10_n_60;
  wire MEM_4_reg_bram_10_n_61;
  wire MEM_4_reg_bram_10_n_62;
  wire MEM_4_reg_bram_10_n_63;
  wire MEM_4_reg_bram_10_n_64;
  wire MEM_4_reg_bram_10_n_65;
  wire MEM_4_reg_bram_10_n_66;
  wire MEM_4_reg_bram_10_n_67;
  wire MEM_4_reg_bram_11_i_1_n_0;
  wire MEM_4_reg_bram_11_n_0;
  wire MEM_4_reg_bram_11_n_1;
  wire MEM_4_reg_bram_11_n_136;
  wire MEM_4_reg_bram_11_n_137;
  wire MEM_4_reg_bram_11_n_138;
  wire MEM_4_reg_bram_11_n_139;
  wire MEM_4_reg_bram_11_n_60;
  wire MEM_4_reg_bram_11_n_61;
  wire MEM_4_reg_bram_11_n_62;
  wire MEM_4_reg_bram_11_n_63;
  wire MEM_4_reg_bram_11_n_64;
  wire MEM_4_reg_bram_11_n_65;
  wire MEM_4_reg_bram_11_n_66;
  wire MEM_4_reg_bram_11_n_67;
  wire MEM_4_reg_bram_12_i_1_n_0;
  wire MEM_4_reg_bram_12_n_0;
  wire MEM_4_reg_bram_12_n_1;
  wire MEM_4_reg_bram_12_n_136;
  wire MEM_4_reg_bram_12_n_137;
  wire MEM_4_reg_bram_12_n_138;
  wire MEM_4_reg_bram_12_n_139;
  wire MEM_4_reg_bram_12_n_60;
  wire MEM_4_reg_bram_12_n_61;
  wire MEM_4_reg_bram_12_n_62;
  wire MEM_4_reg_bram_12_n_63;
  wire MEM_4_reg_bram_12_n_64;
  wire MEM_4_reg_bram_12_n_65;
  wire MEM_4_reg_bram_12_n_66;
  wire MEM_4_reg_bram_12_n_67;
  wire MEM_4_reg_bram_13_i_1_n_0;
  wire MEM_4_reg_bram_13_n_0;
  wire MEM_4_reg_bram_13_n_1;
  wire MEM_4_reg_bram_13_n_136;
  wire MEM_4_reg_bram_13_n_137;
  wire MEM_4_reg_bram_13_n_138;
  wire MEM_4_reg_bram_13_n_139;
  wire MEM_4_reg_bram_13_n_60;
  wire MEM_4_reg_bram_13_n_61;
  wire MEM_4_reg_bram_13_n_62;
  wire MEM_4_reg_bram_13_n_63;
  wire MEM_4_reg_bram_13_n_64;
  wire MEM_4_reg_bram_13_n_65;
  wire MEM_4_reg_bram_13_n_66;
  wire MEM_4_reg_bram_13_n_67;
  wire MEM_4_reg_bram_14_i_1_n_0;
  wire MEM_4_reg_bram_14_n_0;
  wire MEM_4_reg_bram_14_n_1;
  wire MEM_4_reg_bram_14_n_136;
  wire MEM_4_reg_bram_14_n_137;
  wire MEM_4_reg_bram_14_n_138;
  wire MEM_4_reg_bram_14_n_139;
  wire MEM_4_reg_bram_14_n_60;
  wire MEM_4_reg_bram_14_n_61;
  wire MEM_4_reg_bram_14_n_62;
  wire MEM_4_reg_bram_14_n_63;
  wire MEM_4_reg_bram_14_n_64;
  wire MEM_4_reg_bram_14_n_65;
  wire MEM_4_reg_bram_14_n_66;
  wire MEM_4_reg_bram_14_n_67;
  wire MEM_4_reg_bram_15_i_1_n_0;
  wire MEM_4_reg_bram_15_n_124;
  wire MEM_4_reg_bram_15_n_125;
  wire MEM_4_reg_bram_15_n_126;
  wire MEM_4_reg_bram_15_n_127;
  wire MEM_4_reg_bram_15_n_128;
  wire MEM_4_reg_bram_15_n_129;
  wire MEM_4_reg_bram_15_n_130;
  wire MEM_4_reg_bram_15_n_131;
  wire MEM_4_reg_bram_1_i_10_n_0;
  wire MEM_4_reg_bram_1_i_11_n_0;
  wire MEM_4_reg_bram_1_i_12_n_0;
  wire MEM_4_reg_bram_1_i_13_n_0;
  wire MEM_4_reg_bram_1_i_1_n_0;
  wire MEM_4_reg_bram_1_i_2_n_0;
  wire MEM_4_reg_bram_1_i_3_n_0;
  wire MEM_4_reg_bram_1_i_4_n_0;
  wire MEM_4_reg_bram_1_i_5_n_0;
  wire MEM_4_reg_bram_1_i_6_n_0;
  wire MEM_4_reg_bram_1_i_7_n_0;
  wire MEM_4_reg_bram_1_i_8_n_0;
  wire MEM_4_reg_bram_1_i_9_n_0;
  wire MEM_4_reg_bram_1_n_0;
  wire MEM_4_reg_bram_1_n_1;
  wire MEM_4_reg_bram_1_n_136;
  wire MEM_4_reg_bram_1_n_137;
  wire MEM_4_reg_bram_1_n_138;
  wire MEM_4_reg_bram_1_n_139;
  wire MEM_4_reg_bram_1_n_60;
  wire MEM_4_reg_bram_1_n_61;
  wire MEM_4_reg_bram_1_n_62;
  wire MEM_4_reg_bram_1_n_63;
  wire MEM_4_reg_bram_1_n_64;
  wire MEM_4_reg_bram_1_n_65;
  wire MEM_4_reg_bram_1_n_66;
  wire MEM_4_reg_bram_1_n_67;
  wire MEM_4_reg_bram_2_i_1_n_0;
  wire MEM_4_reg_bram_2_n_0;
  wire MEM_4_reg_bram_2_n_1;
  wire MEM_4_reg_bram_2_n_136;
  wire MEM_4_reg_bram_2_n_137;
  wire MEM_4_reg_bram_2_n_138;
  wire MEM_4_reg_bram_2_n_139;
  wire MEM_4_reg_bram_2_n_60;
  wire MEM_4_reg_bram_2_n_61;
  wire MEM_4_reg_bram_2_n_62;
  wire MEM_4_reg_bram_2_n_63;
  wire MEM_4_reg_bram_2_n_64;
  wire MEM_4_reg_bram_2_n_65;
  wire MEM_4_reg_bram_2_n_66;
  wire MEM_4_reg_bram_2_n_67;
  wire MEM_4_reg_bram_3_i_1_n_0;
  wire MEM_4_reg_bram_3_n_0;
  wire MEM_4_reg_bram_3_n_1;
  wire MEM_4_reg_bram_3_n_136;
  wire MEM_4_reg_bram_3_n_137;
  wire MEM_4_reg_bram_3_n_138;
  wire MEM_4_reg_bram_3_n_139;
  wire MEM_4_reg_bram_3_n_60;
  wire MEM_4_reg_bram_3_n_61;
  wire MEM_4_reg_bram_3_n_62;
  wire MEM_4_reg_bram_3_n_63;
  wire MEM_4_reg_bram_3_n_64;
  wire MEM_4_reg_bram_3_n_65;
  wire MEM_4_reg_bram_3_n_66;
  wire MEM_4_reg_bram_3_n_67;
  wire MEM_4_reg_bram_4_i_1_n_0;
  wire MEM_4_reg_bram_4_n_0;
  wire MEM_4_reg_bram_4_n_1;
  wire MEM_4_reg_bram_4_n_136;
  wire MEM_4_reg_bram_4_n_137;
  wire MEM_4_reg_bram_4_n_138;
  wire MEM_4_reg_bram_4_n_139;
  wire MEM_4_reg_bram_4_n_60;
  wire MEM_4_reg_bram_4_n_61;
  wire MEM_4_reg_bram_4_n_62;
  wire MEM_4_reg_bram_4_n_63;
  wire MEM_4_reg_bram_4_n_64;
  wire MEM_4_reg_bram_4_n_65;
  wire MEM_4_reg_bram_4_n_66;
  wire MEM_4_reg_bram_4_n_67;
  wire MEM_4_reg_bram_5_i_1_n_0;
  wire MEM_4_reg_bram_5_n_0;
  wire MEM_4_reg_bram_5_n_1;
  wire MEM_4_reg_bram_5_n_136;
  wire MEM_4_reg_bram_5_n_137;
  wire MEM_4_reg_bram_5_n_138;
  wire MEM_4_reg_bram_5_n_139;
  wire MEM_4_reg_bram_5_n_60;
  wire MEM_4_reg_bram_5_n_61;
  wire MEM_4_reg_bram_5_n_62;
  wire MEM_4_reg_bram_5_n_63;
  wire MEM_4_reg_bram_5_n_64;
  wire MEM_4_reg_bram_5_n_65;
  wire MEM_4_reg_bram_5_n_66;
  wire MEM_4_reg_bram_5_n_67;
  wire MEM_4_reg_bram_6_i_1_n_0;
  wire MEM_4_reg_bram_6_n_0;
  wire MEM_4_reg_bram_6_n_1;
  wire MEM_4_reg_bram_6_n_136;
  wire MEM_4_reg_bram_6_n_137;
  wire MEM_4_reg_bram_6_n_138;
  wire MEM_4_reg_bram_6_n_139;
  wire MEM_4_reg_bram_6_n_60;
  wire MEM_4_reg_bram_6_n_61;
  wire MEM_4_reg_bram_6_n_62;
  wire MEM_4_reg_bram_6_n_63;
  wire MEM_4_reg_bram_6_n_64;
  wire MEM_4_reg_bram_6_n_65;
  wire MEM_4_reg_bram_6_n_66;
  wire MEM_4_reg_bram_6_n_67;
  wire MEM_4_reg_bram_7_i_1_n_0;
  wire MEM_4_reg_bram_7_n_0;
  wire MEM_4_reg_bram_7_n_1;
  wire MEM_4_reg_bram_7_n_136;
  wire MEM_4_reg_bram_7_n_137;
  wire MEM_4_reg_bram_7_n_138;
  wire MEM_4_reg_bram_7_n_139;
  wire MEM_4_reg_bram_7_n_60;
  wire MEM_4_reg_bram_7_n_61;
  wire MEM_4_reg_bram_7_n_62;
  wire MEM_4_reg_bram_7_n_63;
  wire MEM_4_reg_bram_7_n_64;
  wire MEM_4_reg_bram_7_n_65;
  wire MEM_4_reg_bram_7_n_66;
  wire MEM_4_reg_bram_7_n_67;
  wire MEM_4_reg_bram_8_i_1_n_0;
  wire MEM_4_reg_bram_8_n_124;
  wire MEM_4_reg_bram_8_n_125;
  wire MEM_4_reg_bram_8_n_126;
  wire MEM_4_reg_bram_8_n_127;
  wire MEM_4_reg_bram_8_n_128;
  wire MEM_4_reg_bram_8_n_129;
  wire MEM_4_reg_bram_8_n_130;
  wire MEM_4_reg_bram_8_n_131;
  wire MEM_4_reg_bram_9_i_1_n_0;
  wire MEM_4_reg_bram_9_n_0;
  wire MEM_4_reg_bram_9_n_1;
  wire MEM_4_reg_bram_9_n_136;
  wire MEM_4_reg_bram_9_n_137;
  wire MEM_4_reg_bram_9_n_138;
  wire MEM_4_reg_bram_9_n_139;
  wire MEM_4_reg_bram_9_n_60;
  wire MEM_4_reg_bram_9_n_61;
  wire MEM_4_reg_bram_9_n_62;
  wire MEM_4_reg_bram_9_n_63;
  wire MEM_4_reg_bram_9_n_64;
  wire MEM_4_reg_bram_9_n_65;
  wire MEM_4_reg_bram_9_n_66;
  wire MEM_4_reg_bram_9_n_67;
  wire MEM_5_reg_bram_10_i_1_n_0;
  wire MEM_5_reg_bram_10_n_0;
  wire MEM_5_reg_bram_10_n_1;
  wire MEM_5_reg_bram_10_n_136;
  wire MEM_5_reg_bram_10_n_137;
  wire MEM_5_reg_bram_10_n_138;
  wire MEM_5_reg_bram_10_n_139;
  wire MEM_5_reg_bram_10_n_60;
  wire MEM_5_reg_bram_10_n_61;
  wire MEM_5_reg_bram_10_n_62;
  wire MEM_5_reg_bram_10_n_63;
  wire MEM_5_reg_bram_10_n_64;
  wire MEM_5_reg_bram_10_n_65;
  wire MEM_5_reg_bram_10_n_66;
  wire MEM_5_reg_bram_10_n_67;
  wire MEM_5_reg_bram_11_i_1_n_0;
  wire MEM_5_reg_bram_11_n_0;
  wire MEM_5_reg_bram_11_n_1;
  wire MEM_5_reg_bram_11_n_136;
  wire MEM_5_reg_bram_11_n_137;
  wire MEM_5_reg_bram_11_n_138;
  wire MEM_5_reg_bram_11_n_139;
  wire MEM_5_reg_bram_11_n_60;
  wire MEM_5_reg_bram_11_n_61;
  wire MEM_5_reg_bram_11_n_62;
  wire MEM_5_reg_bram_11_n_63;
  wire MEM_5_reg_bram_11_n_64;
  wire MEM_5_reg_bram_11_n_65;
  wire MEM_5_reg_bram_11_n_66;
  wire MEM_5_reg_bram_11_n_67;
  wire MEM_5_reg_bram_12_i_1_n_0;
  wire MEM_5_reg_bram_12_n_0;
  wire MEM_5_reg_bram_12_n_1;
  wire MEM_5_reg_bram_12_n_136;
  wire MEM_5_reg_bram_12_n_137;
  wire MEM_5_reg_bram_12_n_138;
  wire MEM_5_reg_bram_12_n_139;
  wire MEM_5_reg_bram_12_n_60;
  wire MEM_5_reg_bram_12_n_61;
  wire MEM_5_reg_bram_12_n_62;
  wire MEM_5_reg_bram_12_n_63;
  wire MEM_5_reg_bram_12_n_64;
  wire MEM_5_reg_bram_12_n_65;
  wire MEM_5_reg_bram_12_n_66;
  wire MEM_5_reg_bram_12_n_67;
  wire MEM_5_reg_bram_13_i_1_n_0;
  wire MEM_5_reg_bram_13_n_0;
  wire MEM_5_reg_bram_13_n_1;
  wire MEM_5_reg_bram_13_n_136;
  wire MEM_5_reg_bram_13_n_137;
  wire MEM_5_reg_bram_13_n_138;
  wire MEM_5_reg_bram_13_n_139;
  wire MEM_5_reg_bram_13_n_60;
  wire MEM_5_reg_bram_13_n_61;
  wire MEM_5_reg_bram_13_n_62;
  wire MEM_5_reg_bram_13_n_63;
  wire MEM_5_reg_bram_13_n_64;
  wire MEM_5_reg_bram_13_n_65;
  wire MEM_5_reg_bram_13_n_66;
  wire MEM_5_reg_bram_13_n_67;
  wire MEM_5_reg_bram_14_i_1_n_0;
  wire MEM_5_reg_bram_14_n_0;
  wire MEM_5_reg_bram_14_n_1;
  wire MEM_5_reg_bram_14_n_136;
  wire MEM_5_reg_bram_14_n_137;
  wire MEM_5_reg_bram_14_n_138;
  wire MEM_5_reg_bram_14_n_139;
  wire MEM_5_reg_bram_14_n_60;
  wire MEM_5_reg_bram_14_n_61;
  wire MEM_5_reg_bram_14_n_62;
  wire MEM_5_reg_bram_14_n_63;
  wire MEM_5_reg_bram_14_n_64;
  wire MEM_5_reg_bram_14_n_65;
  wire MEM_5_reg_bram_14_n_66;
  wire MEM_5_reg_bram_14_n_67;
  wire MEM_5_reg_bram_15_i_1_n_0;
  wire MEM_5_reg_bram_15_n_124;
  wire MEM_5_reg_bram_15_n_125;
  wire MEM_5_reg_bram_15_n_126;
  wire MEM_5_reg_bram_15_n_127;
  wire MEM_5_reg_bram_15_n_128;
  wire MEM_5_reg_bram_15_n_129;
  wire MEM_5_reg_bram_15_n_130;
  wire MEM_5_reg_bram_15_n_131;
  wire MEM_5_reg_bram_1_i_10_n_0;
  wire MEM_5_reg_bram_1_i_11_n_0;
  wire MEM_5_reg_bram_1_i_12_n_0;
  wire MEM_5_reg_bram_1_i_13_n_0;
  wire MEM_5_reg_bram_1_i_1_n_0;
  wire MEM_5_reg_bram_1_i_2_n_0;
  wire MEM_5_reg_bram_1_i_3_n_0;
  wire MEM_5_reg_bram_1_i_4_n_0;
  wire MEM_5_reg_bram_1_i_5_n_0;
  wire MEM_5_reg_bram_1_i_6_n_0;
  wire MEM_5_reg_bram_1_i_7_n_0;
  wire MEM_5_reg_bram_1_i_8_n_0;
  wire MEM_5_reg_bram_1_i_9_n_0;
  wire MEM_5_reg_bram_1_n_0;
  wire MEM_5_reg_bram_1_n_1;
  wire MEM_5_reg_bram_1_n_136;
  wire MEM_5_reg_bram_1_n_137;
  wire MEM_5_reg_bram_1_n_138;
  wire MEM_5_reg_bram_1_n_139;
  wire MEM_5_reg_bram_1_n_60;
  wire MEM_5_reg_bram_1_n_61;
  wire MEM_5_reg_bram_1_n_62;
  wire MEM_5_reg_bram_1_n_63;
  wire MEM_5_reg_bram_1_n_64;
  wire MEM_5_reg_bram_1_n_65;
  wire MEM_5_reg_bram_1_n_66;
  wire MEM_5_reg_bram_1_n_67;
  wire MEM_5_reg_bram_2_i_1_n_0;
  wire MEM_5_reg_bram_2_n_0;
  wire MEM_5_reg_bram_2_n_1;
  wire MEM_5_reg_bram_2_n_136;
  wire MEM_5_reg_bram_2_n_137;
  wire MEM_5_reg_bram_2_n_138;
  wire MEM_5_reg_bram_2_n_139;
  wire MEM_5_reg_bram_2_n_60;
  wire MEM_5_reg_bram_2_n_61;
  wire MEM_5_reg_bram_2_n_62;
  wire MEM_5_reg_bram_2_n_63;
  wire MEM_5_reg_bram_2_n_64;
  wire MEM_5_reg_bram_2_n_65;
  wire MEM_5_reg_bram_2_n_66;
  wire MEM_5_reg_bram_2_n_67;
  wire MEM_5_reg_bram_3_i_1_n_0;
  wire MEM_5_reg_bram_3_n_0;
  wire MEM_5_reg_bram_3_n_1;
  wire MEM_5_reg_bram_3_n_136;
  wire MEM_5_reg_bram_3_n_137;
  wire MEM_5_reg_bram_3_n_138;
  wire MEM_5_reg_bram_3_n_139;
  wire MEM_5_reg_bram_3_n_60;
  wire MEM_5_reg_bram_3_n_61;
  wire MEM_5_reg_bram_3_n_62;
  wire MEM_5_reg_bram_3_n_63;
  wire MEM_5_reg_bram_3_n_64;
  wire MEM_5_reg_bram_3_n_65;
  wire MEM_5_reg_bram_3_n_66;
  wire MEM_5_reg_bram_3_n_67;
  wire MEM_5_reg_bram_4_i_1_n_0;
  wire MEM_5_reg_bram_4_n_0;
  wire MEM_5_reg_bram_4_n_1;
  wire MEM_5_reg_bram_4_n_136;
  wire MEM_5_reg_bram_4_n_137;
  wire MEM_5_reg_bram_4_n_138;
  wire MEM_5_reg_bram_4_n_139;
  wire MEM_5_reg_bram_4_n_60;
  wire MEM_5_reg_bram_4_n_61;
  wire MEM_5_reg_bram_4_n_62;
  wire MEM_5_reg_bram_4_n_63;
  wire MEM_5_reg_bram_4_n_64;
  wire MEM_5_reg_bram_4_n_65;
  wire MEM_5_reg_bram_4_n_66;
  wire MEM_5_reg_bram_4_n_67;
  wire MEM_5_reg_bram_5_i_1_n_0;
  wire MEM_5_reg_bram_5_n_0;
  wire MEM_5_reg_bram_5_n_1;
  wire MEM_5_reg_bram_5_n_136;
  wire MEM_5_reg_bram_5_n_137;
  wire MEM_5_reg_bram_5_n_138;
  wire MEM_5_reg_bram_5_n_139;
  wire MEM_5_reg_bram_5_n_60;
  wire MEM_5_reg_bram_5_n_61;
  wire MEM_5_reg_bram_5_n_62;
  wire MEM_5_reg_bram_5_n_63;
  wire MEM_5_reg_bram_5_n_64;
  wire MEM_5_reg_bram_5_n_65;
  wire MEM_5_reg_bram_5_n_66;
  wire MEM_5_reg_bram_5_n_67;
  wire MEM_5_reg_bram_6_i_1_n_0;
  wire MEM_5_reg_bram_6_n_0;
  wire MEM_5_reg_bram_6_n_1;
  wire MEM_5_reg_bram_6_n_136;
  wire MEM_5_reg_bram_6_n_137;
  wire MEM_5_reg_bram_6_n_138;
  wire MEM_5_reg_bram_6_n_139;
  wire MEM_5_reg_bram_6_n_60;
  wire MEM_5_reg_bram_6_n_61;
  wire MEM_5_reg_bram_6_n_62;
  wire MEM_5_reg_bram_6_n_63;
  wire MEM_5_reg_bram_6_n_64;
  wire MEM_5_reg_bram_6_n_65;
  wire MEM_5_reg_bram_6_n_66;
  wire MEM_5_reg_bram_6_n_67;
  wire MEM_5_reg_bram_7_i_1_n_0;
  wire MEM_5_reg_bram_7_n_0;
  wire MEM_5_reg_bram_7_n_1;
  wire MEM_5_reg_bram_7_n_136;
  wire MEM_5_reg_bram_7_n_137;
  wire MEM_5_reg_bram_7_n_138;
  wire MEM_5_reg_bram_7_n_139;
  wire MEM_5_reg_bram_7_n_60;
  wire MEM_5_reg_bram_7_n_61;
  wire MEM_5_reg_bram_7_n_62;
  wire MEM_5_reg_bram_7_n_63;
  wire MEM_5_reg_bram_7_n_64;
  wire MEM_5_reg_bram_7_n_65;
  wire MEM_5_reg_bram_7_n_66;
  wire MEM_5_reg_bram_7_n_67;
  wire MEM_5_reg_bram_8_i_1_n_0;
  wire MEM_5_reg_bram_8_n_124;
  wire MEM_5_reg_bram_8_n_125;
  wire MEM_5_reg_bram_8_n_126;
  wire MEM_5_reg_bram_8_n_127;
  wire MEM_5_reg_bram_8_n_128;
  wire MEM_5_reg_bram_8_n_129;
  wire MEM_5_reg_bram_8_n_130;
  wire MEM_5_reg_bram_8_n_131;
  wire MEM_5_reg_bram_9_i_1_n_0;
  wire MEM_5_reg_bram_9_n_0;
  wire MEM_5_reg_bram_9_n_1;
  wire MEM_5_reg_bram_9_n_136;
  wire MEM_5_reg_bram_9_n_137;
  wire MEM_5_reg_bram_9_n_138;
  wire MEM_5_reg_bram_9_n_139;
  wire MEM_5_reg_bram_9_n_60;
  wire MEM_5_reg_bram_9_n_61;
  wire MEM_5_reg_bram_9_n_62;
  wire MEM_5_reg_bram_9_n_63;
  wire MEM_5_reg_bram_9_n_64;
  wire MEM_5_reg_bram_9_n_65;
  wire MEM_5_reg_bram_9_n_66;
  wire MEM_5_reg_bram_9_n_67;
  wire MEM_6_reg_bram_10_i_1_n_0;
  wire MEM_6_reg_bram_10_n_0;
  wire MEM_6_reg_bram_10_n_1;
  wire MEM_6_reg_bram_10_n_136;
  wire MEM_6_reg_bram_10_n_137;
  wire MEM_6_reg_bram_10_n_138;
  wire MEM_6_reg_bram_10_n_139;
  wire MEM_6_reg_bram_10_n_60;
  wire MEM_6_reg_bram_10_n_61;
  wire MEM_6_reg_bram_10_n_62;
  wire MEM_6_reg_bram_10_n_63;
  wire MEM_6_reg_bram_10_n_64;
  wire MEM_6_reg_bram_10_n_65;
  wire MEM_6_reg_bram_10_n_66;
  wire MEM_6_reg_bram_10_n_67;
  wire MEM_6_reg_bram_11_i_1_n_0;
  wire MEM_6_reg_bram_11_n_0;
  wire MEM_6_reg_bram_11_n_1;
  wire MEM_6_reg_bram_11_n_136;
  wire MEM_6_reg_bram_11_n_137;
  wire MEM_6_reg_bram_11_n_138;
  wire MEM_6_reg_bram_11_n_139;
  wire MEM_6_reg_bram_11_n_60;
  wire MEM_6_reg_bram_11_n_61;
  wire MEM_6_reg_bram_11_n_62;
  wire MEM_6_reg_bram_11_n_63;
  wire MEM_6_reg_bram_11_n_64;
  wire MEM_6_reg_bram_11_n_65;
  wire MEM_6_reg_bram_11_n_66;
  wire MEM_6_reg_bram_11_n_67;
  wire MEM_6_reg_bram_12_i_1_n_0;
  wire MEM_6_reg_bram_12_n_0;
  wire MEM_6_reg_bram_12_n_1;
  wire MEM_6_reg_bram_12_n_136;
  wire MEM_6_reg_bram_12_n_137;
  wire MEM_6_reg_bram_12_n_138;
  wire MEM_6_reg_bram_12_n_139;
  wire MEM_6_reg_bram_12_n_60;
  wire MEM_6_reg_bram_12_n_61;
  wire MEM_6_reg_bram_12_n_62;
  wire MEM_6_reg_bram_12_n_63;
  wire MEM_6_reg_bram_12_n_64;
  wire MEM_6_reg_bram_12_n_65;
  wire MEM_6_reg_bram_12_n_66;
  wire MEM_6_reg_bram_12_n_67;
  wire MEM_6_reg_bram_13_i_1_n_0;
  wire MEM_6_reg_bram_13_n_0;
  wire MEM_6_reg_bram_13_n_1;
  wire MEM_6_reg_bram_13_n_136;
  wire MEM_6_reg_bram_13_n_137;
  wire MEM_6_reg_bram_13_n_138;
  wire MEM_6_reg_bram_13_n_139;
  wire MEM_6_reg_bram_13_n_60;
  wire MEM_6_reg_bram_13_n_61;
  wire MEM_6_reg_bram_13_n_62;
  wire MEM_6_reg_bram_13_n_63;
  wire MEM_6_reg_bram_13_n_64;
  wire MEM_6_reg_bram_13_n_65;
  wire MEM_6_reg_bram_13_n_66;
  wire MEM_6_reg_bram_13_n_67;
  wire MEM_6_reg_bram_14_i_1_n_0;
  wire MEM_6_reg_bram_14_n_0;
  wire MEM_6_reg_bram_14_n_1;
  wire MEM_6_reg_bram_14_n_136;
  wire MEM_6_reg_bram_14_n_137;
  wire MEM_6_reg_bram_14_n_138;
  wire MEM_6_reg_bram_14_n_139;
  wire MEM_6_reg_bram_14_n_60;
  wire MEM_6_reg_bram_14_n_61;
  wire MEM_6_reg_bram_14_n_62;
  wire MEM_6_reg_bram_14_n_63;
  wire MEM_6_reg_bram_14_n_64;
  wire MEM_6_reg_bram_14_n_65;
  wire MEM_6_reg_bram_14_n_66;
  wire MEM_6_reg_bram_14_n_67;
  wire MEM_6_reg_bram_15_i_1_n_0;
  wire MEM_6_reg_bram_15_n_124;
  wire MEM_6_reg_bram_15_n_125;
  wire MEM_6_reg_bram_15_n_126;
  wire MEM_6_reg_bram_15_n_127;
  wire MEM_6_reg_bram_15_n_128;
  wire MEM_6_reg_bram_15_n_129;
  wire MEM_6_reg_bram_15_n_130;
  wire MEM_6_reg_bram_15_n_131;
  wire MEM_6_reg_bram_1_i_13_n_0;
  wire MEM_6_reg_bram_1_n_0;
  wire MEM_6_reg_bram_1_n_1;
  wire MEM_6_reg_bram_1_n_136;
  wire MEM_6_reg_bram_1_n_137;
  wire MEM_6_reg_bram_1_n_138;
  wire MEM_6_reg_bram_1_n_139;
  wire MEM_6_reg_bram_1_n_60;
  wire MEM_6_reg_bram_1_n_61;
  wire MEM_6_reg_bram_1_n_62;
  wire MEM_6_reg_bram_1_n_63;
  wire MEM_6_reg_bram_1_n_64;
  wire MEM_6_reg_bram_1_n_65;
  wire MEM_6_reg_bram_1_n_66;
  wire MEM_6_reg_bram_1_n_67;
  wire MEM_6_reg_bram_2_i_1_n_0;
  wire MEM_6_reg_bram_2_n_0;
  wire MEM_6_reg_bram_2_n_1;
  wire MEM_6_reg_bram_2_n_136;
  wire MEM_6_reg_bram_2_n_137;
  wire MEM_6_reg_bram_2_n_138;
  wire MEM_6_reg_bram_2_n_139;
  wire MEM_6_reg_bram_2_n_60;
  wire MEM_6_reg_bram_2_n_61;
  wire MEM_6_reg_bram_2_n_62;
  wire MEM_6_reg_bram_2_n_63;
  wire MEM_6_reg_bram_2_n_64;
  wire MEM_6_reg_bram_2_n_65;
  wire MEM_6_reg_bram_2_n_66;
  wire MEM_6_reg_bram_2_n_67;
  wire MEM_6_reg_bram_3_i_1_n_0;
  wire MEM_6_reg_bram_3_n_0;
  wire MEM_6_reg_bram_3_n_1;
  wire MEM_6_reg_bram_3_n_136;
  wire MEM_6_reg_bram_3_n_137;
  wire MEM_6_reg_bram_3_n_138;
  wire MEM_6_reg_bram_3_n_139;
  wire MEM_6_reg_bram_3_n_60;
  wire MEM_6_reg_bram_3_n_61;
  wire MEM_6_reg_bram_3_n_62;
  wire MEM_6_reg_bram_3_n_63;
  wire MEM_6_reg_bram_3_n_64;
  wire MEM_6_reg_bram_3_n_65;
  wire MEM_6_reg_bram_3_n_66;
  wire MEM_6_reg_bram_3_n_67;
  wire MEM_6_reg_bram_4_i_1_n_0;
  wire MEM_6_reg_bram_4_n_0;
  wire MEM_6_reg_bram_4_n_1;
  wire MEM_6_reg_bram_4_n_136;
  wire MEM_6_reg_bram_4_n_137;
  wire MEM_6_reg_bram_4_n_138;
  wire MEM_6_reg_bram_4_n_139;
  wire MEM_6_reg_bram_4_n_60;
  wire MEM_6_reg_bram_4_n_61;
  wire MEM_6_reg_bram_4_n_62;
  wire MEM_6_reg_bram_4_n_63;
  wire MEM_6_reg_bram_4_n_64;
  wire MEM_6_reg_bram_4_n_65;
  wire MEM_6_reg_bram_4_n_66;
  wire MEM_6_reg_bram_4_n_67;
  wire MEM_6_reg_bram_5_i_1_n_0;
  wire MEM_6_reg_bram_5_n_0;
  wire MEM_6_reg_bram_5_n_1;
  wire MEM_6_reg_bram_5_n_136;
  wire MEM_6_reg_bram_5_n_137;
  wire MEM_6_reg_bram_5_n_138;
  wire MEM_6_reg_bram_5_n_139;
  wire MEM_6_reg_bram_5_n_60;
  wire MEM_6_reg_bram_5_n_61;
  wire MEM_6_reg_bram_5_n_62;
  wire MEM_6_reg_bram_5_n_63;
  wire MEM_6_reg_bram_5_n_64;
  wire MEM_6_reg_bram_5_n_65;
  wire MEM_6_reg_bram_5_n_66;
  wire MEM_6_reg_bram_5_n_67;
  wire MEM_6_reg_bram_6_i_1_n_0;
  wire MEM_6_reg_bram_6_n_0;
  wire MEM_6_reg_bram_6_n_1;
  wire MEM_6_reg_bram_6_n_136;
  wire MEM_6_reg_bram_6_n_137;
  wire MEM_6_reg_bram_6_n_138;
  wire MEM_6_reg_bram_6_n_139;
  wire MEM_6_reg_bram_6_n_60;
  wire MEM_6_reg_bram_6_n_61;
  wire MEM_6_reg_bram_6_n_62;
  wire MEM_6_reg_bram_6_n_63;
  wire MEM_6_reg_bram_6_n_64;
  wire MEM_6_reg_bram_6_n_65;
  wire MEM_6_reg_bram_6_n_66;
  wire MEM_6_reg_bram_6_n_67;
  wire MEM_6_reg_bram_7_i_1_n_0;
  wire MEM_6_reg_bram_7_n_0;
  wire MEM_6_reg_bram_7_n_1;
  wire MEM_6_reg_bram_7_n_136;
  wire MEM_6_reg_bram_7_n_137;
  wire MEM_6_reg_bram_7_n_138;
  wire MEM_6_reg_bram_7_n_139;
  wire MEM_6_reg_bram_7_n_60;
  wire MEM_6_reg_bram_7_n_61;
  wire MEM_6_reg_bram_7_n_62;
  wire MEM_6_reg_bram_7_n_63;
  wire MEM_6_reg_bram_7_n_64;
  wire MEM_6_reg_bram_7_n_65;
  wire MEM_6_reg_bram_7_n_66;
  wire MEM_6_reg_bram_7_n_67;
  wire MEM_6_reg_bram_8_i_1_n_0;
  wire MEM_6_reg_bram_8_n_124;
  wire MEM_6_reg_bram_8_n_125;
  wire MEM_6_reg_bram_8_n_126;
  wire MEM_6_reg_bram_8_n_127;
  wire MEM_6_reg_bram_8_n_128;
  wire MEM_6_reg_bram_8_n_129;
  wire MEM_6_reg_bram_8_n_130;
  wire MEM_6_reg_bram_8_n_131;
  wire MEM_6_reg_bram_9_i_1_n_0;
  wire MEM_6_reg_bram_9_n_0;
  wire MEM_6_reg_bram_9_n_1;
  wire MEM_6_reg_bram_9_n_136;
  wire MEM_6_reg_bram_9_n_137;
  wire MEM_6_reg_bram_9_n_138;
  wire MEM_6_reg_bram_9_n_139;
  wire MEM_6_reg_bram_9_n_60;
  wire MEM_6_reg_bram_9_n_61;
  wire MEM_6_reg_bram_9_n_62;
  wire MEM_6_reg_bram_9_n_63;
  wire MEM_6_reg_bram_9_n_64;
  wire MEM_6_reg_bram_9_n_65;
  wire MEM_6_reg_bram_9_n_66;
  wire MEM_6_reg_bram_9_n_67;
  wire [0:0]Q;
  wire REG;
  wire REG_1;
  wire _GEN_1;
  wire _GEN_3;
  wire _GEN_5;
  wire _GEN_7;
  wire clock;
  wire [15:0]fbPixelAddrV0_reg;
  wire [15:0]fbPixelAddrV1_reg;
  wire [18:3]fb_io_in_araddr;
  wire fb_io_in_arvalid;
  wire [47:0]fb_io_in_rdata;
  wire fb_io_in_rvalid;
  wire [15:0]io_in_fb_awaddr;
  wire io_in_fb_awready;
  wire io_in_fb_awvalid;
  wire io_in_fb_bready;
  wire io_in_fb_bvalid;
  wire [47:0]io_in_fb_wdata;
  wire io_in_fb_wready;
  wire [5:0]io_in_fb_wstrb;
  wire io_in_fb_wvalid;
  wire [23:0]io_vga_rgb;
  wire [1:0]\io_vga_rgb[0] ;
  wire io_vga_rgb_23_sn_1;
  wire p_16_in;
  wire p_17_in;
  wire [23:0]p_1_in;
  wire [47:0]r;
  wire r_busy;
  wire reset;
  wire w_busy;
  wire NLW_MEM_0_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_1_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_1_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_1_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_1_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_1_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_10_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_10_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_10_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_10_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_10_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_10_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_10_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_10_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_10_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_10_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_11_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_11_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_11_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_11_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_11_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_11_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_11_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_11_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_11_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_11_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_12_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_12_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_12_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_12_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_12_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_12_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_12_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_12_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_12_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_12_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_13_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_13_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_13_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_13_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_13_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_13_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_13_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_13_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_13_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_13_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_14_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_14_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_14_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_14_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_14_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_14_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_14_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_14_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_14_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_14_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_15_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_15_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_15_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_15_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_15_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_15_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_15_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_15_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_15_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_15_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_15_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_15_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_15_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_2_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_2_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_2_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_2_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_2_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_2_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_2_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_2_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_2_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_3_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_3_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_3_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_3_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_3_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_3_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_3_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_3_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_3_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_4_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_4_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_4_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_4_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_4_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_4_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_4_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_4_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_4_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_5_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_5_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_5_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_5_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_5_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_5_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_5_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_5_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_5_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_6_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_6_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_6_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_6_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_6_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_6_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_6_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_6_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_6_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_7_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_7_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_7_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_7_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_7_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_7_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_7_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_7_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_7_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_8_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_8_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_8_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_8_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_8_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_8_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_8_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_8_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_8_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_8_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_8_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_8_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_8_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_9_DBITERR_UNCONNECTED;
  wire NLW_MEM_0_reg_bram_9_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_9_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_0_reg_bram_9_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_9_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_9_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_0_reg_bram_9_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_9_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_0_reg_bram_9_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_0_reg_bram_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_0_reg_bram_9_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_1_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_1_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_1_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_1_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_1_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_10_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_10_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_10_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_10_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_10_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_10_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_10_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_10_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_10_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_10_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_11_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_11_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_11_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_11_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_11_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_11_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_11_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_11_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_11_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_11_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_12_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_12_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_12_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_12_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_12_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_12_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_12_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_12_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_12_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_12_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_13_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_13_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_13_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_13_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_13_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_13_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_13_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_13_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_13_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_13_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_14_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_14_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_14_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_14_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_14_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_14_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_14_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_14_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_14_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_14_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_15_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_15_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_15_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_15_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_15_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_15_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_15_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_15_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_15_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_15_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_15_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_15_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_15_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_2_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_2_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_2_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_2_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_2_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_2_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_2_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_2_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_2_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_3_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_3_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_3_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_3_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_3_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_3_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_3_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_3_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_3_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_4_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_4_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_4_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_4_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_4_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_4_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_4_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_4_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_4_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_5_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_5_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_5_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_5_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_5_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_5_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_5_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_5_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_5_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_6_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_6_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_6_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_6_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_6_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_6_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_6_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_6_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_6_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_7_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_7_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_7_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_7_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_7_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_7_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_7_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_7_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_7_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_8_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_8_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_8_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_8_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_8_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_8_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_8_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_8_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_8_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_8_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_8_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_8_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_8_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_9_DBITERR_UNCONNECTED;
  wire NLW_MEM_1_reg_bram_9_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_9_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_1_reg_bram_9_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_9_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_9_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_1_reg_bram_9_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_9_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_1_reg_bram_9_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_1_reg_bram_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_1_reg_bram_9_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_1_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_1_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_1_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_1_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_1_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_10_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_10_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_10_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_10_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_10_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_10_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_10_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_10_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_10_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_10_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_11_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_11_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_11_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_11_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_11_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_11_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_11_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_11_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_11_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_11_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_12_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_12_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_12_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_12_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_12_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_12_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_12_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_12_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_12_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_12_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_13_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_13_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_13_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_13_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_13_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_13_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_13_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_13_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_13_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_13_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_14_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_14_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_14_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_14_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_14_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_14_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_14_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_14_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_14_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_14_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_15_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_15_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_15_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_15_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_15_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_15_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_15_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_15_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_15_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_15_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_15_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_15_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_15_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_2_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_2_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_2_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_2_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_2_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_2_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_2_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_2_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_2_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_3_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_3_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_3_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_3_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_3_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_3_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_3_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_3_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_3_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_4_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_4_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_4_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_4_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_4_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_4_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_4_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_4_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_4_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_5_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_5_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_5_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_5_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_5_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_5_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_5_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_5_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_5_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_6_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_6_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_6_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_6_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_6_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_6_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_6_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_6_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_6_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_7_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_7_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_7_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_7_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_7_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_7_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_7_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_7_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_7_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_8_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_8_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_8_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_8_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_8_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_8_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_8_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_8_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_8_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_8_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_8_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_8_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_8_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_9_DBITERR_UNCONNECTED;
  wire NLW_MEM_2_reg_bram_9_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_9_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_2_reg_bram_9_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_9_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_9_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_2_reg_bram_9_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_9_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_2_reg_bram_9_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_2_reg_bram_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_2_reg_bram_9_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_1_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_1_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_1_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_1_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_1_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_10_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_10_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_10_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_10_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_10_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_10_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_10_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_10_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_10_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_10_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_11_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_11_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_11_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_11_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_11_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_11_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_11_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_11_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_11_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_11_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_12_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_12_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_12_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_12_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_12_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_12_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_12_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_12_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_12_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_12_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_13_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_13_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_13_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_13_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_13_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_13_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_13_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_13_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_13_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_13_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_14_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_14_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_14_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_14_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_14_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_14_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_14_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_14_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_14_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_14_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_15_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_15_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_15_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_15_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_15_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_15_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_15_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_15_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_15_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_15_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_15_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_15_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_15_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_2_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_2_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_2_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_2_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_2_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_2_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_2_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_2_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_2_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_3_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_3_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_3_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_3_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_3_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_3_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_3_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_3_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_3_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_4_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_4_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_4_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_4_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_4_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_4_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_4_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_4_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_4_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_5_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_5_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_5_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_5_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_5_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_5_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_5_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_5_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_5_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_6_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_6_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_6_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_6_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_6_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_6_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_6_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_6_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_6_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_7_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_7_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_7_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_7_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_7_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_7_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_7_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_7_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_7_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_8_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_8_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_8_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_8_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_8_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_8_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_8_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_8_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_8_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_8_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_8_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_8_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_8_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_9_DBITERR_UNCONNECTED;
  wire NLW_MEM_4_reg_bram_9_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_9_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_4_reg_bram_9_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_9_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_9_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_4_reg_bram_9_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_9_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_4_reg_bram_9_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_4_reg_bram_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_4_reg_bram_9_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_1_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_1_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_1_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_1_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_1_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_10_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_10_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_10_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_10_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_10_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_10_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_10_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_10_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_10_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_10_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_11_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_11_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_11_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_11_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_11_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_11_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_11_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_11_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_11_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_11_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_12_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_12_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_12_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_12_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_12_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_12_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_12_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_12_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_12_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_12_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_13_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_13_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_13_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_13_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_13_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_13_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_13_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_13_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_13_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_13_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_14_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_14_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_14_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_14_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_14_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_14_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_14_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_14_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_14_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_14_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_15_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_15_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_15_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_15_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_15_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_15_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_15_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_15_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_15_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_15_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_15_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_15_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_15_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_2_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_2_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_2_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_2_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_2_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_2_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_2_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_2_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_2_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_3_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_3_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_3_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_3_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_3_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_3_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_3_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_3_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_3_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_4_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_4_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_4_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_4_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_4_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_4_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_4_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_4_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_4_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_5_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_5_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_5_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_5_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_5_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_5_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_5_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_5_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_5_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_6_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_6_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_6_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_6_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_6_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_6_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_6_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_6_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_6_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_7_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_7_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_7_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_7_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_7_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_7_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_7_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_7_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_7_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_8_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_8_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_8_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_8_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_8_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_8_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_8_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_8_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_8_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_8_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_8_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_8_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_8_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_9_DBITERR_UNCONNECTED;
  wire NLW_MEM_5_reg_bram_9_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_9_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_5_reg_bram_9_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_9_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_9_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_5_reg_bram_9_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_9_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_5_reg_bram_9_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_5_reg_bram_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_5_reg_bram_9_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_1_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_1_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_1_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_1_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_1_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_10_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_10_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_10_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_10_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_10_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_10_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_10_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_10_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_10_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_10_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_11_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_11_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_11_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_11_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_11_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_11_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_11_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_11_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_11_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_11_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_12_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_12_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_12_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_12_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_12_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_12_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_12_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_12_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_12_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_12_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_13_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_13_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_13_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_13_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_13_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_13_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_13_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_13_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_13_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_13_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_14_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_14_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_14_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_14_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_14_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_14_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_14_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_14_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_14_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_14_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_15_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_15_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_15_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_15_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_15_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_15_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_15_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_15_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_15_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_15_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_15_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_15_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_15_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_2_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_2_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_2_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_2_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_2_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_2_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_2_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_2_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_2_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_3_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_3_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_3_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_3_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_3_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_3_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_3_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_3_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_3_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_4_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_4_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_4_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_4_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_4_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_4_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_4_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_4_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_4_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_5_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_5_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_5_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_5_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_5_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_5_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_5_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_5_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_5_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_6_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_6_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_6_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_6_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_6_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_6_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_6_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_6_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_6_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_7_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_7_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_7_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_7_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_7_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_7_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_7_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_7_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_7_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_8_CASOUTDBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_8_CASOUTSBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_8_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_8_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_8_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_8_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_8_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_8_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_8_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_8_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_8_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_8_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_8_RDADDRECC_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_9_DBITERR_UNCONNECTED;
  wire NLW_MEM_6_reg_bram_9_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_9_CASDOUTA_UNCONNECTED;
  wire [31:8]NLW_MEM_6_reg_bram_9_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_9_CASDOUTPA_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_9_DOUTADOUT_UNCONNECTED;
  wire [31:0]NLW_MEM_6_reg_bram_9_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_9_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_MEM_6_reg_bram_9_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_MEM_6_reg_bram_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEM_6_reg_bram_9_RDADDRECC_UNCONNECTED;

  assign io_vga_rgb_23_sn_1 = io_vga_rgb_23_sp_1;
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_1
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_0_reg_bram_1_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_1_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_1_n_60,MEM_0_reg_bram_1_n_61,MEM_0_reg_bram_1_n_62,MEM_0_reg_bram_1_n_63,MEM_0_reg_bram_1_n_64,MEM_0_reg_bram_1_n_65,MEM_0_reg_bram_1_n_66,MEM_0_reg_bram_1_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_1_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_1_n_136,MEM_0_reg_bram_1_n_137,MEM_0_reg_bram_1_n_138,MEM_0_reg_bram_1_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_1_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_1_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_1_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_1_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_1_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_1_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_1_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_1_i_15_n_0,MEM_0_reg_bram_1_i_15_n_0,MEM_0_reg_bram_1_i_15_n_0,MEM_0_reg_bram_1_i_15_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "36864" *) 
  (* bram_addr_end = "40959" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "36864" *) 
  (* ram_addr_end = "40959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_10
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_9_n_60,MEM_0_reg_bram_9_n_61,MEM_0_reg_bram_9_n_62,MEM_0_reg_bram_9_n_63,MEM_0_reg_bram_9_n_64,MEM_0_reg_bram_9_n_65,MEM_0_reg_bram_9_n_66,MEM_0_reg_bram_9_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_9_n_136,MEM_0_reg_bram_9_n_137,MEM_0_reg_bram_9_n_138,MEM_0_reg_bram_9_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_10_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_10_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_10_n_60,MEM_0_reg_bram_10_n_61,MEM_0_reg_bram_10_n_62,MEM_0_reg_bram_10_n_63,MEM_0_reg_bram_10_n_64,MEM_0_reg_bram_10_n_65,MEM_0_reg_bram_10_n_66,MEM_0_reg_bram_10_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_10_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_10_n_136,MEM_0_reg_bram_10_n_137,MEM_0_reg_bram_10_n_138,MEM_0_reg_bram_10_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_9_n_0),
        .CASINSBITERR(MEM_0_reg_bram_9_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_10_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_10_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_10_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_10_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_10_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_10_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_10_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_10_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_10_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_10_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_10_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_10_i_3_n_0,MEM_0_reg_bram_10_i_3_n_0,MEM_0_reg_bram_10_i_3_n_0,MEM_0_reg_bram_10_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_10_i_1
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_0_reg_bram_10_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_10_i_2
       (.I0(REG),
        .I1(fb_io_in_araddr[15]),
        .I2(fb_io_in_araddr[18]),
        .I3(fb_io_in_araddr[17]),
        .I4(fb_io_in_araddr[16]),
        .O(MEM_0_reg_bram_10_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_10_i_3
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_0_reg_bram_10_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "40960" *) 
  (* bram_addr_end = "45055" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "40960" *) 
  (* ram_addr_end = "45055" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_11
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_10_n_60,MEM_0_reg_bram_10_n_61,MEM_0_reg_bram_10_n_62,MEM_0_reg_bram_10_n_63,MEM_0_reg_bram_10_n_64,MEM_0_reg_bram_10_n_65,MEM_0_reg_bram_10_n_66,MEM_0_reg_bram_10_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_10_n_136,MEM_0_reg_bram_10_n_137,MEM_0_reg_bram_10_n_138,MEM_0_reg_bram_10_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_11_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_11_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_11_n_60,MEM_0_reg_bram_11_n_61,MEM_0_reg_bram_11_n_62,MEM_0_reg_bram_11_n_63,MEM_0_reg_bram_11_n_64,MEM_0_reg_bram_11_n_65,MEM_0_reg_bram_11_n_66,MEM_0_reg_bram_11_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_11_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_11_n_136,MEM_0_reg_bram_11_n_137,MEM_0_reg_bram_11_n_138,MEM_0_reg_bram_11_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_10_n_0),
        .CASINSBITERR(MEM_0_reg_bram_10_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_11_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_11_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_11_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_11_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_11_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_11_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_11_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_11_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_11_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_11_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_11_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_11_i_3_n_0,MEM_0_reg_bram_11_i_3_n_0,MEM_0_reg_bram_11_i_3_n_0,MEM_0_reg_bram_11_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_11_i_1
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_0_reg_bram_11_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_11_i_2
       (.I0(REG),
        .I1(fb_io_in_araddr[16]),
        .I2(fb_io_in_araddr[18]),
        .I3(fb_io_in_araddr[17]),
        .I4(fb_io_in_araddr[15]),
        .O(MEM_0_reg_bram_11_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_11_i_3
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_0_reg_bram_11_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "45056" *) 
  (* bram_addr_end = "49151" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "45056" *) 
  (* ram_addr_end = "49151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_12
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_11_n_60,MEM_0_reg_bram_11_n_61,MEM_0_reg_bram_11_n_62,MEM_0_reg_bram_11_n_63,MEM_0_reg_bram_11_n_64,MEM_0_reg_bram_11_n_65,MEM_0_reg_bram_11_n_66,MEM_0_reg_bram_11_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_11_n_136,MEM_0_reg_bram_11_n_137,MEM_0_reg_bram_11_n_138,MEM_0_reg_bram_11_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_12_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_12_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_12_n_60,MEM_0_reg_bram_12_n_61,MEM_0_reg_bram_12_n_62,MEM_0_reg_bram_12_n_63,MEM_0_reg_bram_12_n_64,MEM_0_reg_bram_12_n_65,MEM_0_reg_bram_12_n_66,MEM_0_reg_bram_12_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_12_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_12_n_136,MEM_0_reg_bram_12_n_137,MEM_0_reg_bram_12_n_138,MEM_0_reg_bram_12_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_11_n_0),
        .CASINSBITERR(MEM_0_reg_bram_11_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_12_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_12_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_12_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_12_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_12_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_12_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_12_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_12_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_12_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_12_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_12_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_12_i_3_n_0,MEM_0_reg_bram_12_i_3_n_0,MEM_0_reg_bram_12_i_3_n_0,MEM_0_reg_bram_12_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_12_i_1
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_0_reg_bram_12_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_12_i_2
       (.I0(REG),
        .I1(fb_io_in_araddr[16]),
        .I2(fb_io_in_araddr[18]),
        .I3(fb_io_in_araddr[17]),
        .I4(fb_io_in_araddr[15]),
        .O(MEM_0_reg_bram_12_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_12_i_3
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_0_reg_bram_12_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "49152" *) 
  (* bram_addr_end = "53247" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "49152" *) 
  (* ram_addr_end = "53247" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_13
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_12_n_60,MEM_0_reg_bram_12_n_61,MEM_0_reg_bram_12_n_62,MEM_0_reg_bram_12_n_63,MEM_0_reg_bram_12_n_64,MEM_0_reg_bram_12_n_65,MEM_0_reg_bram_12_n_66,MEM_0_reg_bram_12_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_12_n_136,MEM_0_reg_bram_12_n_137,MEM_0_reg_bram_12_n_138,MEM_0_reg_bram_12_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_13_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_13_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_13_n_60,MEM_0_reg_bram_13_n_61,MEM_0_reg_bram_13_n_62,MEM_0_reg_bram_13_n_63,MEM_0_reg_bram_13_n_64,MEM_0_reg_bram_13_n_65,MEM_0_reg_bram_13_n_66,MEM_0_reg_bram_13_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_13_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_13_n_136,MEM_0_reg_bram_13_n_137,MEM_0_reg_bram_13_n_138,MEM_0_reg_bram_13_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_12_n_0),
        .CASINSBITERR(MEM_0_reg_bram_12_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_13_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_13_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_13_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_13_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_13_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_13_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_13_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_13_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_13_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_13_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_13_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_13_i_3_n_0,MEM_0_reg_bram_13_i_3_n_0,MEM_0_reg_bram_13_i_3_n_0,MEM_0_reg_bram_13_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_13_i_1
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_0_reg_bram_13_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_13_i_2
       (.I0(REG),
        .I1(fb_io_in_araddr[17]),
        .I2(fb_io_in_araddr[18]),
        .I3(fb_io_in_araddr[16]),
        .I4(fb_io_in_araddr[15]),
        .O(MEM_0_reg_bram_13_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_13_i_3
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_0_reg_bram_13_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "53248" *) 
  (* bram_addr_end = "57343" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "53248" *) 
  (* ram_addr_end = "57343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_14
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_13_n_60,MEM_0_reg_bram_13_n_61,MEM_0_reg_bram_13_n_62,MEM_0_reg_bram_13_n_63,MEM_0_reg_bram_13_n_64,MEM_0_reg_bram_13_n_65,MEM_0_reg_bram_13_n_66,MEM_0_reg_bram_13_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_13_n_136,MEM_0_reg_bram_13_n_137,MEM_0_reg_bram_13_n_138,MEM_0_reg_bram_13_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_14_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_14_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_14_n_60,MEM_0_reg_bram_14_n_61,MEM_0_reg_bram_14_n_62,MEM_0_reg_bram_14_n_63,MEM_0_reg_bram_14_n_64,MEM_0_reg_bram_14_n_65,MEM_0_reg_bram_14_n_66,MEM_0_reg_bram_14_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_14_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_14_n_136,MEM_0_reg_bram_14_n_137,MEM_0_reg_bram_14_n_138,MEM_0_reg_bram_14_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_13_n_0),
        .CASINSBITERR(MEM_0_reg_bram_13_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_14_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_14_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_14_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_14_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_14_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_14_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_14_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_14_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_14_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_14_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_14_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_14_i_3_n_0,MEM_0_reg_bram_14_i_3_n_0,MEM_0_reg_bram_14_i_3_n_0,MEM_0_reg_bram_14_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_14_i_1
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_0_reg_bram_14_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_14_i_2
       (.I0(REG),
        .I1(fb_io_in_araddr[17]),
        .I2(fb_io_in_araddr[18]),
        .I3(fb_io_in_araddr[16]),
        .I4(fb_io_in_araddr[15]),
        .O(MEM_0_reg_bram_14_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_14_i_3
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_0_reg_bram_14_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "57344" *) 
  (* bram_addr_end = "61439" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "57344" *) 
  (* ram_addr_end = "61439" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_15
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_14_n_60,MEM_0_reg_bram_14_n_61,MEM_0_reg_bram_14_n_62,MEM_0_reg_bram_14_n_63,MEM_0_reg_bram_14_n_64,MEM_0_reg_bram_14_n_65,MEM_0_reg_bram_14_n_66,MEM_0_reg_bram_14_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_14_n_136,MEM_0_reg_bram_14_n_137,MEM_0_reg_bram_14_n_138,MEM_0_reg_bram_14_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_15_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_0_reg_bram_15_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_0_reg_bram_15_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_0_reg_bram_15_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_0_reg_bram_14_n_0),
        .CASINSBITERR(MEM_0_reg_bram_14_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_0_reg_bram_15_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_0_reg_bram_15_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_15_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_15_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_0_reg_bram_15_DOUTBDOUT_UNCONNECTED[31:8],MEM_0_reg_bram_15_n_124,MEM_0_reg_bram_15_n_125,MEM_0_reg_bram_15_n_126,MEM_0_reg_bram_15_n_127,MEM_0_reg_bram_15_n_128,MEM_0_reg_bram_15_n_129,MEM_0_reg_bram_15_n_130,MEM_0_reg_bram_15_n_131}),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_15_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_15_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_15_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_15_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_15_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_15_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_15_i_3_n_0,MEM_0_reg_bram_15_i_3_n_0,MEM_0_reg_bram_15_i_3_n_0,MEM_0_reg_bram_15_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_15_i_1
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_0_reg_bram_15_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_15_i_2
       (.I0(REG),
        .I1(fb_io_in_araddr[17]),
        .I2(fb_io_in_araddr[18]),
        .I3(fb_io_in_araddr[15]),
        .I4(fb_io_in_araddr[16]),
        .O(MEM_0_reg_bram_15_i_2_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_15_i_3
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_0_reg_bram_15_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    MEM_0_reg_bram_1_i_1
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_0_reg_bram_1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_10
       (.I0(fbPixelAddrV1_reg[4]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[4]),
        .O(MEM_0_reg_bram_1_i_10_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_11
       (.I0(fbPixelAddrV1_reg[3]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[3]),
        .O(MEM_0_reg_bram_1_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_12
       (.I0(fbPixelAddrV1_reg[2]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[2]),
        .O(MEM_0_reg_bram_1_i_12_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_13
       (.I0(fbPixelAddrV1_reg[1]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[1]),
        .O(MEM_0_reg_bram_1_i_13_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_14
       (.I0(fbPixelAddrV1_reg[0]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[0]),
        .O(MEM_0_reg_bram_1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    MEM_0_reg_bram_1_i_15
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_0_reg_bram_1_i_15_n_0));
  LUT6 #(
    .INIT(64'h2A2A2A2AAAAA2AAA)) 
    MEM_0_reg_bram_1_i_16
       (.I0(p_16_in),
        .I1(io_in_fb_awaddr[13]),
        .I2(MEM_0_reg_bram_1_i_20_n_0),
        .I3(io_in_fb_awaddr[11]),
        .I4(MEM_0_reg_bram_1_i_21_n_0),
        .I5(io_in_fb_awaddr[12]),
        .O(p_17_in));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    MEM_0_reg_bram_1_i_17
       (.I0(fbPixelAddrV0_reg[14]),
        .I1(fbPixelAddrV1_reg[14]),
        .I2(fbPixelAddrV0_reg[15]),
        .I3(Q),
        .I4(fbPixelAddrV1_reg[15]),
        .O(MEM_0_reg_bram_1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_18
       (.I0(fbPixelAddrV1_reg[12]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[12]),
        .O(fb_io_in_araddr[15]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    MEM_0_reg_bram_1_i_19
       (.I0(w_busy),
        .I1(io_in_fb_awvalid),
        .I2(io_in_fb_wvalid),
        .O(p_16_in));
  LUT6 #(
    .INIT(64'h0000000202020002)) 
    MEM_0_reg_bram_1_i_2
       (.I0(REG),
        .I1(MEM_0_reg_bram_1_i_17_n_0),
        .I2(fb_io_in_araddr[15]),
        .I3(fbPixelAddrV0_reg[13]),
        .I4(Q),
        .I5(fbPixelAddrV1_reg[13]),
        .O(MEM_0_reg_bram_1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    MEM_0_reg_bram_1_i_20
       (.I0(io_in_fb_awaddr[14]),
        .I1(io_in_fb_awaddr[15]),
        .O(MEM_0_reg_bram_1_i_20_n_0));
  LUT6 #(
    .INIT(64'h0000000055575757)) 
    MEM_0_reg_bram_1_i_21
       (.I0(io_in_fb_awaddr[9]),
        .I1(io_in_fb_awaddr[8]),
        .I2(io_in_fb_awaddr[7]),
        .I3(io_in_fb_awaddr[6]),
        .I4(io_in_fb_awaddr[5]),
        .I5(io_in_fb_awaddr[10]),
        .O(MEM_0_reg_bram_1_i_21_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_3
       (.I0(fbPixelAddrV1_reg[11]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[11]),
        .O(MEM_0_reg_bram_1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_4
       (.I0(fbPixelAddrV1_reg[10]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[10]),
        .O(MEM_0_reg_bram_1_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_5
       (.I0(fbPixelAddrV1_reg[9]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[9]),
        .O(MEM_0_reg_bram_1_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_6
       (.I0(fbPixelAddrV1_reg[8]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[8]),
        .O(MEM_0_reg_bram_1_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_7
       (.I0(fbPixelAddrV1_reg[7]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[7]),
        .O(MEM_0_reg_bram_1_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_8
       (.I0(fbPixelAddrV1_reg[6]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[6]),
        .O(MEM_0_reg_bram_1_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_1_i_9
       (.I0(fbPixelAddrV1_reg[5]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[5]),
        .O(MEM_0_reg_bram_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "4096" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_2
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_1_n_60,MEM_0_reg_bram_1_n_61,MEM_0_reg_bram_1_n_62,MEM_0_reg_bram_1_n_63,MEM_0_reg_bram_1_n_64,MEM_0_reg_bram_1_n_65,MEM_0_reg_bram_1_n_66,MEM_0_reg_bram_1_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_1_n_136,MEM_0_reg_bram_1_n_137,MEM_0_reg_bram_1_n_138,MEM_0_reg_bram_1_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_2_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_2_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_2_n_60,MEM_0_reg_bram_2_n_61,MEM_0_reg_bram_2_n_62,MEM_0_reg_bram_2_n_63,MEM_0_reg_bram_2_n_64,MEM_0_reg_bram_2_n_65,MEM_0_reg_bram_2_n_66,MEM_0_reg_bram_2_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_2_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_2_n_136,MEM_0_reg_bram_2_n_137,MEM_0_reg_bram_2_n_138,MEM_0_reg_bram_2_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_1_n_0),
        .CASINSBITERR(MEM_0_reg_bram_1_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_2_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_2_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_2_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_2_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_2_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_2_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_2_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_2_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_2_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_2_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_2_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_2_i_4_n_0,MEM_0_reg_bram_2_i_4_n_0,MEM_0_reg_bram_2_i_4_n_0,MEM_0_reg_bram_2_i_4_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hFFFFDFDFFFF5DFD5)) 
    MEM_0_reg_bram_2_i_1
       (.I0(fb_io_in_araddr[15]),
        .I1(fbPixelAddrV1_reg[14]),
        .I2(Q),
        .I3(fbPixelAddrV0_reg[14]),
        .I4(fbPixelAddrV1_reg[13]),
        .I5(fbPixelAddrV0_reg[13]),
        .O(MEM_0_reg_bram_2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_0_reg_bram_2_i_2
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_0_reg_bram_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    MEM_0_reg_bram_2_i_3
       (.I0(REG),
        .I1(MEM_0_reg_bram_1_i_17_n_0),
        .I2(fbPixelAddrV0_reg[13]),
        .I3(Q),
        .I4(fbPixelAddrV1_reg[13]),
        .I5(fb_io_in_araddr[15]),
        .O(MEM_0_reg_bram_2_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_0_reg_bram_2_i_4
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_0_reg_bram_2_i_4_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "8192" *) 
  (* bram_addr_end = "12287" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_3
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_2_n_60,MEM_0_reg_bram_2_n_61,MEM_0_reg_bram_2_n_62,MEM_0_reg_bram_2_n_63,MEM_0_reg_bram_2_n_64,MEM_0_reg_bram_2_n_65,MEM_0_reg_bram_2_n_66,MEM_0_reg_bram_2_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_2_n_136,MEM_0_reg_bram_2_n_137,MEM_0_reg_bram_2_n_138,MEM_0_reg_bram_2_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_3_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_3_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_3_n_60,MEM_0_reg_bram_3_n_61,MEM_0_reg_bram_3_n_62,MEM_0_reg_bram_3_n_63,MEM_0_reg_bram_3_n_64,MEM_0_reg_bram_3_n_65,MEM_0_reg_bram_3_n_66,MEM_0_reg_bram_3_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_3_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_3_n_136,MEM_0_reg_bram_3_n_137,MEM_0_reg_bram_3_n_138,MEM_0_reg_bram_3_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_2_n_0),
        .CASINSBITERR(MEM_0_reg_bram_2_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_3_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_3_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_3_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_3_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_3_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_3_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_3_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_3_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_3_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_3_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_3_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_3_i_4_n_0,MEM_0_reg_bram_3_i_4_n_0,MEM_0_reg_bram_3_i_4_n_0,MEM_0_reg_bram_3_i_4_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFF3FFF355)) 
    MEM_0_reg_bram_3_i_1
       (.I0(fbPixelAddrV0_reg[13]),
        .I1(fbPixelAddrV1_reg[13]),
        .I2(fbPixelAddrV1_reg[14]),
        .I3(Q),
        .I4(fbPixelAddrV0_reg[14]),
        .I5(fb_io_in_araddr[15]),
        .O(MEM_0_reg_bram_3_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_0_reg_bram_3_i_2
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_0_reg_bram_3_i_2_n_0));
  LUT6 #(
    .INIT(64'h0202020000000200)) 
    MEM_0_reg_bram_3_i_3
       (.I0(REG),
        .I1(MEM_0_reg_bram_1_i_17_n_0),
        .I2(fb_io_in_araddr[15]),
        .I3(fbPixelAddrV0_reg[13]),
        .I4(Q),
        .I5(fbPixelAddrV1_reg[13]),
        .O(MEM_0_reg_bram_3_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_0_reg_bram_3_i_4
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_0_reg_bram_3_i_4_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "12288" *) 
  (* bram_addr_end = "16383" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_4
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_3_n_60,MEM_0_reg_bram_3_n_61,MEM_0_reg_bram_3_n_62,MEM_0_reg_bram_3_n_63,MEM_0_reg_bram_3_n_64,MEM_0_reg_bram_3_n_65,MEM_0_reg_bram_3_n_66,MEM_0_reg_bram_3_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_3_n_136,MEM_0_reg_bram_3_n_137,MEM_0_reg_bram_3_n_138,MEM_0_reg_bram_3_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_4_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_4_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_4_n_60,MEM_0_reg_bram_4_n_61,MEM_0_reg_bram_4_n_62,MEM_0_reg_bram_4_n_63,MEM_0_reg_bram_4_n_64,MEM_0_reg_bram_4_n_65,MEM_0_reg_bram_4_n_66,MEM_0_reg_bram_4_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_4_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_4_n_136,MEM_0_reg_bram_4_n_137,MEM_0_reg_bram_4_n_138,MEM_0_reg_bram_4_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_3_n_0),
        .CASINSBITERR(MEM_0_reg_bram_3_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_4_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_4_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_4_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_4_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_4_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_4_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_4_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_4_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_4_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_4_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_4_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_4_i_4_n_0,MEM_0_reg_bram_4_i_4_n_0,MEM_0_reg_bram_4_i_4_n_0,MEM_0_reg_bram_4_i_4_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hCFAACFFFFFFFFFFF)) 
    MEM_0_reg_bram_4_i_1
       (.I0(fbPixelAddrV0_reg[14]),
        .I1(fbPixelAddrV1_reg[14]),
        .I2(fbPixelAddrV1_reg[13]),
        .I3(Q),
        .I4(fbPixelAddrV0_reg[13]),
        .I5(fb_io_in_araddr[15]),
        .O(MEM_0_reg_bram_4_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_4_i_2
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[13]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_0_reg_bram_4_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000088800080)) 
    MEM_0_reg_bram_4_i_3
       (.I0(REG),
        .I1(fb_io_in_araddr[15]),
        .I2(fbPixelAddrV0_reg[13]),
        .I3(Q),
        .I4(fbPixelAddrV1_reg[13]),
        .I5(MEM_0_reg_bram_1_i_17_n_0),
        .O(MEM_0_reg_bram_4_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_4_i_4
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[13]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_0_reg_bram_4_i_4_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "16384" *) 
  (* bram_addr_end = "20479" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "16384" *) 
  (* ram_addr_end = "20479" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_5
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_4_n_60,MEM_0_reg_bram_4_n_61,MEM_0_reg_bram_4_n_62,MEM_0_reg_bram_4_n_63,MEM_0_reg_bram_4_n_64,MEM_0_reg_bram_4_n_65,MEM_0_reg_bram_4_n_66,MEM_0_reg_bram_4_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_4_n_136,MEM_0_reg_bram_4_n_137,MEM_0_reg_bram_4_n_138,MEM_0_reg_bram_4_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_5_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_5_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_5_n_60,MEM_0_reg_bram_5_n_61,MEM_0_reg_bram_5_n_62,MEM_0_reg_bram_5_n_63,MEM_0_reg_bram_5_n_64,MEM_0_reg_bram_5_n_65,MEM_0_reg_bram_5_n_66,MEM_0_reg_bram_5_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_5_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_5_n_136,MEM_0_reg_bram_5_n_137,MEM_0_reg_bram_5_n_138,MEM_0_reg_bram_5_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_4_n_0),
        .CASINSBITERR(MEM_0_reg_bram_4_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_5_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_5_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_5_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_5_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_5_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_5_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_5_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_5_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_5_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_5_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_5_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_5_i_4_n_0,MEM_0_reg_bram_5_i_4_n_0,MEM_0_reg_bram_5_i_4_n_0,MEM_0_reg_bram_5_i_4_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFF3FFF355)) 
    MEM_0_reg_bram_5_i_1
       (.I0(fbPixelAddrV0_reg[14]),
        .I1(fbPixelAddrV1_reg[14]),
        .I2(fbPixelAddrV1_reg[13]),
        .I3(Q),
        .I4(fbPixelAddrV0_reg[13]),
        .I5(fb_io_in_araddr[15]),
        .O(MEM_0_reg_bram_5_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_0_reg_bram_5_i_2
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_0_reg_bram_5_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_0_reg_bram_5_i_3
       (.I0(REG),
        .I1(fb_io_in_araddr[16]),
        .I2(fb_io_in_araddr[18]),
        .I3(fb_io_in_araddr[15]),
        .I4(fb_io_in_araddr[17]),
        .O(MEM_0_reg_bram_5_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_0_reg_bram_5_i_4
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_0_reg_bram_5_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_5_i_5
       (.I0(fbPixelAddrV1_reg[13]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[13]),
        .O(fb_io_in_araddr[16]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_0_reg_bram_5_i_6
       (.I0(fbPixelAddrV1_reg[14]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[14]),
        .O(fb_io_in_araddr[17]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "20480" *) 
  (* bram_addr_end = "24575" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "20480" *) 
  (* ram_addr_end = "24575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_6
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_5_n_60,MEM_0_reg_bram_5_n_61,MEM_0_reg_bram_5_n_62,MEM_0_reg_bram_5_n_63,MEM_0_reg_bram_5_n_64,MEM_0_reg_bram_5_n_65,MEM_0_reg_bram_5_n_66,MEM_0_reg_bram_5_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_5_n_136,MEM_0_reg_bram_5_n_137,MEM_0_reg_bram_5_n_138,MEM_0_reg_bram_5_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_6_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_6_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_6_n_60,MEM_0_reg_bram_6_n_61,MEM_0_reg_bram_6_n_62,MEM_0_reg_bram_6_n_63,MEM_0_reg_bram_6_n_64,MEM_0_reg_bram_6_n_65,MEM_0_reg_bram_6_n_66,MEM_0_reg_bram_6_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_6_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_6_n_136,MEM_0_reg_bram_6_n_137,MEM_0_reg_bram_6_n_138,MEM_0_reg_bram_6_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_5_n_0),
        .CASINSBITERR(MEM_0_reg_bram_5_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_6_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_6_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_6_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_6_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_6_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_6_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_6_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_6_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_6_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_6_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_6_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_6_i_4_n_0,MEM_0_reg_bram_6_i_4_n_0,MEM_0_reg_bram_6_i_4_n_0,MEM_0_reg_bram_6_i_4_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hCFAACFFFFFFFFFFF)) 
    MEM_0_reg_bram_6_i_1
       (.I0(fbPixelAddrV0_reg[13]),
        .I1(fbPixelAddrV1_reg[13]),
        .I2(fbPixelAddrV1_reg[14]),
        .I3(Q),
        .I4(fbPixelAddrV0_reg[14]),
        .I5(fb_io_in_araddr[15]),
        .O(MEM_0_reg_bram_6_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_6_i_2
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_0_reg_bram_6_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_6_i_3
       (.I0(REG),
        .I1(fb_io_in_araddr[15]),
        .I2(fb_io_in_araddr[17]),
        .I3(fb_io_in_araddr[16]),
        .I4(fb_io_in_araddr[18]),
        .O(MEM_0_reg_bram_6_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_6_i_4
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_0_reg_bram_6_i_4_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "24576" *) 
  (* bram_addr_end = "28671" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "24576" *) 
  (* ram_addr_end = "28671" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_7
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_6_n_60,MEM_0_reg_bram_6_n_61,MEM_0_reg_bram_6_n_62,MEM_0_reg_bram_6_n_63,MEM_0_reg_bram_6_n_64,MEM_0_reg_bram_6_n_65,MEM_0_reg_bram_6_n_66,MEM_0_reg_bram_6_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_6_n_136,MEM_0_reg_bram_6_n_137,MEM_0_reg_bram_6_n_138,MEM_0_reg_bram_6_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_7_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_7_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_7_n_60,MEM_0_reg_bram_7_n_61,MEM_0_reg_bram_7_n_62,MEM_0_reg_bram_7_n_63,MEM_0_reg_bram_7_n_64,MEM_0_reg_bram_7_n_65,MEM_0_reg_bram_7_n_66,MEM_0_reg_bram_7_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_7_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_7_n_136,MEM_0_reg_bram_7_n_137,MEM_0_reg_bram_7_n_138,MEM_0_reg_bram_7_n_139}),
        .CASINDBITERR(MEM_0_reg_bram_6_n_0),
        .CASINSBITERR(MEM_0_reg_bram_6_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_7_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_7_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_7_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_7_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_7_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_7_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_7_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_7_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_7_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_7_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_7_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_7_i_4_n_0,MEM_0_reg_bram_7_i_4_n_0,MEM_0_reg_bram_7_i_4_n_0,MEM_0_reg_bram_7_i_4_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hBABFFAFFBFBFFFFF)) 
    MEM_0_reg_bram_7_i_1
       (.I0(fb_io_in_araddr[15]),
        .I1(fbPixelAddrV1_reg[14]),
        .I2(Q),
        .I3(fbPixelAddrV0_reg[14]),
        .I4(fbPixelAddrV1_reg[13]),
        .I5(fbPixelAddrV0_reg[13]),
        .O(MEM_0_reg_bram_7_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_7_i_2
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_0_reg_bram_7_i_2_n_0));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    MEM_0_reg_bram_7_i_3
       (.I0(REG),
        .I1(fb_io_in_araddr[15]),
        .I2(fbPixelAddrV0_reg[15]),
        .I3(Q),
        .I4(fbPixelAddrV1_reg[15]),
        .I5(MEM_0_reg_bram_7_i_5_n_0),
        .O(MEM_0_reg_bram_7_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_0_reg_bram_7_i_4
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_0_reg_bram_7_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    MEM_0_reg_bram_7_i_5
       (.I0(fbPixelAddrV0_reg[13]),
        .I1(fbPixelAddrV1_reg[13]),
        .I2(fbPixelAddrV0_reg[14]),
        .I3(Q),
        .I4(fbPixelAddrV1_reg[14]),
        .O(MEM_0_reg_bram_7_i_5_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "28672" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "28672" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_8
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_0_reg_bram_7_n_60,MEM_0_reg_bram_7_n_61,MEM_0_reg_bram_7_n_62,MEM_0_reg_bram_7_n_63,MEM_0_reg_bram_7_n_64,MEM_0_reg_bram_7_n_65,MEM_0_reg_bram_7_n_66,MEM_0_reg_bram_7_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_0_reg_bram_7_n_136,MEM_0_reg_bram_7_n_137,MEM_0_reg_bram_7_n_138,MEM_0_reg_bram_7_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_8_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_0_reg_bram_8_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_0_reg_bram_8_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_0_reg_bram_8_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_0_reg_bram_8_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_0_reg_bram_7_n_0),
        .CASINSBITERR(MEM_0_reg_bram_7_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_0_reg_bram_8_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_0_reg_bram_8_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_8_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_8_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_0_reg_bram_8_DOUTBDOUT_UNCONNECTED[31:8],MEM_0_reg_bram_8_n_124,MEM_0_reg_bram_8_n_125,MEM_0_reg_bram_8_n_126,MEM_0_reg_bram_8_n_127,MEM_0_reg_bram_8_n_128,MEM_0_reg_bram_8_n_129,MEM_0_reg_bram_8_n_130,MEM_0_reg_bram_8_n_131}),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_8_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_8_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_8_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_8_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_8_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_8_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_8_i_4_n_0,MEM_0_reg_bram_8_i_4_n_0,MEM_0_reg_bram_8_i_4_n_0,MEM_0_reg_bram_8_i_4_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h757FF5FF7F7FFFFF)) 
    MEM_0_reg_bram_8_i_1
       (.I0(fb_io_in_araddr[15]),
        .I1(fbPixelAddrV1_reg[14]),
        .I2(Q),
        .I3(fbPixelAddrV0_reg[14]),
        .I4(fbPixelAddrV1_reg[13]),
        .I5(fbPixelAddrV0_reg[13]),
        .O(MEM_0_reg_bram_8_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_8_i_2
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[15]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_0_reg_bram_8_i_2_n_0));
  LUT6 #(
    .INIT(64'h02A2000000000000)) 
    MEM_0_reg_bram_8_i_3
       (.I0(REG),
        .I1(fbPixelAddrV0_reg[15]),
        .I2(Q),
        .I3(fbPixelAddrV1_reg[15]),
        .I4(fb_io_in_araddr[15]),
        .I5(MEM_0_reg_bram_7_i_5_n_0),
        .O(MEM_0_reg_bram_8_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_0_reg_bram_8_i_4
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[15]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_0_reg_bram_8_i_4_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_0" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "36863" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "36863" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_0_reg_bram_9
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_0_reg_bram_1_i_3_n_0,MEM_0_reg_bram_1_i_4_n_0,MEM_0_reg_bram_1_i_5_n_0,MEM_0_reg_bram_1_i_6_n_0,MEM_0_reg_bram_1_i_7_n_0,MEM_0_reg_bram_1_i_8_n_0,MEM_0_reg_bram_1_i_9_n_0,MEM_0_reg_bram_1_i_10_n_0,MEM_0_reg_bram_1_i_11_n_0,MEM_0_reg_bram_1_i_12_n_0,MEM_0_reg_bram_1_i_13_n_0,MEM_0_reg_bram_1_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_0_reg_bram_9_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_0_reg_bram_9_CASDOUTB_UNCONNECTED[31:8],MEM_0_reg_bram_9_n_60,MEM_0_reg_bram_9_n_61,MEM_0_reg_bram_9_n_62,MEM_0_reg_bram_9_n_63,MEM_0_reg_bram_9_n_64,MEM_0_reg_bram_9_n_65,MEM_0_reg_bram_9_n_66,MEM_0_reg_bram_9_n_67}),
        .CASDOUTPA(NLW_MEM_0_reg_bram_9_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_0_reg_bram_9_n_136,MEM_0_reg_bram_9_n_137,MEM_0_reg_bram_9_n_138,MEM_0_reg_bram_9_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_0_reg_bram_9_n_0),
        .CASOUTSBITERR(MEM_0_reg_bram_9_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_0_reg_bram_9_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_0_reg_bram_9_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_0_reg_bram_9_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_0_reg_bram_9_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_0_reg_bram_9_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_0_reg_bram_9_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_9_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_9_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_0_reg_bram_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_0_reg_bram_9_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_0_reg_bram_9_i_3_n_0,MEM_0_reg_bram_9_i_3_n_0,MEM_0_reg_bram_9_i_3_n_0,MEM_0_reg_bram_9_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_0_reg_bram_9_i_1
       (.I0(p_17_in),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_0_reg_bram_9_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    MEM_0_reg_bram_9_i_2
       (.I0(REG),
        .I1(fb_io_in_araddr[15]),
        .I2(fb_io_in_araddr[18]),
        .I3(fb_io_in_araddr[16]),
        .I4(fb_io_in_araddr[17]),
        .O(MEM_0_reg_bram_9_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_0_reg_bram_9_i_3
       (.I0(io_in_fb_wstrb[0]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_0_reg_bram_9_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_1
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_1_reg_bram_1_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_1_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_1_n_60,MEM_1_reg_bram_1_n_61,MEM_1_reg_bram_1_n_62,MEM_1_reg_bram_1_n_63,MEM_1_reg_bram_1_n_64,MEM_1_reg_bram_1_n_65,MEM_1_reg_bram_1_n_66,MEM_1_reg_bram_1_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_1_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_1_n_136,MEM_1_reg_bram_1_n_137,MEM_1_reg_bram_1_n_138,MEM_1_reg_bram_1_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_1_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_1_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_1_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_1_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_1_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_1_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_1_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_1_i_13_n_0,MEM_1_reg_bram_1_i_13_n_0,MEM_1_reg_bram_1_i_13_n_0,MEM_1_reg_bram_1_i_13_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "36864" *) 
  (* bram_addr_end = "40959" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "36864" *) 
  (* ram_addr_end = "40959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_10
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_9_n_60,MEM_1_reg_bram_9_n_61,MEM_1_reg_bram_9_n_62,MEM_1_reg_bram_9_n_63,MEM_1_reg_bram_9_n_64,MEM_1_reg_bram_9_n_65,MEM_1_reg_bram_9_n_66,MEM_1_reg_bram_9_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_9_n_136,MEM_1_reg_bram_9_n_137,MEM_1_reg_bram_9_n_138,MEM_1_reg_bram_9_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_10_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_10_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_10_n_60,MEM_1_reg_bram_10_n_61,MEM_1_reg_bram_10_n_62,MEM_1_reg_bram_10_n_63,MEM_1_reg_bram_10_n_64,MEM_1_reg_bram_10_n_65,MEM_1_reg_bram_10_n_66,MEM_1_reg_bram_10_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_10_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_10_n_136,MEM_1_reg_bram_10_n_137,MEM_1_reg_bram_10_n_138,MEM_1_reg_bram_10_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_9_n_0),
        .CASINSBITERR(MEM_1_reg_bram_9_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_10_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_10_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_10_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_10_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_10_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_10_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_10_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_10_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_10_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_10_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_10_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_10_i_1_n_0,MEM_1_reg_bram_10_i_1_n_0,MEM_1_reg_bram_10_i_1_n_0,MEM_1_reg_bram_10_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_1_reg_bram_10_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_1_reg_bram_10_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "40960" *) 
  (* bram_addr_end = "45055" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "40960" *) 
  (* ram_addr_end = "45055" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_11
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_10_n_60,MEM_1_reg_bram_10_n_61,MEM_1_reg_bram_10_n_62,MEM_1_reg_bram_10_n_63,MEM_1_reg_bram_10_n_64,MEM_1_reg_bram_10_n_65,MEM_1_reg_bram_10_n_66,MEM_1_reg_bram_10_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_10_n_136,MEM_1_reg_bram_10_n_137,MEM_1_reg_bram_10_n_138,MEM_1_reg_bram_10_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_11_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_11_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_11_n_60,MEM_1_reg_bram_11_n_61,MEM_1_reg_bram_11_n_62,MEM_1_reg_bram_11_n_63,MEM_1_reg_bram_11_n_64,MEM_1_reg_bram_11_n_65,MEM_1_reg_bram_11_n_66,MEM_1_reg_bram_11_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_11_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_11_n_136,MEM_1_reg_bram_11_n_137,MEM_1_reg_bram_11_n_138,MEM_1_reg_bram_11_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_10_n_0),
        .CASINSBITERR(MEM_1_reg_bram_10_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_11_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_11_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_11_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_11_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_11_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_11_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_11_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_11_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_11_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_11_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_11_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_11_i_1_n_0,MEM_1_reg_bram_11_i_1_n_0,MEM_1_reg_bram_11_i_1_n_0,MEM_1_reg_bram_11_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_1_reg_bram_11_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_1_reg_bram_11_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "45056" *) 
  (* bram_addr_end = "49151" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "45056" *) 
  (* ram_addr_end = "49151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_12
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_11_n_60,MEM_1_reg_bram_11_n_61,MEM_1_reg_bram_11_n_62,MEM_1_reg_bram_11_n_63,MEM_1_reg_bram_11_n_64,MEM_1_reg_bram_11_n_65,MEM_1_reg_bram_11_n_66,MEM_1_reg_bram_11_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_11_n_136,MEM_1_reg_bram_11_n_137,MEM_1_reg_bram_11_n_138,MEM_1_reg_bram_11_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_12_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_12_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_12_n_60,MEM_1_reg_bram_12_n_61,MEM_1_reg_bram_12_n_62,MEM_1_reg_bram_12_n_63,MEM_1_reg_bram_12_n_64,MEM_1_reg_bram_12_n_65,MEM_1_reg_bram_12_n_66,MEM_1_reg_bram_12_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_12_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_12_n_136,MEM_1_reg_bram_12_n_137,MEM_1_reg_bram_12_n_138,MEM_1_reg_bram_12_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_11_n_0),
        .CASINSBITERR(MEM_1_reg_bram_11_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_12_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_12_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_12_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_12_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_12_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_12_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_12_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_12_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_12_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_12_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_12_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_12_i_1_n_0,MEM_1_reg_bram_12_i_1_n_0,MEM_1_reg_bram_12_i_1_n_0,MEM_1_reg_bram_12_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_1_reg_bram_12_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_1_reg_bram_12_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "49152" *) 
  (* bram_addr_end = "53247" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "49152" *) 
  (* ram_addr_end = "53247" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_13
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_12_n_60,MEM_1_reg_bram_12_n_61,MEM_1_reg_bram_12_n_62,MEM_1_reg_bram_12_n_63,MEM_1_reg_bram_12_n_64,MEM_1_reg_bram_12_n_65,MEM_1_reg_bram_12_n_66,MEM_1_reg_bram_12_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_12_n_136,MEM_1_reg_bram_12_n_137,MEM_1_reg_bram_12_n_138,MEM_1_reg_bram_12_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_13_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_13_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_13_n_60,MEM_1_reg_bram_13_n_61,MEM_1_reg_bram_13_n_62,MEM_1_reg_bram_13_n_63,MEM_1_reg_bram_13_n_64,MEM_1_reg_bram_13_n_65,MEM_1_reg_bram_13_n_66,MEM_1_reg_bram_13_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_13_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_13_n_136,MEM_1_reg_bram_13_n_137,MEM_1_reg_bram_13_n_138,MEM_1_reg_bram_13_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_12_n_0),
        .CASINSBITERR(MEM_1_reg_bram_12_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_13_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_13_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_13_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_13_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_13_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_13_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_13_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_13_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_13_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_13_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_13_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_13_i_1_n_0,MEM_1_reg_bram_13_i_1_n_0,MEM_1_reg_bram_13_i_1_n_0,MEM_1_reg_bram_13_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_1_reg_bram_13_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_1_reg_bram_13_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "53248" *) 
  (* bram_addr_end = "57343" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "53248" *) 
  (* ram_addr_end = "57343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_14
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_13_n_60,MEM_1_reg_bram_13_n_61,MEM_1_reg_bram_13_n_62,MEM_1_reg_bram_13_n_63,MEM_1_reg_bram_13_n_64,MEM_1_reg_bram_13_n_65,MEM_1_reg_bram_13_n_66,MEM_1_reg_bram_13_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_13_n_136,MEM_1_reg_bram_13_n_137,MEM_1_reg_bram_13_n_138,MEM_1_reg_bram_13_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_14_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_14_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_14_n_60,MEM_1_reg_bram_14_n_61,MEM_1_reg_bram_14_n_62,MEM_1_reg_bram_14_n_63,MEM_1_reg_bram_14_n_64,MEM_1_reg_bram_14_n_65,MEM_1_reg_bram_14_n_66,MEM_1_reg_bram_14_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_14_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_14_n_136,MEM_1_reg_bram_14_n_137,MEM_1_reg_bram_14_n_138,MEM_1_reg_bram_14_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_13_n_0),
        .CASINSBITERR(MEM_1_reg_bram_13_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_14_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_14_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_14_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_14_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_14_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_14_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_14_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_14_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_14_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_14_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_14_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_14_i_1_n_0,MEM_1_reg_bram_14_i_1_n_0,MEM_1_reg_bram_14_i_1_n_0,MEM_1_reg_bram_14_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_1_reg_bram_14_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_1_reg_bram_14_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "57344" *) 
  (* bram_addr_end = "61439" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "57344" *) 
  (* ram_addr_end = "61439" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_15
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_14_n_60,MEM_1_reg_bram_14_n_61,MEM_1_reg_bram_14_n_62,MEM_1_reg_bram_14_n_63,MEM_1_reg_bram_14_n_64,MEM_1_reg_bram_14_n_65,MEM_1_reg_bram_14_n_66,MEM_1_reg_bram_14_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_14_n_136,MEM_1_reg_bram_14_n_137,MEM_1_reg_bram_14_n_138,MEM_1_reg_bram_14_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_15_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_1_reg_bram_15_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_1_reg_bram_15_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_1_reg_bram_15_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_1_reg_bram_14_n_0),
        .CASINSBITERR(MEM_1_reg_bram_14_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_1_reg_bram_15_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_1_reg_bram_15_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_15_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_15_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_1_reg_bram_15_DOUTBDOUT_UNCONNECTED[31:8],MEM_1_reg_bram_15_n_124,MEM_1_reg_bram_15_n_125,MEM_1_reg_bram_15_n_126,MEM_1_reg_bram_15_n_127,MEM_1_reg_bram_15_n_128,MEM_1_reg_bram_15_n_129,MEM_1_reg_bram_15_n_130,MEM_1_reg_bram_15_n_131}),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_15_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_15_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_15_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_15_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_15_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_15_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_15_i_1_n_0,MEM_1_reg_bram_15_i_1_n_0,MEM_1_reg_bram_15_i_1_n_0,MEM_1_reg_bram_15_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_1_reg_bram_15_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_1_reg_bram_15_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_1
       (.I0(fbPixelAddrV1_reg[11]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[11]),
        .O(MEM_1_reg_bram_1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_10
       (.I0(fbPixelAddrV1_reg[2]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[2]),
        .O(MEM_1_reg_bram_1_i_10_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_11
       (.I0(fbPixelAddrV1_reg[1]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[1]),
        .O(MEM_1_reg_bram_1_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_12
       (.I0(fbPixelAddrV1_reg[0]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[0]),
        .O(MEM_1_reg_bram_1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    MEM_1_reg_bram_1_i_13
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_1_reg_bram_1_i_13_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_2
       (.I0(fbPixelAddrV1_reg[10]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[10]),
        .O(MEM_1_reg_bram_1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_3
       (.I0(fbPixelAddrV1_reg[9]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[9]),
        .O(MEM_1_reg_bram_1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_4
       (.I0(fbPixelAddrV1_reg[8]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[8]),
        .O(MEM_1_reg_bram_1_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_5
       (.I0(fbPixelAddrV1_reg[7]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[7]),
        .O(MEM_1_reg_bram_1_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_6
       (.I0(fbPixelAddrV1_reg[6]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[6]),
        .O(MEM_1_reg_bram_1_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_7
       (.I0(fbPixelAddrV1_reg[5]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[5]),
        .O(MEM_1_reg_bram_1_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_8
       (.I0(fbPixelAddrV1_reg[4]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[4]),
        .O(MEM_1_reg_bram_1_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_1_reg_bram_1_i_9
       (.I0(fbPixelAddrV1_reg[3]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[3]),
        .O(MEM_1_reg_bram_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "4096" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_2
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_1_n_60,MEM_1_reg_bram_1_n_61,MEM_1_reg_bram_1_n_62,MEM_1_reg_bram_1_n_63,MEM_1_reg_bram_1_n_64,MEM_1_reg_bram_1_n_65,MEM_1_reg_bram_1_n_66,MEM_1_reg_bram_1_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_1_n_136,MEM_1_reg_bram_1_n_137,MEM_1_reg_bram_1_n_138,MEM_1_reg_bram_1_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_2_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_2_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_2_n_60,MEM_1_reg_bram_2_n_61,MEM_1_reg_bram_2_n_62,MEM_1_reg_bram_2_n_63,MEM_1_reg_bram_2_n_64,MEM_1_reg_bram_2_n_65,MEM_1_reg_bram_2_n_66,MEM_1_reg_bram_2_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_2_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_2_n_136,MEM_1_reg_bram_2_n_137,MEM_1_reg_bram_2_n_138,MEM_1_reg_bram_2_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_1_n_0),
        .CASINSBITERR(MEM_1_reg_bram_1_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_2_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_2_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_2_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_2_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_2_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_2_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_2_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_2_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_2_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_2_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_2_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_2_i_1_n_0,MEM_1_reg_bram_2_i_1_n_0,MEM_1_reg_bram_2_i_1_n_0,MEM_1_reg_bram_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_1_reg_bram_2_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_1_reg_bram_2_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "8192" *) 
  (* bram_addr_end = "12287" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_3
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_2_n_60,MEM_1_reg_bram_2_n_61,MEM_1_reg_bram_2_n_62,MEM_1_reg_bram_2_n_63,MEM_1_reg_bram_2_n_64,MEM_1_reg_bram_2_n_65,MEM_1_reg_bram_2_n_66,MEM_1_reg_bram_2_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_2_n_136,MEM_1_reg_bram_2_n_137,MEM_1_reg_bram_2_n_138,MEM_1_reg_bram_2_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_3_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_3_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_3_n_60,MEM_1_reg_bram_3_n_61,MEM_1_reg_bram_3_n_62,MEM_1_reg_bram_3_n_63,MEM_1_reg_bram_3_n_64,MEM_1_reg_bram_3_n_65,MEM_1_reg_bram_3_n_66,MEM_1_reg_bram_3_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_3_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_3_n_136,MEM_1_reg_bram_3_n_137,MEM_1_reg_bram_3_n_138,MEM_1_reg_bram_3_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_2_n_0),
        .CASINSBITERR(MEM_1_reg_bram_2_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_3_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_3_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_3_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_3_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_3_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_3_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_3_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_3_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_3_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_3_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_3_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_3_i_1_n_0,MEM_1_reg_bram_3_i_1_n_0,MEM_1_reg_bram_3_i_1_n_0,MEM_1_reg_bram_3_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_1_reg_bram_3_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_1_reg_bram_3_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "12288" *) 
  (* bram_addr_end = "16383" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_4
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_3_n_60,MEM_1_reg_bram_3_n_61,MEM_1_reg_bram_3_n_62,MEM_1_reg_bram_3_n_63,MEM_1_reg_bram_3_n_64,MEM_1_reg_bram_3_n_65,MEM_1_reg_bram_3_n_66,MEM_1_reg_bram_3_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_3_n_136,MEM_1_reg_bram_3_n_137,MEM_1_reg_bram_3_n_138,MEM_1_reg_bram_3_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_4_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_4_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_4_n_60,MEM_1_reg_bram_4_n_61,MEM_1_reg_bram_4_n_62,MEM_1_reg_bram_4_n_63,MEM_1_reg_bram_4_n_64,MEM_1_reg_bram_4_n_65,MEM_1_reg_bram_4_n_66,MEM_1_reg_bram_4_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_4_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_4_n_136,MEM_1_reg_bram_4_n_137,MEM_1_reg_bram_4_n_138,MEM_1_reg_bram_4_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_3_n_0),
        .CASINSBITERR(MEM_1_reg_bram_3_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_4_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_4_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_4_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_4_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_4_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_4_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_4_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_4_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_4_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_4_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_4_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_4_i_1_n_0,MEM_1_reg_bram_4_i_1_n_0,MEM_1_reg_bram_4_i_1_n_0,MEM_1_reg_bram_4_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_1_reg_bram_4_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[13]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_1_reg_bram_4_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "16384" *) 
  (* bram_addr_end = "20479" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "16384" *) 
  (* ram_addr_end = "20479" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_5
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_4_n_60,MEM_1_reg_bram_4_n_61,MEM_1_reg_bram_4_n_62,MEM_1_reg_bram_4_n_63,MEM_1_reg_bram_4_n_64,MEM_1_reg_bram_4_n_65,MEM_1_reg_bram_4_n_66,MEM_1_reg_bram_4_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_4_n_136,MEM_1_reg_bram_4_n_137,MEM_1_reg_bram_4_n_138,MEM_1_reg_bram_4_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_5_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_5_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_5_n_60,MEM_1_reg_bram_5_n_61,MEM_1_reg_bram_5_n_62,MEM_1_reg_bram_5_n_63,MEM_1_reg_bram_5_n_64,MEM_1_reg_bram_5_n_65,MEM_1_reg_bram_5_n_66,MEM_1_reg_bram_5_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_5_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_5_n_136,MEM_1_reg_bram_5_n_137,MEM_1_reg_bram_5_n_138,MEM_1_reg_bram_5_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_4_n_0),
        .CASINSBITERR(MEM_1_reg_bram_4_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_5_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_5_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_5_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_5_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_5_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_5_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_5_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_5_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_5_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_5_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_5_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_5_i_1_n_0,MEM_1_reg_bram_5_i_1_n_0,MEM_1_reg_bram_5_i_1_n_0,MEM_1_reg_bram_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_1_reg_bram_5_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_1_reg_bram_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "20480" *) 
  (* bram_addr_end = "24575" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "20480" *) 
  (* ram_addr_end = "24575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_6
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_5_n_60,MEM_1_reg_bram_5_n_61,MEM_1_reg_bram_5_n_62,MEM_1_reg_bram_5_n_63,MEM_1_reg_bram_5_n_64,MEM_1_reg_bram_5_n_65,MEM_1_reg_bram_5_n_66,MEM_1_reg_bram_5_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_5_n_136,MEM_1_reg_bram_5_n_137,MEM_1_reg_bram_5_n_138,MEM_1_reg_bram_5_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_6_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_6_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_6_n_60,MEM_1_reg_bram_6_n_61,MEM_1_reg_bram_6_n_62,MEM_1_reg_bram_6_n_63,MEM_1_reg_bram_6_n_64,MEM_1_reg_bram_6_n_65,MEM_1_reg_bram_6_n_66,MEM_1_reg_bram_6_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_6_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_6_n_136,MEM_1_reg_bram_6_n_137,MEM_1_reg_bram_6_n_138,MEM_1_reg_bram_6_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_5_n_0),
        .CASINSBITERR(MEM_1_reg_bram_5_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_6_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_6_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_6_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_6_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_6_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_6_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_6_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_6_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_6_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_6_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_6_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_6_i_1_n_0,MEM_1_reg_bram_6_i_1_n_0,MEM_1_reg_bram_6_i_1_n_0,MEM_1_reg_bram_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_1_reg_bram_6_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_1_reg_bram_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "24576" *) 
  (* bram_addr_end = "28671" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "24576" *) 
  (* ram_addr_end = "28671" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_7
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_6_n_60,MEM_1_reg_bram_6_n_61,MEM_1_reg_bram_6_n_62,MEM_1_reg_bram_6_n_63,MEM_1_reg_bram_6_n_64,MEM_1_reg_bram_6_n_65,MEM_1_reg_bram_6_n_66,MEM_1_reg_bram_6_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_6_n_136,MEM_1_reg_bram_6_n_137,MEM_1_reg_bram_6_n_138,MEM_1_reg_bram_6_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_7_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_7_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_7_n_60,MEM_1_reg_bram_7_n_61,MEM_1_reg_bram_7_n_62,MEM_1_reg_bram_7_n_63,MEM_1_reg_bram_7_n_64,MEM_1_reg_bram_7_n_65,MEM_1_reg_bram_7_n_66,MEM_1_reg_bram_7_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_7_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_7_n_136,MEM_1_reg_bram_7_n_137,MEM_1_reg_bram_7_n_138,MEM_1_reg_bram_7_n_139}),
        .CASINDBITERR(MEM_1_reg_bram_6_n_0),
        .CASINSBITERR(MEM_1_reg_bram_6_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_7_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_7_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_7_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_7_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_7_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_7_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_7_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_7_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_7_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_7_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_7_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_7_i_1_n_0,MEM_1_reg_bram_7_i_1_n_0,MEM_1_reg_bram_7_i_1_n_0,MEM_1_reg_bram_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_1_reg_bram_7_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_1_reg_bram_7_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "28672" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "28672" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_8
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_1_reg_bram_7_n_60,MEM_1_reg_bram_7_n_61,MEM_1_reg_bram_7_n_62,MEM_1_reg_bram_7_n_63,MEM_1_reg_bram_7_n_64,MEM_1_reg_bram_7_n_65,MEM_1_reg_bram_7_n_66,MEM_1_reg_bram_7_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_1_reg_bram_7_n_136,MEM_1_reg_bram_7_n_137,MEM_1_reg_bram_7_n_138,MEM_1_reg_bram_7_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_8_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_1_reg_bram_8_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_1_reg_bram_8_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_1_reg_bram_8_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_1_reg_bram_8_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_1_reg_bram_7_n_0),
        .CASINSBITERR(MEM_1_reg_bram_7_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_1_reg_bram_8_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_1_reg_bram_8_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_8_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_8_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_1_reg_bram_8_DOUTBDOUT_UNCONNECTED[31:8],MEM_1_reg_bram_8_n_124,MEM_1_reg_bram_8_n_125,MEM_1_reg_bram_8_n_126,MEM_1_reg_bram_8_n_127,MEM_1_reg_bram_8_n_128,MEM_1_reg_bram_8_n_129,MEM_1_reg_bram_8_n_130,MEM_1_reg_bram_8_n_131}),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_8_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_8_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_8_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_8_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_8_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_8_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_8_i_1_n_0,MEM_1_reg_bram_8_i_1_n_0,MEM_1_reg_bram_8_i_1_n_0,MEM_1_reg_bram_8_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_1_reg_bram_8_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[15]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_1_reg_bram_8_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_1" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "36863" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "36863" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_1_reg_bram_9
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_1_reg_bram_1_i_1_n_0,MEM_1_reg_bram_1_i_2_n_0,MEM_1_reg_bram_1_i_3_n_0,MEM_1_reg_bram_1_i_4_n_0,MEM_1_reg_bram_1_i_5_n_0,MEM_1_reg_bram_1_i_6_n_0,MEM_1_reg_bram_1_i_7_n_0,MEM_1_reg_bram_1_i_8_n_0,MEM_1_reg_bram_1_i_9_n_0,MEM_1_reg_bram_1_i_10_n_0,MEM_1_reg_bram_1_i_11_n_0,MEM_1_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_1_reg_bram_9_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_1_reg_bram_9_CASDOUTB_UNCONNECTED[31:8],MEM_1_reg_bram_9_n_60,MEM_1_reg_bram_9_n_61,MEM_1_reg_bram_9_n_62,MEM_1_reg_bram_9_n_63,MEM_1_reg_bram_9_n_64,MEM_1_reg_bram_9_n_65,MEM_1_reg_bram_9_n_66,MEM_1_reg_bram_9_n_67}),
        .CASDOUTPA(NLW_MEM_1_reg_bram_9_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_1_reg_bram_9_n_136,MEM_1_reg_bram_9_n_137,MEM_1_reg_bram_9_n_138,MEM_1_reg_bram_9_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_1_reg_bram_9_n_0),
        .CASOUTSBITERR(MEM_1_reg_bram_9_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_1_reg_bram_9_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[15:8]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_1_reg_bram_9_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_1_reg_bram_9_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_1_reg_bram_9_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_1_reg_bram_9_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_1_reg_bram_9_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_9_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_9_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_1_reg_bram_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_1_reg_bram_9_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_1_reg_bram_9_i_1_n_0,MEM_1_reg_bram_9_i_1_n_0,MEM_1_reg_bram_9_i_1_n_0,MEM_1_reg_bram_9_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_1_reg_bram_9_i_1
       (.I0(io_in_fb_wstrb[1]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_1_reg_bram_9_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_1
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_2_reg_bram_1_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_1_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_1_n_60,MEM_2_reg_bram_1_n_61,MEM_2_reg_bram_1_n_62,MEM_2_reg_bram_1_n_63,MEM_2_reg_bram_1_n_64,MEM_2_reg_bram_1_n_65,MEM_2_reg_bram_1_n_66,MEM_2_reg_bram_1_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_1_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_1_n_136,MEM_2_reg_bram_1_n_137,MEM_2_reg_bram_1_n_138,MEM_2_reg_bram_1_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_1_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_1_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_1_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_1_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_1_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_1_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_1_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_1_i_13_n_0,MEM_2_reg_bram_1_i_13_n_0,MEM_2_reg_bram_1_i_13_n_0,MEM_2_reg_bram_1_i_13_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "36864" *) 
  (* bram_addr_end = "40959" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "36864" *) 
  (* ram_addr_end = "40959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_10
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_9_n_60,MEM_2_reg_bram_9_n_61,MEM_2_reg_bram_9_n_62,MEM_2_reg_bram_9_n_63,MEM_2_reg_bram_9_n_64,MEM_2_reg_bram_9_n_65,MEM_2_reg_bram_9_n_66,MEM_2_reg_bram_9_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_9_n_136,MEM_2_reg_bram_9_n_137,MEM_2_reg_bram_9_n_138,MEM_2_reg_bram_9_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_10_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_10_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_10_n_60,MEM_2_reg_bram_10_n_61,MEM_2_reg_bram_10_n_62,MEM_2_reg_bram_10_n_63,MEM_2_reg_bram_10_n_64,MEM_2_reg_bram_10_n_65,MEM_2_reg_bram_10_n_66,MEM_2_reg_bram_10_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_10_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_10_n_136,MEM_2_reg_bram_10_n_137,MEM_2_reg_bram_10_n_138,MEM_2_reg_bram_10_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_9_n_0),
        .CASINSBITERR(MEM_2_reg_bram_9_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_10_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_10_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_10_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_10_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_10_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_10_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_10_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_10_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_10_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_10_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_10_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_10_i_1_n_0,MEM_2_reg_bram_10_i_1_n_0,MEM_2_reg_bram_10_i_1_n_0,MEM_2_reg_bram_10_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_2_reg_bram_10_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_2_reg_bram_10_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "40960" *) 
  (* bram_addr_end = "45055" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "40960" *) 
  (* ram_addr_end = "45055" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_11
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_10_n_60,MEM_2_reg_bram_10_n_61,MEM_2_reg_bram_10_n_62,MEM_2_reg_bram_10_n_63,MEM_2_reg_bram_10_n_64,MEM_2_reg_bram_10_n_65,MEM_2_reg_bram_10_n_66,MEM_2_reg_bram_10_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_10_n_136,MEM_2_reg_bram_10_n_137,MEM_2_reg_bram_10_n_138,MEM_2_reg_bram_10_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_11_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_11_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_11_n_60,MEM_2_reg_bram_11_n_61,MEM_2_reg_bram_11_n_62,MEM_2_reg_bram_11_n_63,MEM_2_reg_bram_11_n_64,MEM_2_reg_bram_11_n_65,MEM_2_reg_bram_11_n_66,MEM_2_reg_bram_11_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_11_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_11_n_136,MEM_2_reg_bram_11_n_137,MEM_2_reg_bram_11_n_138,MEM_2_reg_bram_11_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_10_n_0),
        .CASINSBITERR(MEM_2_reg_bram_10_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_11_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_11_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_11_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_11_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_11_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_11_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_11_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_11_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_11_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_11_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_11_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_11_i_1_n_0,MEM_2_reg_bram_11_i_1_n_0,MEM_2_reg_bram_11_i_1_n_0,MEM_2_reg_bram_11_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_2_reg_bram_11_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_2_reg_bram_11_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "45056" *) 
  (* bram_addr_end = "49151" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "45056" *) 
  (* ram_addr_end = "49151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_12
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_11_n_60,MEM_2_reg_bram_11_n_61,MEM_2_reg_bram_11_n_62,MEM_2_reg_bram_11_n_63,MEM_2_reg_bram_11_n_64,MEM_2_reg_bram_11_n_65,MEM_2_reg_bram_11_n_66,MEM_2_reg_bram_11_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_11_n_136,MEM_2_reg_bram_11_n_137,MEM_2_reg_bram_11_n_138,MEM_2_reg_bram_11_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_12_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_12_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_12_n_60,MEM_2_reg_bram_12_n_61,MEM_2_reg_bram_12_n_62,MEM_2_reg_bram_12_n_63,MEM_2_reg_bram_12_n_64,MEM_2_reg_bram_12_n_65,MEM_2_reg_bram_12_n_66,MEM_2_reg_bram_12_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_12_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_12_n_136,MEM_2_reg_bram_12_n_137,MEM_2_reg_bram_12_n_138,MEM_2_reg_bram_12_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_11_n_0),
        .CASINSBITERR(MEM_2_reg_bram_11_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_12_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_12_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_12_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_12_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_12_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_12_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_12_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_12_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_12_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_12_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_12_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_12_i_1_n_0,MEM_2_reg_bram_12_i_1_n_0,MEM_2_reg_bram_12_i_1_n_0,MEM_2_reg_bram_12_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_2_reg_bram_12_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_2_reg_bram_12_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "49152" *) 
  (* bram_addr_end = "53247" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "49152" *) 
  (* ram_addr_end = "53247" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_13
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_12_n_60,MEM_2_reg_bram_12_n_61,MEM_2_reg_bram_12_n_62,MEM_2_reg_bram_12_n_63,MEM_2_reg_bram_12_n_64,MEM_2_reg_bram_12_n_65,MEM_2_reg_bram_12_n_66,MEM_2_reg_bram_12_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_12_n_136,MEM_2_reg_bram_12_n_137,MEM_2_reg_bram_12_n_138,MEM_2_reg_bram_12_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_13_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_13_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_13_n_60,MEM_2_reg_bram_13_n_61,MEM_2_reg_bram_13_n_62,MEM_2_reg_bram_13_n_63,MEM_2_reg_bram_13_n_64,MEM_2_reg_bram_13_n_65,MEM_2_reg_bram_13_n_66,MEM_2_reg_bram_13_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_13_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_13_n_136,MEM_2_reg_bram_13_n_137,MEM_2_reg_bram_13_n_138,MEM_2_reg_bram_13_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_12_n_0),
        .CASINSBITERR(MEM_2_reg_bram_12_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_13_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_13_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_13_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_13_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_13_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_13_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_13_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_13_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_13_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_13_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_13_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_13_i_1_n_0,MEM_2_reg_bram_13_i_1_n_0,MEM_2_reg_bram_13_i_1_n_0,MEM_2_reg_bram_13_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_2_reg_bram_13_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_2_reg_bram_13_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "53248" *) 
  (* bram_addr_end = "57343" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "53248" *) 
  (* ram_addr_end = "57343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_14
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_13_n_60,MEM_2_reg_bram_13_n_61,MEM_2_reg_bram_13_n_62,MEM_2_reg_bram_13_n_63,MEM_2_reg_bram_13_n_64,MEM_2_reg_bram_13_n_65,MEM_2_reg_bram_13_n_66,MEM_2_reg_bram_13_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_13_n_136,MEM_2_reg_bram_13_n_137,MEM_2_reg_bram_13_n_138,MEM_2_reg_bram_13_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_14_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_14_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_14_n_60,MEM_2_reg_bram_14_n_61,MEM_2_reg_bram_14_n_62,MEM_2_reg_bram_14_n_63,MEM_2_reg_bram_14_n_64,MEM_2_reg_bram_14_n_65,MEM_2_reg_bram_14_n_66,MEM_2_reg_bram_14_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_14_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_14_n_136,MEM_2_reg_bram_14_n_137,MEM_2_reg_bram_14_n_138,MEM_2_reg_bram_14_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_13_n_0),
        .CASINSBITERR(MEM_2_reg_bram_13_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_14_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_14_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_14_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_14_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_14_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_14_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_14_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_14_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_14_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_14_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_14_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_14_i_1_n_0,MEM_2_reg_bram_14_i_1_n_0,MEM_2_reg_bram_14_i_1_n_0,MEM_2_reg_bram_14_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_2_reg_bram_14_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_2_reg_bram_14_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "57344" *) 
  (* bram_addr_end = "61439" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "57344" *) 
  (* ram_addr_end = "61439" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_15
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_14_n_60,MEM_2_reg_bram_14_n_61,MEM_2_reg_bram_14_n_62,MEM_2_reg_bram_14_n_63,MEM_2_reg_bram_14_n_64,MEM_2_reg_bram_14_n_65,MEM_2_reg_bram_14_n_66,MEM_2_reg_bram_14_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_14_n_136,MEM_2_reg_bram_14_n_137,MEM_2_reg_bram_14_n_138,MEM_2_reg_bram_14_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_15_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_2_reg_bram_15_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_2_reg_bram_15_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_2_reg_bram_15_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_2_reg_bram_14_n_0),
        .CASINSBITERR(MEM_2_reg_bram_14_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_2_reg_bram_15_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_2_reg_bram_15_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_15_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_15_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_2_reg_bram_15_DOUTBDOUT_UNCONNECTED[31:8],MEM_2_reg_bram_15_n_124,MEM_2_reg_bram_15_n_125,MEM_2_reg_bram_15_n_126,MEM_2_reg_bram_15_n_127,MEM_2_reg_bram_15_n_128,MEM_2_reg_bram_15_n_129,MEM_2_reg_bram_15_n_130,MEM_2_reg_bram_15_n_131}),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_15_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_15_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_15_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_15_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_15_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_15_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_15_i_1_n_0,MEM_2_reg_bram_15_i_1_n_0,MEM_2_reg_bram_15_i_1_n_0,MEM_2_reg_bram_15_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_2_reg_bram_15_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_2_reg_bram_15_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_1
       (.I0(fbPixelAddrV1_reg[11]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[11]),
        .O(MEM_2_reg_bram_1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_10
       (.I0(fbPixelAddrV1_reg[2]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[2]),
        .O(MEM_2_reg_bram_1_i_10_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_11
       (.I0(fbPixelAddrV1_reg[1]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[1]),
        .O(MEM_2_reg_bram_1_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_12
       (.I0(fbPixelAddrV1_reg[0]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[0]),
        .O(MEM_2_reg_bram_1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    MEM_2_reg_bram_1_i_13
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_2_reg_bram_1_i_13_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_2
       (.I0(fbPixelAddrV1_reg[10]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[10]),
        .O(MEM_2_reg_bram_1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_3
       (.I0(fbPixelAddrV1_reg[9]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[9]),
        .O(MEM_2_reg_bram_1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_4
       (.I0(fbPixelAddrV1_reg[8]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[8]),
        .O(MEM_2_reg_bram_1_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_5
       (.I0(fbPixelAddrV1_reg[7]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[7]),
        .O(MEM_2_reg_bram_1_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_6
       (.I0(fbPixelAddrV1_reg[6]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[6]),
        .O(MEM_2_reg_bram_1_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_7
       (.I0(fbPixelAddrV1_reg[5]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[5]),
        .O(MEM_2_reg_bram_1_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_8
       (.I0(fbPixelAddrV1_reg[4]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[4]),
        .O(MEM_2_reg_bram_1_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_bram_1_i_9
       (.I0(fbPixelAddrV1_reg[3]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[3]),
        .O(MEM_2_reg_bram_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "4096" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_2
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_1_n_60,MEM_2_reg_bram_1_n_61,MEM_2_reg_bram_1_n_62,MEM_2_reg_bram_1_n_63,MEM_2_reg_bram_1_n_64,MEM_2_reg_bram_1_n_65,MEM_2_reg_bram_1_n_66,MEM_2_reg_bram_1_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_1_n_136,MEM_2_reg_bram_1_n_137,MEM_2_reg_bram_1_n_138,MEM_2_reg_bram_1_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_2_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_2_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_2_n_60,MEM_2_reg_bram_2_n_61,MEM_2_reg_bram_2_n_62,MEM_2_reg_bram_2_n_63,MEM_2_reg_bram_2_n_64,MEM_2_reg_bram_2_n_65,MEM_2_reg_bram_2_n_66,MEM_2_reg_bram_2_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_2_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_2_n_136,MEM_2_reg_bram_2_n_137,MEM_2_reg_bram_2_n_138,MEM_2_reg_bram_2_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_1_n_0),
        .CASINSBITERR(MEM_2_reg_bram_1_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_2_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_2_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_2_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_2_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_2_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_2_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_2_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_2_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_2_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_2_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_2_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_2_i_1_n_0,MEM_2_reg_bram_2_i_1_n_0,MEM_2_reg_bram_2_i_1_n_0,MEM_2_reg_bram_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_2_reg_bram_2_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_2_reg_bram_2_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "8192" *) 
  (* bram_addr_end = "12287" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_3
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_2_n_60,MEM_2_reg_bram_2_n_61,MEM_2_reg_bram_2_n_62,MEM_2_reg_bram_2_n_63,MEM_2_reg_bram_2_n_64,MEM_2_reg_bram_2_n_65,MEM_2_reg_bram_2_n_66,MEM_2_reg_bram_2_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_2_n_136,MEM_2_reg_bram_2_n_137,MEM_2_reg_bram_2_n_138,MEM_2_reg_bram_2_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_3_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_3_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_3_n_60,MEM_2_reg_bram_3_n_61,MEM_2_reg_bram_3_n_62,MEM_2_reg_bram_3_n_63,MEM_2_reg_bram_3_n_64,MEM_2_reg_bram_3_n_65,MEM_2_reg_bram_3_n_66,MEM_2_reg_bram_3_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_3_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_3_n_136,MEM_2_reg_bram_3_n_137,MEM_2_reg_bram_3_n_138,MEM_2_reg_bram_3_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_2_n_0),
        .CASINSBITERR(MEM_2_reg_bram_2_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_3_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_3_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_3_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_3_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_3_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_3_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_3_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_3_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_3_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_3_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_3_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_3_i_1_n_0,MEM_2_reg_bram_3_i_1_n_0,MEM_2_reg_bram_3_i_1_n_0,MEM_2_reg_bram_3_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_2_reg_bram_3_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_2_reg_bram_3_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "12288" *) 
  (* bram_addr_end = "16383" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_4
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_3_n_60,MEM_2_reg_bram_3_n_61,MEM_2_reg_bram_3_n_62,MEM_2_reg_bram_3_n_63,MEM_2_reg_bram_3_n_64,MEM_2_reg_bram_3_n_65,MEM_2_reg_bram_3_n_66,MEM_2_reg_bram_3_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_3_n_136,MEM_2_reg_bram_3_n_137,MEM_2_reg_bram_3_n_138,MEM_2_reg_bram_3_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_4_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_4_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_4_n_60,MEM_2_reg_bram_4_n_61,MEM_2_reg_bram_4_n_62,MEM_2_reg_bram_4_n_63,MEM_2_reg_bram_4_n_64,MEM_2_reg_bram_4_n_65,MEM_2_reg_bram_4_n_66,MEM_2_reg_bram_4_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_4_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_4_n_136,MEM_2_reg_bram_4_n_137,MEM_2_reg_bram_4_n_138,MEM_2_reg_bram_4_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_3_n_0),
        .CASINSBITERR(MEM_2_reg_bram_3_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_4_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_4_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_4_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_4_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_4_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_4_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_4_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_4_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_4_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_4_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_4_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_4_i_1_n_0,MEM_2_reg_bram_4_i_1_n_0,MEM_2_reg_bram_4_i_1_n_0,MEM_2_reg_bram_4_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_2_reg_bram_4_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[13]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_2_reg_bram_4_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "16384" *) 
  (* bram_addr_end = "20479" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "16384" *) 
  (* ram_addr_end = "20479" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_5
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_4_n_60,MEM_2_reg_bram_4_n_61,MEM_2_reg_bram_4_n_62,MEM_2_reg_bram_4_n_63,MEM_2_reg_bram_4_n_64,MEM_2_reg_bram_4_n_65,MEM_2_reg_bram_4_n_66,MEM_2_reg_bram_4_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_4_n_136,MEM_2_reg_bram_4_n_137,MEM_2_reg_bram_4_n_138,MEM_2_reg_bram_4_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_5_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_5_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_5_n_60,MEM_2_reg_bram_5_n_61,MEM_2_reg_bram_5_n_62,MEM_2_reg_bram_5_n_63,MEM_2_reg_bram_5_n_64,MEM_2_reg_bram_5_n_65,MEM_2_reg_bram_5_n_66,MEM_2_reg_bram_5_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_5_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_5_n_136,MEM_2_reg_bram_5_n_137,MEM_2_reg_bram_5_n_138,MEM_2_reg_bram_5_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_4_n_0),
        .CASINSBITERR(MEM_2_reg_bram_4_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_5_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_5_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_5_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_5_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_5_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_5_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_5_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_5_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_5_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_5_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_5_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_5_i_1_n_0,MEM_2_reg_bram_5_i_1_n_0,MEM_2_reg_bram_5_i_1_n_0,MEM_2_reg_bram_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_2_reg_bram_5_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_2_reg_bram_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "20480" *) 
  (* bram_addr_end = "24575" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "20480" *) 
  (* ram_addr_end = "24575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_6
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_5_n_60,MEM_2_reg_bram_5_n_61,MEM_2_reg_bram_5_n_62,MEM_2_reg_bram_5_n_63,MEM_2_reg_bram_5_n_64,MEM_2_reg_bram_5_n_65,MEM_2_reg_bram_5_n_66,MEM_2_reg_bram_5_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_5_n_136,MEM_2_reg_bram_5_n_137,MEM_2_reg_bram_5_n_138,MEM_2_reg_bram_5_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_6_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_6_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_6_n_60,MEM_2_reg_bram_6_n_61,MEM_2_reg_bram_6_n_62,MEM_2_reg_bram_6_n_63,MEM_2_reg_bram_6_n_64,MEM_2_reg_bram_6_n_65,MEM_2_reg_bram_6_n_66,MEM_2_reg_bram_6_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_6_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_6_n_136,MEM_2_reg_bram_6_n_137,MEM_2_reg_bram_6_n_138,MEM_2_reg_bram_6_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_5_n_0),
        .CASINSBITERR(MEM_2_reg_bram_5_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_6_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_6_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_6_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_6_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_6_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_6_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_6_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_6_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_6_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_6_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_6_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_6_i_1_n_0,MEM_2_reg_bram_6_i_1_n_0,MEM_2_reg_bram_6_i_1_n_0,MEM_2_reg_bram_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_2_reg_bram_6_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_2_reg_bram_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "24576" *) 
  (* bram_addr_end = "28671" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "24576" *) 
  (* ram_addr_end = "28671" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_7
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_6_n_60,MEM_2_reg_bram_6_n_61,MEM_2_reg_bram_6_n_62,MEM_2_reg_bram_6_n_63,MEM_2_reg_bram_6_n_64,MEM_2_reg_bram_6_n_65,MEM_2_reg_bram_6_n_66,MEM_2_reg_bram_6_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_6_n_136,MEM_2_reg_bram_6_n_137,MEM_2_reg_bram_6_n_138,MEM_2_reg_bram_6_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_7_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_7_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_7_n_60,MEM_2_reg_bram_7_n_61,MEM_2_reg_bram_7_n_62,MEM_2_reg_bram_7_n_63,MEM_2_reg_bram_7_n_64,MEM_2_reg_bram_7_n_65,MEM_2_reg_bram_7_n_66,MEM_2_reg_bram_7_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_7_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_7_n_136,MEM_2_reg_bram_7_n_137,MEM_2_reg_bram_7_n_138,MEM_2_reg_bram_7_n_139}),
        .CASINDBITERR(MEM_2_reg_bram_6_n_0),
        .CASINSBITERR(MEM_2_reg_bram_6_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_7_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_7_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_7_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_7_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_7_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_7_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_7_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_7_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_7_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_7_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_7_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_7_i_1_n_0,MEM_2_reg_bram_7_i_1_n_0,MEM_2_reg_bram_7_i_1_n_0,MEM_2_reg_bram_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_2_reg_bram_7_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_2_reg_bram_7_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "28672" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "28672" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_8
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_2_reg_bram_7_n_60,MEM_2_reg_bram_7_n_61,MEM_2_reg_bram_7_n_62,MEM_2_reg_bram_7_n_63,MEM_2_reg_bram_7_n_64,MEM_2_reg_bram_7_n_65,MEM_2_reg_bram_7_n_66,MEM_2_reg_bram_7_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_2_reg_bram_7_n_136,MEM_2_reg_bram_7_n_137,MEM_2_reg_bram_7_n_138,MEM_2_reg_bram_7_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_8_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_2_reg_bram_8_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_2_reg_bram_8_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_2_reg_bram_8_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_2_reg_bram_8_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_2_reg_bram_7_n_0),
        .CASINSBITERR(MEM_2_reg_bram_7_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_2_reg_bram_8_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_2_reg_bram_8_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_8_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_8_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_2_reg_bram_8_DOUTBDOUT_UNCONNECTED[31:8],MEM_2_reg_bram_8_n_124,MEM_2_reg_bram_8_n_125,MEM_2_reg_bram_8_n_126,MEM_2_reg_bram_8_n_127,MEM_2_reg_bram_8_n_128,MEM_2_reg_bram_8_n_129,MEM_2_reg_bram_8_n_130,MEM_2_reg_bram_8_n_131}),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_8_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_8_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_8_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_8_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_8_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_8_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_8_i_1_n_0,MEM_2_reg_bram_8_i_1_n_0,MEM_2_reg_bram_8_i_1_n_0,MEM_2_reg_bram_8_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_2_reg_bram_8_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[15]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_2_reg_bram_8_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_2" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "36863" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "36863" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_2_reg_bram_9
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_2_reg_bram_1_i_1_n_0,MEM_2_reg_bram_1_i_2_n_0,MEM_2_reg_bram_1_i_3_n_0,MEM_2_reg_bram_1_i_4_n_0,MEM_2_reg_bram_1_i_5_n_0,MEM_2_reg_bram_1_i_6_n_0,MEM_2_reg_bram_1_i_7_n_0,MEM_2_reg_bram_1_i_8_n_0,MEM_2_reg_bram_1_i_9_n_0,MEM_2_reg_bram_1_i_10_n_0,MEM_2_reg_bram_1_i_11_n_0,MEM_2_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_2_reg_bram_9_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_2_reg_bram_9_CASDOUTB_UNCONNECTED[31:8],MEM_2_reg_bram_9_n_60,MEM_2_reg_bram_9_n_61,MEM_2_reg_bram_9_n_62,MEM_2_reg_bram_9_n_63,MEM_2_reg_bram_9_n_64,MEM_2_reg_bram_9_n_65,MEM_2_reg_bram_9_n_66,MEM_2_reg_bram_9_n_67}),
        .CASDOUTPA(NLW_MEM_2_reg_bram_9_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_2_reg_bram_9_n_136,MEM_2_reg_bram_9_n_137,MEM_2_reg_bram_9_n_138,MEM_2_reg_bram_9_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_2_reg_bram_9_n_0),
        .CASOUTSBITERR(MEM_2_reg_bram_9_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_2_reg_bram_9_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[23:16]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_2_reg_bram_9_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_2_reg_bram_9_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_2_reg_bram_9_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_2_reg_bram_9_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_2_reg_bram_9_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_9_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_9_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_2_reg_bram_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_2_reg_bram_9_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_2_reg_bram_9_i_1_n_0,MEM_2_reg_bram_9_i_1_n_0,MEM_2_reg_bram_9_i_1_n_0,MEM_2_reg_bram_9_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_2_reg_bram_9_i_1
       (.I0(io_in_fb_wstrb[2]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_2_reg_bram_9_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_2_reg_mux_sel_0_i_1
       (.I0(fbPixelAddrV1_reg[15]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[15]),
        .O(fb_io_in_araddr[18]));
  FDRE MEM_2_reg_mux_sel_reg_0
       (.C(clock),
        .CE(REG),
        .D(fb_io_in_araddr[18]),
        .Q(MEM_2_reg_mux_sel_reg_0_n_0),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_1
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_4_reg_bram_1_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_1_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_1_n_60,MEM_4_reg_bram_1_n_61,MEM_4_reg_bram_1_n_62,MEM_4_reg_bram_1_n_63,MEM_4_reg_bram_1_n_64,MEM_4_reg_bram_1_n_65,MEM_4_reg_bram_1_n_66,MEM_4_reg_bram_1_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_1_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_1_n_136,MEM_4_reg_bram_1_n_137,MEM_4_reg_bram_1_n_138,MEM_4_reg_bram_1_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_1_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_1_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_1_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_1_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_1_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_1_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_1_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_1_i_13_n_0,MEM_4_reg_bram_1_i_13_n_0,MEM_4_reg_bram_1_i_13_n_0,MEM_4_reg_bram_1_i_13_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "36864" *) 
  (* bram_addr_end = "40959" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "36864" *) 
  (* ram_addr_end = "40959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_10
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_9_n_60,MEM_4_reg_bram_9_n_61,MEM_4_reg_bram_9_n_62,MEM_4_reg_bram_9_n_63,MEM_4_reg_bram_9_n_64,MEM_4_reg_bram_9_n_65,MEM_4_reg_bram_9_n_66,MEM_4_reg_bram_9_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_9_n_136,MEM_4_reg_bram_9_n_137,MEM_4_reg_bram_9_n_138,MEM_4_reg_bram_9_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_10_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_10_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_10_n_60,MEM_4_reg_bram_10_n_61,MEM_4_reg_bram_10_n_62,MEM_4_reg_bram_10_n_63,MEM_4_reg_bram_10_n_64,MEM_4_reg_bram_10_n_65,MEM_4_reg_bram_10_n_66,MEM_4_reg_bram_10_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_10_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_10_n_136,MEM_4_reg_bram_10_n_137,MEM_4_reg_bram_10_n_138,MEM_4_reg_bram_10_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_9_n_0),
        .CASINSBITERR(MEM_4_reg_bram_9_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_10_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_10_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_10_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_10_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_10_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_10_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_10_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_10_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_10_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_10_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_10_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_10_i_1_n_0,MEM_4_reg_bram_10_i_1_n_0,MEM_4_reg_bram_10_i_1_n_0,MEM_4_reg_bram_10_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_4_reg_bram_10_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_4_reg_bram_10_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "40960" *) 
  (* bram_addr_end = "45055" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "40960" *) 
  (* ram_addr_end = "45055" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_11
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_10_n_60,MEM_4_reg_bram_10_n_61,MEM_4_reg_bram_10_n_62,MEM_4_reg_bram_10_n_63,MEM_4_reg_bram_10_n_64,MEM_4_reg_bram_10_n_65,MEM_4_reg_bram_10_n_66,MEM_4_reg_bram_10_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_10_n_136,MEM_4_reg_bram_10_n_137,MEM_4_reg_bram_10_n_138,MEM_4_reg_bram_10_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_11_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_11_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_11_n_60,MEM_4_reg_bram_11_n_61,MEM_4_reg_bram_11_n_62,MEM_4_reg_bram_11_n_63,MEM_4_reg_bram_11_n_64,MEM_4_reg_bram_11_n_65,MEM_4_reg_bram_11_n_66,MEM_4_reg_bram_11_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_11_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_11_n_136,MEM_4_reg_bram_11_n_137,MEM_4_reg_bram_11_n_138,MEM_4_reg_bram_11_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_10_n_0),
        .CASINSBITERR(MEM_4_reg_bram_10_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_11_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_11_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_11_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_11_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_11_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_11_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_11_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_11_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_11_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_11_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_11_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_11_i_1_n_0,MEM_4_reg_bram_11_i_1_n_0,MEM_4_reg_bram_11_i_1_n_0,MEM_4_reg_bram_11_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_4_reg_bram_11_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_4_reg_bram_11_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "45056" *) 
  (* bram_addr_end = "49151" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "45056" *) 
  (* ram_addr_end = "49151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_12
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_11_n_60,MEM_4_reg_bram_11_n_61,MEM_4_reg_bram_11_n_62,MEM_4_reg_bram_11_n_63,MEM_4_reg_bram_11_n_64,MEM_4_reg_bram_11_n_65,MEM_4_reg_bram_11_n_66,MEM_4_reg_bram_11_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_11_n_136,MEM_4_reg_bram_11_n_137,MEM_4_reg_bram_11_n_138,MEM_4_reg_bram_11_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_12_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_12_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_12_n_60,MEM_4_reg_bram_12_n_61,MEM_4_reg_bram_12_n_62,MEM_4_reg_bram_12_n_63,MEM_4_reg_bram_12_n_64,MEM_4_reg_bram_12_n_65,MEM_4_reg_bram_12_n_66,MEM_4_reg_bram_12_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_12_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_12_n_136,MEM_4_reg_bram_12_n_137,MEM_4_reg_bram_12_n_138,MEM_4_reg_bram_12_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_11_n_0),
        .CASINSBITERR(MEM_4_reg_bram_11_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_12_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_12_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_12_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_12_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_12_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_12_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_12_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_12_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_12_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_12_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_12_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_12_i_1_n_0,MEM_4_reg_bram_12_i_1_n_0,MEM_4_reg_bram_12_i_1_n_0,MEM_4_reg_bram_12_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_4_reg_bram_12_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_4_reg_bram_12_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "49152" *) 
  (* bram_addr_end = "53247" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "49152" *) 
  (* ram_addr_end = "53247" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_13
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_12_n_60,MEM_4_reg_bram_12_n_61,MEM_4_reg_bram_12_n_62,MEM_4_reg_bram_12_n_63,MEM_4_reg_bram_12_n_64,MEM_4_reg_bram_12_n_65,MEM_4_reg_bram_12_n_66,MEM_4_reg_bram_12_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_12_n_136,MEM_4_reg_bram_12_n_137,MEM_4_reg_bram_12_n_138,MEM_4_reg_bram_12_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_13_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_13_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_13_n_60,MEM_4_reg_bram_13_n_61,MEM_4_reg_bram_13_n_62,MEM_4_reg_bram_13_n_63,MEM_4_reg_bram_13_n_64,MEM_4_reg_bram_13_n_65,MEM_4_reg_bram_13_n_66,MEM_4_reg_bram_13_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_13_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_13_n_136,MEM_4_reg_bram_13_n_137,MEM_4_reg_bram_13_n_138,MEM_4_reg_bram_13_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_12_n_0),
        .CASINSBITERR(MEM_4_reg_bram_12_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_13_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_13_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_13_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_13_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_13_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_13_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_13_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_13_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_13_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_13_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_13_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_13_i_1_n_0,MEM_4_reg_bram_13_i_1_n_0,MEM_4_reg_bram_13_i_1_n_0,MEM_4_reg_bram_13_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_4_reg_bram_13_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_4_reg_bram_13_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "53248" *) 
  (* bram_addr_end = "57343" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "53248" *) 
  (* ram_addr_end = "57343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_14
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_13_n_60,MEM_4_reg_bram_13_n_61,MEM_4_reg_bram_13_n_62,MEM_4_reg_bram_13_n_63,MEM_4_reg_bram_13_n_64,MEM_4_reg_bram_13_n_65,MEM_4_reg_bram_13_n_66,MEM_4_reg_bram_13_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_13_n_136,MEM_4_reg_bram_13_n_137,MEM_4_reg_bram_13_n_138,MEM_4_reg_bram_13_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_14_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_14_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_14_n_60,MEM_4_reg_bram_14_n_61,MEM_4_reg_bram_14_n_62,MEM_4_reg_bram_14_n_63,MEM_4_reg_bram_14_n_64,MEM_4_reg_bram_14_n_65,MEM_4_reg_bram_14_n_66,MEM_4_reg_bram_14_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_14_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_14_n_136,MEM_4_reg_bram_14_n_137,MEM_4_reg_bram_14_n_138,MEM_4_reg_bram_14_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_13_n_0),
        .CASINSBITERR(MEM_4_reg_bram_13_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_14_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_14_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_14_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_14_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_14_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_14_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_14_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_14_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_14_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_14_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_14_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_14_i_1_n_0,MEM_4_reg_bram_14_i_1_n_0,MEM_4_reg_bram_14_i_1_n_0,MEM_4_reg_bram_14_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_4_reg_bram_14_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_4_reg_bram_14_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "57344" *) 
  (* bram_addr_end = "61439" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "57344" *) 
  (* ram_addr_end = "61439" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_15
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_14_n_60,MEM_4_reg_bram_14_n_61,MEM_4_reg_bram_14_n_62,MEM_4_reg_bram_14_n_63,MEM_4_reg_bram_14_n_64,MEM_4_reg_bram_14_n_65,MEM_4_reg_bram_14_n_66,MEM_4_reg_bram_14_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_14_n_136,MEM_4_reg_bram_14_n_137,MEM_4_reg_bram_14_n_138,MEM_4_reg_bram_14_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_15_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_4_reg_bram_15_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_4_reg_bram_15_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_4_reg_bram_15_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_4_reg_bram_14_n_0),
        .CASINSBITERR(MEM_4_reg_bram_14_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_4_reg_bram_15_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_4_reg_bram_15_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_15_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_15_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_4_reg_bram_15_DOUTBDOUT_UNCONNECTED[31:8],MEM_4_reg_bram_15_n_124,MEM_4_reg_bram_15_n_125,MEM_4_reg_bram_15_n_126,MEM_4_reg_bram_15_n_127,MEM_4_reg_bram_15_n_128,MEM_4_reg_bram_15_n_129,MEM_4_reg_bram_15_n_130,MEM_4_reg_bram_15_n_131}),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_15_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_15_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_15_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_15_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_15_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_15_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_15_i_1_n_0,MEM_4_reg_bram_15_i_1_n_0,MEM_4_reg_bram_15_i_1_n_0,MEM_4_reg_bram_15_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_4_reg_bram_15_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_4_reg_bram_15_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_1
       (.I0(fbPixelAddrV1_reg[11]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[11]),
        .O(MEM_4_reg_bram_1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_10
       (.I0(fbPixelAddrV1_reg[2]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[2]),
        .O(MEM_4_reg_bram_1_i_10_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_11
       (.I0(fbPixelAddrV1_reg[1]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[1]),
        .O(MEM_4_reg_bram_1_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_12
       (.I0(fbPixelAddrV1_reg[0]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[0]),
        .O(MEM_4_reg_bram_1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    MEM_4_reg_bram_1_i_13
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_4_reg_bram_1_i_13_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_2
       (.I0(fbPixelAddrV1_reg[10]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[10]),
        .O(MEM_4_reg_bram_1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_3
       (.I0(fbPixelAddrV1_reg[9]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[9]),
        .O(MEM_4_reg_bram_1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_4
       (.I0(fbPixelAddrV1_reg[8]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[8]),
        .O(MEM_4_reg_bram_1_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_5
       (.I0(fbPixelAddrV1_reg[7]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[7]),
        .O(MEM_4_reg_bram_1_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_6
       (.I0(fbPixelAddrV1_reg[6]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[6]),
        .O(MEM_4_reg_bram_1_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_7
       (.I0(fbPixelAddrV1_reg[5]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[5]),
        .O(MEM_4_reg_bram_1_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_8
       (.I0(fbPixelAddrV1_reg[4]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[4]),
        .O(MEM_4_reg_bram_1_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_4_reg_bram_1_i_9
       (.I0(fbPixelAddrV1_reg[3]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[3]),
        .O(MEM_4_reg_bram_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "4096" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_2
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_1_n_60,MEM_4_reg_bram_1_n_61,MEM_4_reg_bram_1_n_62,MEM_4_reg_bram_1_n_63,MEM_4_reg_bram_1_n_64,MEM_4_reg_bram_1_n_65,MEM_4_reg_bram_1_n_66,MEM_4_reg_bram_1_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_1_n_136,MEM_4_reg_bram_1_n_137,MEM_4_reg_bram_1_n_138,MEM_4_reg_bram_1_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_2_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_2_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_2_n_60,MEM_4_reg_bram_2_n_61,MEM_4_reg_bram_2_n_62,MEM_4_reg_bram_2_n_63,MEM_4_reg_bram_2_n_64,MEM_4_reg_bram_2_n_65,MEM_4_reg_bram_2_n_66,MEM_4_reg_bram_2_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_2_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_2_n_136,MEM_4_reg_bram_2_n_137,MEM_4_reg_bram_2_n_138,MEM_4_reg_bram_2_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_1_n_0),
        .CASINSBITERR(MEM_4_reg_bram_1_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_2_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_2_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_2_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_2_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_2_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_2_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_2_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_2_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_2_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_2_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_2_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_2_i_1_n_0,MEM_4_reg_bram_2_i_1_n_0,MEM_4_reg_bram_2_i_1_n_0,MEM_4_reg_bram_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_4_reg_bram_2_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_4_reg_bram_2_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "8192" *) 
  (* bram_addr_end = "12287" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_3
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_2_n_60,MEM_4_reg_bram_2_n_61,MEM_4_reg_bram_2_n_62,MEM_4_reg_bram_2_n_63,MEM_4_reg_bram_2_n_64,MEM_4_reg_bram_2_n_65,MEM_4_reg_bram_2_n_66,MEM_4_reg_bram_2_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_2_n_136,MEM_4_reg_bram_2_n_137,MEM_4_reg_bram_2_n_138,MEM_4_reg_bram_2_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_3_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_3_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_3_n_60,MEM_4_reg_bram_3_n_61,MEM_4_reg_bram_3_n_62,MEM_4_reg_bram_3_n_63,MEM_4_reg_bram_3_n_64,MEM_4_reg_bram_3_n_65,MEM_4_reg_bram_3_n_66,MEM_4_reg_bram_3_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_3_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_3_n_136,MEM_4_reg_bram_3_n_137,MEM_4_reg_bram_3_n_138,MEM_4_reg_bram_3_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_2_n_0),
        .CASINSBITERR(MEM_4_reg_bram_2_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_3_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_3_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_3_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_3_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_3_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_3_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_3_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_3_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_3_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_3_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_3_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_3_i_1_n_0,MEM_4_reg_bram_3_i_1_n_0,MEM_4_reg_bram_3_i_1_n_0,MEM_4_reg_bram_3_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_4_reg_bram_3_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_4_reg_bram_3_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "12288" *) 
  (* bram_addr_end = "16383" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_4
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_3_n_60,MEM_4_reg_bram_3_n_61,MEM_4_reg_bram_3_n_62,MEM_4_reg_bram_3_n_63,MEM_4_reg_bram_3_n_64,MEM_4_reg_bram_3_n_65,MEM_4_reg_bram_3_n_66,MEM_4_reg_bram_3_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_3_n_136,MEM_4_reg_bram_3_n_137,MEM_4_reg_bram_3_n_138,MEM_4_reg_bram_3_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_4_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_4_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_4_n_60,MEM_4_reg_bram_4_n_61,MEM_4_reg_bram_4_n_62,MEM_4_reg_bram_4_n_63,MEM_4_reg_bram_4_n_64,MEM_4_reg_bram_4_n_65,MEM_4_reg_bram_4_n_66,MEM_4_reg_bram_4_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_4_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_4_n_136,MEM_4_reg_bram_4_n_137,MEM_4_reg_bram_4_n_138,MEM_4_reg_bram_4_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_3_n_0),
        .CASINSBITERR(MEM_4_reg_bram_3_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_4_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_4_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_4_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_4_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_4_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_4_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_4_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_4_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_4_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_4_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_4_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_4_i_1_n_0,MEM_4_reg_bram_4_i_1_n_0,MEM_4_reg_bram_4_i_1_n_0,MEM_4_reg_bram_4_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_4_reg_bram_4_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[13]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_4_reg_bram_4_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "16384" *) 
  (* bram_addr_end = "20479" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "16384" *) 
  (* ram_addr_end = "20479" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_5
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_4_n_60,MEM_4_reg_bram_4_n_61,MEM_4_reg_bram_4_n_62,MEM_4_reg_bram_4_n_63,MEM_4_reg_bram_4_n_64,MEM_4_reg_bram_4_n_65,MEM_4_reg_bram_4_n_66,MEM_4_reg_bram_4_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_4_n_136,MEM_4_reg_bram_4_n_137,MEM_4_reg_bram_4_n_138,MEM_4_reg_bram_4_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_5_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_5_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_5_n_60,MEM_4_reg_bram_5_n_61,MEM_4_reg_bram_5_n_62,MEM_4_reg_bram_5_n_63,MEM_4_reg_bram_5_n_64,MEM_4_reg_bram_5_n_65,MEM_4_reg_bram_5_n_66,MEM_4_reg_bram_5_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_5_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_5_n_136,MEM_4_reg_bram_5_n_137,MEM_4_reg_bram_5_n_138,MEM_4_reg_bram_5_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_4_n_0),
        .CASINSBITERR(MEM_4_reg_bram_4_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_5_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_5_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_5_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_5_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_5_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_5_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_5_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_5_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_5_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_5_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_5_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_5_i_1_n_0,MEM_4_reg_bram_5_i_1_n_0,MEM_4_reg_bram_5_i_1_n_0,MEM_4_reg_bram_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_4_reg_bram_5_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_4_reg_bram_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "20480" *) 
  (* bram_addr_end = "24575" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "20480" *) 
  (* ram_addr_end = "24575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_6
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_5_n_60,MEM_4_reg_bram_5_n_61,MEM_4_reg_bram_5_n_62,MEM_4_reg_bram_5_n_63,MEM_4_reg_bram_5_n_64,MEM_4_reg_bram_5_n_65,MEM_4_reg_bram_5_n_66,MEM_4_reg_bram_5_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_5_n_136,MEM_4_reg_bram_5_n_137,MEM_4_reg_bram_5_n_138,MEM_4_reg_bram_5_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_6_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_6_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_6_n_60,MEM_4_reg_bram_6_n_61,MEM_4_reg_bram_6_n_62,MEM_4_reg_bram_6_n_63,MEM_4_reg_bram_6_n_64,MEM_4_reg_bram_6_n_65,MEM_4_reg_bram_6_n_66,MEM_4_reg_bram_6_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_6_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_6_n_136,MEM_4_reg_bram_6_n_137,MEM_4_reg_bram_6_n_138,MEM_4_reg_bram_6_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_5_n_0),
        .CASINSBITERR(MEM_4_reg_bram_5_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_6_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_6_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_6_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_6_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_6_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_6_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_6_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_6_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_6_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_6_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_6_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_6_i_1_n_0,MEM_4_reg_bram_6_i_1_n_0,MEM_4_reg_bram_6_i_1_n_0,MEM_4_reg_bram_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_4_reg_bram_6_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_4_reg_bram_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "24576" *) 
  (* bram_addr_end = "28671" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "24576" *) 
  (* ram_addr_end = "28671" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_7
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_6_n_60,MEM_4_reg_bram_6_n_61,MEM_4_reg_bram_6_n_62,MEM_4_reg_bram_6_n_63,MEM_4_reg_bram_6_n_64,MEM_4_reg_bram_6_n_65,MEM_4_reg_bram_6_n_66,MEM_4_reg_bram_6_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_6_n_136,MEM_4_reg_bram_6_n_137,MEM_4_reg_bram_6_n_138,MEM_4_reg_bram_6_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_7_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_7_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_7_n_60,MEM_4_reg_bram_7_n_61,MEM_4_reg_bram_7_n_62,MEM_4_reg_bram_7_n_63,MEM_4_reg_bram_7_n_64,MEM_4_reg_bram_7_n_65,MEM_4_reg_bram_7_n_66,MEM_4_reg_bram_7_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_7_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_7_n_136,MEM_4_reg_bram_7_n_137,MEM_4_reg_bram_7_n_138,MEM_4_reg_bram_7_n_139}),
        .CASINDBITERR(MEM_4_reg_bram_6_n_0),
        .CASINSBITERR(MEM_4_reg_bram_6_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_7_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_7_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_7_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_7_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_7_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_7_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_7_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_7_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_7_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_7_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_7_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_7_i_1_n_0,MEM_4_reg_bram_7_i_1_n_0,MEM_4_reg_bram_7_i_1_n_0,MEM_4_reg_bram_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_4_reg_bram_7_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_4_reg_bram_7_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "28672" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "28672" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_8
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_4_reg_bram_7_n_60,MEM_4_reg_bram_7_n_61,MEM_4_reg_bram_7_n_62,MEM_4_reg_bram_7_n_63,MEM_4_reg_bram_7_n_64,MEM_4_reg_bram_7_n_65,MEM_4_reg_bram_7_n_66,MEM_4_reg_bram_7_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_4_reg_bram_7_n_136,MEM_4_reg_bram_7_n_137,MEM_4_reg_bram_7_n_138,MEM_4_reg_bram_7_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_8_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_4_reg_bram_8_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_4_reg_bram_8_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_4_reg_bram_8_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_4_reg_bram_8_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_4_reg_bram_7_n_0),
        .CASINSBITERR(MEM_4_reg_bram_7_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_4_reg_bram_8_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_4_reg_bram_8_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_8_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_8_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_4_reg_bram_8_DOUTBDOUT_UNCONNECTED[31:8],MEM_4_reg_bram_8_n_124,MEM_4_reg_bram_8_n_125,MEM_4_reg_bram_8_n_126,MEM_4_reg_bram_8_n_127,MEM_4_reg_bram_8_n_128,MEM_4_reg_bram_8_n_129,MEM_4_reg_bram_8_n_130,MEM_4_reg_bram_8_n_131}),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_8_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_8_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_8_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_8_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_8_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_8_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_8_i_1_n_0,MEM_4_reg_bram_8_i_1_n_0,MEM_4_reg_bram_8_i_1_n_0,MEM_4_reg_bram_8_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_4_reg_bram_8_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[15]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_4_reg_bram_8_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_4" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "36863" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "36863" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_4_reg_bram_9
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_4_reg_bram_1_i_1_n_0,MEM_4_reg_bram_1_i_2_n_0,MEM_4_reg_bram_1_i_3_n_0,MEM_4_reg_bram_1_i_4_n_0,MEM_4_reg_bram_1_i_5_n_0,MEM_4_reg_bram_1_i_6_n_0,MEM_4_reg_bram_1_i_7_n_0,MEM_4_reg_bram_1_i_8_n_0,MEM_4_reg_bram_1_i_9_n_0,MEM_4_reg_bram_1_i_10_n_0,MEM_4_reg_bram_1_i_11_n_0,MEM_4_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_4_reg_bram_9_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_4_reg_bram_9_CASDOUTB_UNCONNECTED[31:8],MEM_4_reg_bram_9_n_60,MEM_4_reg_bram_9_n_61,MEM_4_reg_bram_9_n_62,MEM_4_reg_bram_9_n_63,MEM_4_reg_bram_9_n_64,MEM_4_reg_bram_9_n_65,MEM_4_reg_bram_9_n_66,MEM_4_reg_bram_9_n_67}),
        .CASDOUTPA(NLW_MEM_4_reg_bram_9_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_4_reg_bram_9_n_136,MEM_4_reg_bram_9_n_137,MEM_4_reg_bram_9_n_138,MEM_4_reg_bram_9_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_4_reg_bram_9_n_0),
        .CASOUTSBITERR(MEM_4_reg_bram_9_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_4_reg_bram_9_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[31:24]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_4_reg_bram_9_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_4_reg_bram_9_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_4_reg_bram_9_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_4_reg_bram_9_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_4_reg_bram_9_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_9_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_9_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_4_reg_bram_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_4_reg_bram_9_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_4_reg_bram_9_i_1_n_0,MEM_4_reg_bram_9_i_1_n_0,MEM_4_reg_bram_9_i_1_n_0,MEM_4_reg_bram_9_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_4_reg_bram_9_i_1
       (.I0(io_in_fb_wstrb[3]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_4_reg_bram_9_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_1
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_5_reg_bram_1_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_1_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_1_n_60,MEM_5_reg_bram_1_n_61,MEM_5_reg_bram_1_n_62,MEM_5_reg_bram_1_n_63,MEM_5_reg_bram_1_n_64,MEM_5_reg_bram_1_n_65,MEM_5_reg_bram_1_n_66,MEM_5_reg_bram_1_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_1_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_1_n_136,MEM_5_reg_bram_1_n_137,MEM_5_reg_bram_1_n_138,MEM_5_reg_bram_1_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_1_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_1_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_1_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_1_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_1_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_1_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_1_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_1_i_13_n_0,MEM_5_reg_bram_1_i_13_n_0,MEM_5_reg_bram_1_i_13_n_0,MEM_5_reg_bram_1_i_13_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "36864" *) 
  (* bram_addr_end = "40959" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "36864" *) 
  (* ram_addr_end = "40959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_10
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_9_n_60,MEM_5_reg_bram_9_n_61,MEM_5_reg_bram_9_n_62,MEM_5_reg_bram_9_n_63,MEM_5_reg_bram_9_n_64,MEM_5_reg_bram_9_n_65,MEM_5_reg_bram_9_n_66,MEM_5_reg_bram_9_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_9_n_136,MEM_5_reg_bram_9_n_137,MEM_5_reg_bram_9_n_138,MEM_5_reg_bram_9_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_10_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_10_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_10_n_60,MEM_5_reg_bram_10_n_61,MEM_5_reg_bram_10_n_62,MEM_5_reg_bram_10_n_63,MEM_5_reg_bram_10_n_64,MEM_5_reg_bram_10_n_65,MEM_5_reg_bram_10_n_66,MEM_5_reg_bram_10_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_10_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_10_n_136,MEM_5_reg_bram_10_n_137,MEM_5_reg_bram_10_n_138,MEM_5_reg_bram_10_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_9_n_0),
        .CASINSBITERR(MEM_5_reg_bram_9_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_10_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_10_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_10_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_10_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_10_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_10_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_10_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_10_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_10_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_10_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_10_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_10_i_1_n_0,MEM_5_reg_bram_10_i_1_n_0,MEM_5_reg_bram_10_i_1_n_0,MEM_5_reg_bram_10_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_5_reg_bram_10_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_5_reg_bram_10_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "40960" *) 
  (* bram_addr_end = "45055" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "40960" *) 
  (* ram_addr_end = "45055" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_11
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_10_n_60,MEM_5_reg_bram_10_n_61,MEM_5_reg_bram_10_n_62,MEM_5_reg_bram_10_n_63,MEM_5_reg_bram_10_n_64,MEM_5_reg_bram_10_n_65,MEM_5_reg_bram_10_n_66,MEM_5_reg_bram_10_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_10_n_136,MEM_5_reg_bram_10_n_137,MEM_5_reg_bram_10_n_138,MEM_5_reg_bram_10_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_11_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_11_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_11_n_60,MEM_5_reg_bram_11_n_61,MEM_5_reg_bram_11_n_62,MEM_5_reg_bram_11_n_63,MEM_5_reg_bram_11_n_64,MEM_5_reg_bram_11_n_65,MEM_5_reg_bram_11_n_66,MEM_5_reg_bram_11_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_11_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_11_n_136,MEM_5_reg_bram_11_n_137,MEM_5_reg_bram_11_n_138,MEM_5_reg_bram_11_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_10_n_0),
        .CASINSBITERR(MEM_5_reg_bram_10_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_11_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_11_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_11_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_11_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_11_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_11_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_11_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_11_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_11_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_11_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_11_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_11_i_1_n_0,MEM_5_reg_bram_11_i_1_n_0,MEM_5_reg_bram_11_i_1_n_0,MEM_5_reg_bram_11_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_5_reg_bram_11_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_5_reg_bram_11_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "45056" *) 
  (* bram_addr_end = "49151" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "45056" *) 
  (* ram_addr_end = "49151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_12
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_11_n_60,MEM_5_reg_bram_11_n_61,MEM_5_reg_bram_11_n_62,MEM_5_reg_bram_11_n_63,MEM_5_reg_bram_11_n_64,MEM_5_reg_bram_11_n_65,MEM_5_reg_bram_11_n_66,MEM_5_reg_bram_11_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_11_n_136,MEM_5_reg_bram_11_n_137,MEM_5_reg_bram_11_n_138,MEM_5_reg_bram_11_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_12_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_12_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_12_n_60,MEM_5_reg_bram_12_n_61,MEM_5_reg_bram_12_n_62,MEM_5_reg_bram_12_n_63,MEM_5_reg_bram_12_n_64,MEM_5_reg_bram_12_n_65,MEM_5_reg_bram_12_n_66,MEM_5_reg_bram_12_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_12_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_12_n_136,MEM_5_reg_bram_12_n_137,MEM_5_reg_bram_12_n_138,MEM_5_reg_bram_12_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_11_n_0),
        .CASINSBITERR(MEM_5_reg_bram_11_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_12_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_12_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_12_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_12_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_12_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_12_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_12_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_12_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_12_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_12_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_12_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_12_i_1_n_0,MEM_5_reg_bram_12_i_1_n_0,MEM_5_reg_bram_12_i_1_n_0,MEM_5_reg_bram_12_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_5_reg_bram_12_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_5_reg_bram_12_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "49152" *) 
  (* bram_addr_end = "53247" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "49152" *) 
  (* ram_addr_end = "53247" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_13
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_12_n_60,MEM_5_reg_bram_12_n_61,MEM_5_reg_bram_12_n_62,MEM_5_reg_bram_12_n_63,MEM_5_reg_bram_12_n_64,MEM_5_reg_bram_12_n_65,MEM_5_reg_bram_12_n_66,MEM_5_reg_bram_12_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_12_n_136,MEM_5_reg_bram_12_n_137,MEM_5_reg_bram_12_n_138,MEM_5_reg_bram_12_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_13_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_13_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_13_n_60,MEM_5_reg_bram_13_n_61,MEM_5_reg_bram_13_n_62,MEM_5_reg_bram_13_n_63,MEM_5_reg_bram_13_n_64,MEM_5_reg_bram_13_n_65,MEM_5_reg_bram_13_n_66,MEM_5_reg_bram_13_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_13_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_13_n_136,MEM_5_reg_bram_13_n_137,MEM_5_reg_bram_13_n_138,MEM_5_reg_bram_13_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_12_n_0),
        .CASINSBITERR(MEM_5_reg_bram_12_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_13_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_13_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_13_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_13_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_13_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_13_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_13_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_13_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_13_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_13_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_13_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_13_i_1_n_0,MEM_5_reg_bram_13_i_1_n_0,MEM_5_reg_bram_13_i_1_n_0,MEM_5_reg_bram_13_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_5_reg_bram_13_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_5_reg_bram_13_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "53248" *) 
  (* bram_addr_end = "57343" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "53248" *) 
  (* ram_addr_end = "57343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_14
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_13_n_60,MEM_5_reg_bram_13_n_61,MEM_5_reg_bram_13_n_62,MEM_5_reg_bram_13_n_63,MEM_5_reg_bram_13_n_64,MEM_5_reg_bram_13_n_65,MEM_5_reg_bram_13_n_66,MEM_5_reg_bram_13_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_13_n_136,MEM_5_reg_bram_13_n_137,MEM_5_reg_bram_13_n_138,MEM_5_reg_bram_13_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_14_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_14_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_14_n_60,MEM_5_reg_bram_14_n_61,MEM_5_reg_bram_14_n_62,MEM_5_reg_bram_14_n_63,MEM_5_reg_bram_14_n_64,MEM_5_reg_bram_14_n_65,MEM_5_reg_bram_14_n_66,MEM_5_reg_bram_14_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_14_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_14_n_136,MEM_5_reg_bram_14_n_137,MEM_5_reg_bram_14_n_138,MEM_5_reg_bram_14_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_13_n_0),
        .CASINSBITERR(MEM_5_reg_bram_13_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_14_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_14_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_14_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_14_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_14_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_14_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_14_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_14_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_14_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_14_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_14_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_14_i_1_n_0,MEM_5_reg_bram_14_i_1_n_0,MEM_5_reg_bram_14_i_1_n_0,MEM_5_reg_bram_14_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_5_reg_bram_14_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_5_reg_bram_14_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "57344" *) 
  (* bram_addr_end = "61439" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "57344" *) 
  (* ram_addr_end = "61439" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_15
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_14_n_60,MEM_5_reg_bram_14_n_61,MEM_5_reg_bram_14_n_62,MEM_5_reg_bram_14_n_63,MEM_5_reg_bram_14_n_64,MEM_5_reg_bram_14_n_65,MEM_5_reg_bram_14_n_66,MEM_5_reg_bram_14_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_14_n_136,MEM_5_reg_bram_14_n_137,MEM_5_reg_bram_14_n_138,MEM_5_reg_bram_14_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_15_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_5_reg_bram_15_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_5_reg_bram_15_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_5_reg_bram_15_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_5_reg_bram_14_n_0),
        .CASINSBITERR(MEM_5_reg_bram_14_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_5_reg_bram_15_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_5_reg_bram_15_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_15_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_15_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_5_reg_bram_15_DOUTBDOUT_UNCONNECTED[31:8],MEM_5_reg_bram_15_n_124,MEM_5_reg_bram_15_n_125,MEM_5_reg_bram_15_n_126,MEM_5_reg_bram_15_n_127,MEM_5_reg_bram_15_n_128,MEM_5_reg_bram_15_n_129,MEM_5_reg_bram_15_n_130,MEM_5_reg_bram_15_n_131}),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_15_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_15_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_15_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_15_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_15_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_15_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_15_i_1_n_0,MEM_5_reg_bram_15_i_1_n_0,MEM_5_reg_bram_15_i_1_n_0,MEM_5_reg_bram_15_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_5_reg_bram_15_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_5_reg_bram_15_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_1
       (.I0(fbPixelAddrV1_reg[11]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[11]),
        .O(MEM_5_reg_bram_1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_10
       (.I0(fbPixelAddrV1_reg[2]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[2]),
        .O(MEM_5_reg_bram_1_i_10_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_11
       (.I0(fbPixelAddrV1_reg[1]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[1]),
        .O(MEM_5_reg_bram_1_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_12
       (.I0(fbPixelAddrV1_reg[0]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[0]),
        .O(MEM_5_reg_bram_1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    MEM_5_reg_bram_1_i_13
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_5_reg_bram_1_i_13_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_2
       (.I0(fbPixelAddrV1_reg[10]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[10]),
        .O(MEM_5_reg_bram_1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_3
       (.I0(fbPixelAddrV1_reg[9]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[9]),
        .O(MEM_5_reg_bram_1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_4
       (.I0(fbPixelAddrV1_reg[8]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[8]),
        .O(MEM_5_reg_bram_1_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_5
       (.I0(fbPixelAddrV1_reg[7]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[7]),
        .O(MEM_5_reg_bram_1_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_6
       (.I0(fbPixelAddrV1_reg[6]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[6]),
        .O(MEM_5_reg_bram_1_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_7
       (.I0(fbPixelAddrV1_reg[5]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[5]),
        .O(MEM_5_reg_bram_1_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_8
       (.I0(fbPixelAddrV1_reg[4]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[4]),
        .O(MEM_5_reg_bram_1_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_5_reg_bram_1_i_9
       (.I0(fbPixelAddrV1_reg[3]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[3]),
        .O(MEM_5_reg_bram_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "4096" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_2
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_1_n_60,MEM_5_reg_bram_1_n_61,MEM_5_reg_bram_1_n_62,MEM_5_reg_bram_1_n_63,MEM_5_reg_bram_1_n_64,MEM_5_reg_bram_1_n_65,MEM_5_reg_bram_1_n_66,MEM_5_reg_bram_1_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_1_n_136,MEM_5_reg_bram_1_n_137,MEM_5_reg_bram_1_n_138,MEM_5_reg_bram_1_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_2_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_2_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_2_n_60,MEM_5_reg_bram_2_n_61,MEM_5_reg_bram_2_n_62,MEM_5_reg_bram_2_n_63,MEM_5_reg_bram_2_n_64,MEM_5_reg_bram_2_n_65,MEM_5_reg_bram_2_n_66,MEM_5_reg_bram_2_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_2_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_2_n_136,MEM_5_reg_bram_2_n_137,MEM_5_reg_bram_2_n_138,MEM_5_reg_bram_2_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_1_n_0),
        .CASINSBITERR(MEM_5_reg_bram_1_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_2_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_2_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_2_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_2_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_2_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_2_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_2_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_2_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_2_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_2_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_2_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_2_i_1_n_0,MEM_5_reg_bram_2_i_1_n_0,MEM_5_reg_bram_2_i_1_n_0,MEM_5_reg_bram_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_5_reg_bram_2_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_5_reg_bram_2_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "8192" *) 
  (* bram_addr_end = "12287" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_3
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_2_n_60,MEM_5_reg_bram_2_n_61,MEM_5_reg_bram_2_n_62,MEM_5_reg_bram_2_n_63,MEM_5_reg_bram_2_n_64,MEM_5_reg_bram_2_n_65,MEM_5_reg_bram_2_n_66,MEM_5_reg_bram_2_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_2_n_136,MEM_5_reg_bram_2_n_137,MEM_5_reg_bram_2_n_138,MEM_5_reg_bram_2_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_3_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_3_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_3_n_60,MEM_5_reg_bram_3_n_61,MEM_5_reg_bram_3_n_62,MEM_5_reg_bram_3_n_63,MEM_5_reg_bram_3_n_64,MEM_5_reg_bram_3_n_65,MEM_5_reg_bram_3_n_66,MEM_5_reg_bram_3_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_3_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_3_n_136,MEM_5_reg_bram_3_n_137,MEM_5_reg_bram_3_n_138,MEM_5_reg_bram_3_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_2_n_0),
        .CASINSBITERR(MEM_5_reg_bram_2_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_3_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_3_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_3_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_3_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_3_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_3_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_3_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_3_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_3_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_3_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_3_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_3_i_1_n_0,MEM_5_reg_bram_3_i_1_n_0,MEM_5_reg_bram_3_i_1_n_0,MEM_5_reg_bram_3_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_5_reg_bram_3_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_5_reg_bram_3_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "12288" *) 
  (* bram_addr_end = "16383" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_4
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_3_n_60,MEM_5_reg_bram_3_n_61,MEM_5_reg_bram_3_n_62,MEM_5_reg_bram_3_n_63,MEM_5_reg_bram_3_n_64,MEM_5_reg_bram_3_n_65,MEM_5_reg_bram_3_n_66,MEM_5_reg_bram_3_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_3_n_136,MEM_5_reg_bram_3_n_137,MEM_5_reg_bram_3_n_138,MEM_5_reg_bram_3_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_4_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_4_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_4_n_60,MEM_5_reg_bram_4_n_61,MEM_5_reg_bram_4_n_62,MEM_5_reg_bram_4_n_63,MEM_5_reg_bram_4_n_64,MEM_5_reg_bram_4_n_65,MEM_5_reg_bram_4_n_66,MEM_5_reg_bram_4_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_4_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_4_n_136,MEM_5_reg_bram_4_n_137,MEM_5_reg_bram_4_n_138,MEM_5_reg_bram_4_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_3_n_0),
        .CASINSBITERR(MEM_5_reg_bram_3_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_4_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_4_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_4_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_4_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_4_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_4_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_4_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_4_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_4_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_4_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_4_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_4_i_1_n_0,MEM_5_reg_bram_4_i_1_n_0,MEM_5_reg_bram_4_i_1_n_0,MEM_5_reg_bram_4_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_5_reg_bram_4_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[13]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_5_reg_bram_4_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "16384" *) 
  (* bram_addr_end = "20479" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "16384" *) 
  (* ram_addr_end = "20479" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_5
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_4_n_60,MEM_5_reg_bram_4_n_61,MEM_5_reg_bram_4_n_62,MEM_5_reg_bram_4_n_63,MEM_5_reg_bram_4_n_64,MEM_5_reg_bram_4_n_65,MEM_5_reg_bram_4_n_66,MEM_5_reg_bram_4_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_4_n_136,MEM_5_reg_bram_4_n_137,MEM_5_reg_bram_4_n_138,MEM_5_reg_bram_4_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_5_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_5_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_5_n_60,MEM_5_reg_bram_5_n_61,MEM_5_reg_bram_5_n_62,MEM_5_reg_bram_5_n_63,MEM_5_reg_bram_5_n_64,MEM_5_reg_bram_5_n_65,MEM_5_reg_bram_5_n_66,MEM_5_reg_bram_5_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_5_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_5_n_136,MEM_5_reg_bram_5_n_137,MEM_5_reg_bram_5_n_138,MEM_5_reg_bram_5_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_4_n_0),
        .CASINSBITERR(MEM_5_reg_bram_4_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_5_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_5_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_5_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_5_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_5_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_5_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_5_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_5_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_5_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_5_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_5_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_5_i_1_n_0,MEM_5_reg_bram_5_i_1_n_0,MEM_5_reg_bram_5_i_1_n_0,MEM_5_reg_bram_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_5_reg_bram_5_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_5_reg_bram_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "20480" *) 
  (* bram_addr_end = "24575" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "20480" *) 
  (* ram_addr_end = "24575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_6
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_5_n_60,MEM_5_reg_bram_5_n_61,MEM_5_reg_bram_5_n_62,MEM_5_reg_bram_5_n_63,MEM_5_reg_bram_5_n_64,MEM_5_reg_bram_5_n_65,MEM_5_reg_bram_5_n_66,MEM_5_reg_bram_5_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_5_n_136,MEM_5_reg_bram_5_n_137,MEM_5_reg_bram_5_n_138,MEM_5_reg_bram_5_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_6_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_6_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_6_n_60,MEM_5_reg_bram_6_n_61,MEM_5_reg_bram_6_n_62,MEM_5_reg_bram_6_n_63,MEM_5_reg_bram_6_n_64,MEM_5_reg_bram_6_n_65,MEM_5_reg_bram_6_n_66,MEM_5_reg_bram_6_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_6_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_6_n_136,MEM_5_reg_bram_6_n_137,MEM_5_reg_bram_6_n_138,MEM_5_reg_bram_6_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_5_n_0),
        .CASINSBITERR(MEM_5_reg_bram_5_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_6_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_6_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_6_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_6_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_6_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_6_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_6_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_6_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_6_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_6_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_6_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_6_i_1_n_0,MEM_5_reg_bram_6_i_1_n_0,MEM_5_reg_bram_6_i_1_n_0,MEM_5_reg_bram_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_5_reg_bram_6_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_5_reg_bram_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "24576" *) 
  (* bram_addr_end = "28671" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "24576" *) 
  (* ram_addr_end = "28671" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_7
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_6_n_60,MEM_5_reg_bram_6_n_61,MEM_5_reg_bram_6_n_62,MEM_5_reg_bram_6_n_63,MEM_5_reg_bram_6_n_64,MEM_5_reg_bram_6_n_65,MEM_5_reg_bram_6_n_66,MEM_5_reg_bram_6_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_6_n_136,MEM_5_reg_bram_6_n_137,MEM_5_reg_bram_6_n_138,MEM_5_reg_bram_6_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_7_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_7_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_7_n_60,MEM_5_reg_bram_7_n_61,MEM_5_reg_bram_7_n_62,MEM_5_reg_bram_7_n_63,MEM_5_reg_bram_7_n_64,MEM_5_reg_bram_7_n_65,MEM_5_reg_bram_7_n_66,MEM_5_reg_bram_7_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_7_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_7_n_136,MEM_5_reg_bram_7_n_137,MEM_5_reg_bram_7_n_138,MEM_5_reg_bram_7_n_139}),
        .CASINDBITERR(MEM_5_reg_bram_6_n_0),
        .CASINSBITERR(MEM_5_reg_bram_6_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_7_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_7_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_7_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_7_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_7_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_7_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_7_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_7_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_7_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_7_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_7_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_7_i_1_n_0,MEM_5_reg_bram_7_i_1_n_0,MEM_5_reg_bram_7_i_1_n_0,MEM_5_reg_bram_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_5_reg_bram_7_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_5_reg_bram_7_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "28672" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "28672" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_8
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_5_reg_bram_7_n_60,MEM_5_reg_bram_7_n_61,MEM_5_reg_bram_7_n_62,MEM_5_reg_bram_7_n_63,MEM_5_reg_bram_7_n_64,MEM_5_reg_bram_7_n_65,MEM_5_reg_bram_7_n_66,MEM_5_reg_bram_7_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_5_reg_bram_7_n_136,MEM_5_reg_bram_7_n_137,MEM_5_reg_bram_7_n_138,MEM_5_reg_bram_7_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_8_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_5_reg_bram_8_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_5_reg_bram_8_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_5_reg_bram_8_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_5_reg_bram_8_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_5_reg_bram_7_n_0),
        .CASINSBITERR(MEM_5_reg_bram_7_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_5_reg_bram_8_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_5_reg_bram_8_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_8_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_8_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_5_reg_bram_8_DOUTBDOUT_UNCONNECTED[31:8],MEM_5_reg_bram_8_n_124,MEM_5_reg_bram_8_n_125,MEM_5_reg_bram_8_n_126,MEM_5_reg_bram_8_n_127,MEM_5_reg_bram_8_n_128,MEM_5_reg_bram_8_n_129,MEM_5_reg_bram_8_n_130,MEM_5_reg_bram_8_n_131}),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_8_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_8_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_8_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_8_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_8_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_8_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_8_i_1_n_0,MEM_5_reg_bram_8_i_1_n_0,MEM_5_reg_bram_8_i_1_n_0,MEM_5_reg_bram_8_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_5_reg_bram_8_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[15]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_5_reg_bram_8_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_5" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "36863" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "36863" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_5_reg_bram_9
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({MEM_5_reg_bram_1_i_1_n_0,MEM_5_reg_bram_1_i_2_n_0,MEM_5_reg_bram_1_i_3_n_0,MEM_5_reg_bram_1_i_4_n_0,MEM_5_reg_bram_1_i_5_n_0,MEM_5_reg_bram_1_i_6_n_0,MEM_5_reg_bram_1_i_7_n_0,MEM_5_reg_bram_1_i_8_n_0,MEM_5_reg_bram_1_i_9_n_0,MEM_5_reg_bram_1_i_10_n_0,MEM_5_reg_bram_1_i_11_n_0,MEM_5_reg_bram_1_i_12_n_0,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_5_reg_bram_9_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_5_reg_bram_9_CASDOUTB_UNCONNECTED[31:8],MEM_5_reg_bram_9_n_60,MEM_5_reg_bram_9_n_61,MEM_5_reg_bram_9_n_62,MEM_5_reg_bram_9_n_63,MEM_5_reg_bram_9_n_64,MEM_5_reg_bram_9_n_65,MEM_5_reg_bram_9_n_66,MEM_5_reg_bram_9_n_67}),
        .CASDOUTPA(NLW_MEM_5_reg_bram_9_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_5_reg_bram_9_n_136,MEM_5_reg_bram_9_n_137,MEM_5_reg_bram_9_n_138,MEM_5_reg_bram_9_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_5_reg_bram_9_n_0),
        .CASOUTSBITERR(MEM_5_reg_bram_9_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_5_reg_bram_9_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[39:32]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_5_reg_bram_9_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_5_reg_bram_9_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_5_reg_bram_9_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_5_reg_bram_9_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_5_reg_bram_9_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_9_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_9_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_5_reg_bram_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_5_reg_bram_9_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_5_reg_bram_9_i_1_n_0,MEM_5_reg_bram_9_i_1_n_0,MEM_5_reg_bram_9_i_1_n_0,MEM_5_reg_bram_9_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_5_reg_bram_9_i_1
       (.I0(io_in_fb_wstrb[4]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_5_reg_bram_9_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_1
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_6_reg_bram_1_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_1_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_1_n_60,MEM_6_reg_bram_1_n_61,MEM_6_reg_bram_1_n_62,MEM_6_reg_bram_1_n_63,MEM_6_reg_bram_1_n_64,MEM_6_reg_bram_1_n_65,MEM_6_reg_bram_1_n_66,MEM_6_reg_bram_1_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_1_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_1_n_136,MEM_6_reg_bram_1_n_137,MEM_6_reg_bram_1_n_138,MEM_6_reg_bram_1_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_1_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_1_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_1_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_1_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_1_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_1_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_1_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_1_i_13_n_0,MEM_6_reg_bram_1_i_13_n_0,MEM_6_reg_bram_1_i_13_n_0,MEM_6_reg_bram_1_i_13_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "36864" *) 
  (* bram_addr_end = "40959" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "36864" *) 
  (* ram_addr_end = "40959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_10
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_9_n_60,MEM_6_reg_bram_9_n_61,MEM_6_reg_bram_9_n_62,MEM_6_reg_bram_9_n_63,MEM_6_reg_bram_9_n_64,MEM_6_reg_bram_9_n_65,MEM_6_reg_bram_9_n_66,MEM_6_reg_bram_9_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_9_n_136,MEM_6_reg_bram_9_n_137,MEM_6_reg_bram_9_n_138,MEM_6_reg_bram_9_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_10_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_10_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_10_n_60,MEM_6_reg_bram_10_n_61,MEM_6_reg_bram_10_n_62,MEM_6_reg_bram_10_n_63,MEM_6_reg_bram_10_n_64,MEM_6_reg_bram_10_n_65,MEM_6_reg_bram_10_n_66,MEM_6_reg_bram_10_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_10_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_10_n_136,MEM_6_reg_bram_10_n_137,MEM_6_reg_bram_10_n_138,MEM_6_reg_bram_10_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_9_n_0),
        .CASINSBITERR(MEM_6_reg_bram_9_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_10_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_10_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_10_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_10_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_10_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_10_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_10_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_10_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_10_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_10_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_10_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_10_i_1_n_0,MEM_6_reg_bram_10_i_1_n_0,MEM_6_reg_bram_10_i_1_n_0,MEM_6_reg_bram_10_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_6_reg_bram_10_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_6_reg_bram_10_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "40960" *) 
  (* bram_addr_end = "45055" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "40960" *) 
  (* ram_addr_end = "45055" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_11
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_10_n_60,MEM_6_reg_bram_10_n_61,MEM_6_reg_bram_10_n_62,MEM_6_reg_bram_10_n_63,MEM_6_reg_bram_10_n_64,MEM_6_reg_bram_10_n_65,MEM_6_reg_bram_10_n_66,MEM_6_reg_bram_10_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_10_n_136,MEM_6_reg_bram_10_n_137,MEM_6_reg_bram_10_n_138,MEM_6_reg_bram_10_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_11_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_11_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_11_n_60,MEM_6_reg_bram_11_n_61,MEM_6_reg_bram_11_n_62,MEM_6_reg_bram_11_n_63,MEM_6_reg_bram_11_n_64,MEM_6_reg_bram_11_n_65,MEM_6_reg_bram_11_n_66,MEM_6_reg_bram_11_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_11_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_11_n_136,MEM_6_reg_bram_11_n_137,MEM_6_reg_bram_11_n_138,MEM_6_reg_bram_11_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_10_n_0),
        .CASINSBITERR(MEM_6_reg_bram_10_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_11_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_11_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_11_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_11_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_11_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_11_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_11_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_11_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_11_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_11_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_11_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_11_i_1_n_0,MEM_6_reg_bram_11_i_1_n_0,MEM_6_reg_bram_11_i_1_n_0,MEM_6_reg_bram_11_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_6_reg_bram_11_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_6_reg_bram_11_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "45056" *) 
  (* bram_addr_end = "49151" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "45056" *) 
  (* ram_addr_end = "49151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_12
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_11_n_60,MEM_6_reg_bram_11_n_61,MEM_6_reg_bram_11_n_62,MEM_6_reg_bram_11_n_63,MEM_6_reg_bram_11_n_64,MEM_6_reg_bram_11_n_65,MEM_6_reg_bram_11_n_66,MEM_6_reg_bram_11_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_11_n_136,MEM_6_reg_bram_11_n_137,MEM_6_reg_bram_11_n_138,MEM_6_reg_bram_11_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_12_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_12_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_12_n_60,MEM_6_reg_bram_12_n_61,MEM_6_reg_bram_12_n_62,MEM_6_reg_bram_12_n_63,MEM_6_reg_bram_12_n_64,MEM_6_reg_bram_12_n_65,MEM_6_reg_bram_12_n_66,MEM_6_reg_bram_12_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_12_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_12_n_136,MEM_6_reg_bram_12_n_137,MEM_6_reg_bram_12_n_138,MEM_6_reg_bram_12_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_11_n_0),
        .CASINSBITERR(MEM_6_reg_bram_11_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_12_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_12_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_12_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_12_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_12_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_12_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_12_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_12_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_12_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_12_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_12_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_12_i_1_n_0,MEM_6_reg_bram_12_i_1_n_0,MEM_6_reg_bram_12_i_1_n_0,MEM_6_reg_bram_12_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_6_reg_bram_12_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_6_reg_bram_12_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "49152" *) 
  (* bram_addr_end = "53247" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "49152" *) 
  (* ram_addr_end = "53247" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_13
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_12_n_60,MEM_6_reg_bram_12_n_61,MEM_6_reg_bram_12_n_62,MEM_6_reg_bram_12_n_63,MEM_6_reg_bram_12_n_64,MEM_6_reg_bram_12_n_65,MEM_6_reg_bram_12_n_66,MEM_6_reg_bram_12_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_12_n_136,MEM_6_reg_bram_12_n_137,MEM_6_reg_bram_12_n_138,MEM_6_reg_bram_12_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_13_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_13_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_13_n_60,MEM_6_reg_bram_13_n_61,MEM_6_reg_bram_13_n_62,MEM_6_reg_bram_13_n_63,MEM_6_reg_bram_13_n_64,MEM_6_reg_bram_13_n_65,MEM_6_reg_bram_13_n_66,MEM_6_reg_bram_13_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_13_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_13_n_136,MEM_6_reg_bram_13_n_137,MEM_6_reg_bram_13_n_138,MEM_6_reg_bram_13_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_12_n_0),
        .CASINSBITERR(MEM_6_reg_bram_12_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_13_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_13_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_13_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_13_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_13_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_13_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_13_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_13_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_13_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_13_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_13_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_13_i_1_n_0,MEM_6_reg_bram_13_i_1_n_0,MEM_6_reg_bram_13_i_1_n_0,MEM_6_reg_bram_13_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_6_reg_bram_13_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_6_reg_bram_13_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "53248" *) 
  (* bram_addr_end = "57343" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "53248" *) 
  (* ram_addr_end = "57343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_14
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_13_n_60,MEM_6_reg_bram_13_n_61,MEM_6_reg_bram_13_n_62,MEM_6_reg_bram_13_n_63,MEM_6_reg_bram_13_n_64,MEM_6_reg_bram_13_n_65,MEM_6_reg_bram_13_n_66,MEM_6_reg_bram_13_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_13_n_136,MEM_6_reg_bram_13_n_137,MEM_6_reg_bram_13_n_138,MEM_6_reg_bram_13_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_14_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_14_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_14_n_60,MEM_6_reg_bram_14_n_61,MEM_6_reg_bram_14_n_62,MEM_6_reg_bram_14_n_63,MEM_6_reg_bram_14_n_64,MEM_6_reg_bram_14_n_65,MEM_6_reg_bram_14_n_66,MEM_6_reg_bram_14_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_14_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_14_n_136,MEM_6_reg_bram_14_n_137,MEM_6_reg_bram_14_n_138,MEM_6_reg_bram_14_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_13_n_0),
        .CASINSBITERR(MEM_6_reg_bram_13_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_14_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_14_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_14_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_14_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_14_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_14_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_14_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_14_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_14_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_14_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_14_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_14_i_1_n_0,MEM_6_reg_bram_14_i_1_n_0,MEM_6_reg_bram_14_i_1_n_0,MEM_6_reg_bram_14_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_6_reg_bram_14_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_6_reg_bram_14_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "57344" *) 
  (* bram_addr_end = "61439" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "57344" *) 
  (* ram_addr_end = "61439" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_15
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_14_n_60,MEM_6_reg_bram_14_n_61,MEM_6_reg_bram_14_n_62,MEM_6_reg_bram_14_n_63,MEM_6_reg_bram_14_n_64,MEM_6_reg_bram_14_n_65,MEM_6_reg_bram_14_n_66,MEM_6_reg_bram_14_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_14_n_136,MEM_6_reg_bram_14_n_137,MEM_6_reg_bram_14_n_138,MEM_6_reg_bram_14_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_15_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_6_reg_bram_15_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_6_reg_bram_15_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_6_reg_bram_15_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_6_reg_bram_14_n_0),
        .CASINSBITERR(MEM_6_reg_bram_14_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_6_reg_bram_15_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_6_reg_bram_15_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_15_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_15_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_6_reg_bram_15_DOUTBDOUT_UNCONNECTED[31:8],MEM_6_reg_bram_15_n_124,MEM_6_reg_bram_15_n_125,MEM_6_reg_bram_15_n_126,MEM_6_reg_bram_15_n_127,MEM_6_reg_bram_15_n_128,MEM_6_reg_bram_15_n_129,MEM_6_reg_bram_15_n_130,MEM_6_reg_bram_15_n_131}),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_15_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_15_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_15_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_15_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_15_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_15_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_15_i_1_n_0,MEM_6_reg_bram_15_i_1_n_0,MEM_6_reg_bram_15_i_1_n_0,MEM_6_reg_bram_15_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_6_reg_bram_15_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[15]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_6_reg_bram_15_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_1
       (.I0(fbPixelAddrV1_reg[11]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[11]),
        .O(fb_io_in_araddr[14]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_10
       (.I0(fbPixelAddrV1_reg[2]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[2]),
        .O(fb_io_in_araddr[5]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_11
       (.I0(fbPixelAddrV1_reg[1]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[1]),
        .O(fb_io_in_araddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_12
       (.I0(fbPixelAddrV1_reg[0]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[0]),
        .O(fb_io_in_araddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    MEM_6_reg_bram_1_i_13
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_6_reg_bram_1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_2
       (.I0(fbPixelAddrV1_reg[10]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[10]),
        .O(fb_io_in_araddr[13]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_3
       (.I0(fbPixelAddrV1_reg[9]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[9]),
        .O(fb_io_in_araddr[12]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_4
       (.I0(fbPixelAddrV1_reg[8]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[8]),
        .O(fb_io_in_araddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_5
       (.I0(fbPixelAddrV1_reg[7]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[7]),
        .O(fb_io_in_araddr[10]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_6
       (.I0(fbPixelAddrV1_reg[6]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[6]),
        .O(fb_io_in_araddr[9]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_7
       (.I0(fbPixelAddrV1_reg[5]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[5]),
        .O(fb_io_in_araddr[8]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_8
       (.I0(fbPixelAddrV1_reg[4]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[4]),
        .O(fb_io_in_araddr[7]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    MEM_6_reg_bram_1_i_9
       (.I0(fbPixelAddrV1_reg[3]),
        .I1(Q),
        .I2(fbPixelAddrV0_reg[3]),
        .O(fb_io_in_araddr[6]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "4096" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_2
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_1_n_60,MEM_6_reg_bram_1_n_61,MEM_6_reg_bram_1_n_62,MEM_6_reg_bram_1_n_63,MEM_6_reg_bram_1_n_64,MEM_6_reg_bram_1_n_65,MEM_6_reg_bram_1_n_66,MEM_6_reg_bram_1_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_1_n_136,MEM_6_reg_bram_1_n_137,MEM_6_reg_bram_1_n_138,MEM_6_reg_bram_1_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_2_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_2_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_2_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_2_n_60,MEM_6_reg_bram_2_n_61,MEM_6_reg_bram_2_n_62,MEM_6_reg_bram_2_n_63,MEM_6_reg_bram_2_n_64,MEM_6_reg_bram_2_n_65,MEM_6_reg_bram_2_n_66,MEM_6_reg_bram_2_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_2_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_2_n_136,MEM_6_reg_bram_2_n_137,MEM_6_reg_bram_2_n_138,MEM_6_reg_bram_2_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_1_n_0),
        .CASINSBITERR(MEM_6_reg_bram_1_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_2_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_2_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_2_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_2_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_2_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_2_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_2_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_2_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_2_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_2_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_2_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_2_i_1_n_0,MEM_6_reg_bram_2_i_1_n_0,MEM_6_reg_bram_2_i_1_n_0,MEM_6_reg_bram_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_6_reg_bram_2_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_6_reg_bram_2_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "8192" *) 
  (* bram_addr_end = "12287" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_3
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_2_n_60,MEM_6_reg_bram_2_n_61,MEM_6_reg_bram_2_n_62,MEM_6_reg_bram_2_n_63,MEM_6_reg_bram_2_n_64,MEM_6_reg_bram_2_n_65,MEM_6_reg_bram_2_n_66,MEM_6_reg_bram_2_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_2_n_136,MEM_6_reg_bram_2_n_137,MEM_6_reg_bram_2_n_138,MEM_6_reg_bram_2_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_3_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_3_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_3_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_3_n_60,MEM_6_reg_bram_3_n_61,MEM_6_reg_bram_3_n_62,MEM_6_reg_bram_3_n_63,MEM_6_reg_bram_3_n_64,MEM_6_reg_bram_3_n_65,MEM_6_reg_bram_3_n_66,MEM_6_reg_bram_3_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_3_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_3_n_136,MEM_6_reg_bram_3_n_137,MEM_6_reg_bram_3_n_138,MEM_6_reg_bram_3_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_2_n_0),
        .CASINSBITERR(MEM_6_reg_bram_2_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_3_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_3_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_3_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_3_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_3_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_3_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_3_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_3_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_3_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_3_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_3_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_3_i_1_n_0,MEM_6_reg_bram_3_i_1_n_0,MEM_6_reg_bram_3_i_1_n_0,MEM_6_reg_bram_3_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_6_reg_bram_3_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[14]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[13]),
        .O(MEM_6_reg_bram_3_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "12288" *) 
  (* bram_addr_end = "16383" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_4
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_3_n_60,MEM_6_reg_bram_3_n_61,MEM_6_reg_bram_3_n_62,MEM_6_reg_bram_3_n_63,MEM_6_reg_bram_3_n_64,MEM_6_reg_bram_3_n_65,MEM_6_reg_bram_3_n_66,MEM_6_reg_bram_3_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_3_n_136,MEM_6_reg_bram_3_n_137,MEM_6_reg_bram_3_n_138,MEM_6_reg_bram_3_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_4_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_4_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_4_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_4_n_60,MEM_6_reg_bram_4_n_61,MEM_6_reg_bram_4_n_62,MEM_6_reg_bram_4_n_63,MEM_6_reg_bram_4_n_64,MEM_6_reg_bram_4_n_65,MEM_6_reg_bram_4_n_66,MEM_6_reg_bram_4_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_4_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_4_n_136,MEM_6_reg_bram_4_n_137,MEM_6_reg_bram_4_n_138,MEM_6_reg_bram_4_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_3_n_0),
        .CASINSBITERR(MEM_6_reg_bram_3_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_4_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_4_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_4_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_4_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_4_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_4_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_4_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_4_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_4_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_4_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_4_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_4_i_1_n_0,MEM_6_reg_bram_4_i_1_n_0,MEM_6_reg_bram_4_i_1_n_0,MEM_6_reg_bram_4_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_6_reg_bram_4_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[13]),
        .I3(io_in_fb_awaddr[14]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_6_reg_bram_4_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "16384" *) 
  (* bram_addr_end = "20479" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "16384" *) 
  (* ram_addr_end = "20479" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_5
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_4_n_60,MEM_6_reg_bram_4_n_61,MEM_6_reg_bram_4_n_62,MEM_6_reg_bram_4_n_63,MEM_6_reg_bram_4_n_64,MEM_6_reg_bram_4_n_65,MEM_6_reg_bram_4_n_66,MEM_6_reg_bram_4_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_4_n_136,MEM_6_reg_bram_4_n_137,MEM_6_reg_bram_4_n_138,MEM_6_reg_bram_4_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_5_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_5_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_5_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_5_n_60,MEM_6_reg_bram_5_n_61,MEM_6_reg_bram_5_n_62,MEM_6_reg_bram_5_n_63,MEM_6_reg_bram_5_n_64,MEM_6_reg_bram_5_n_65,MEM_6_reg_bram_5_n_66,MEM_6_reg_bram_5_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_5_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_5_n_136,MEM_6_reg_bram_5_n_137,MEM_6_reg_bram_5_n_138,MEM_6_reg_bram_5_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_4_n_0),
        .CASINSBITERR(MEM_6_reg_bram_4_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_5_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_5_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_5_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_5_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_5_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_5_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_5_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_5_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_5_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_5_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_5_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_5_i_1_n_0,MEM_6_reg_bram_5_i_1_n_0,MEM_6_reg_bram_5_i_1_n_0,MEM_6_reg_bram_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_6_reg_bram_5_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[15]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[14]),
        .O(MEM_6_reg_bram_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "20480" *) 
  (* bram_addr_end = "24575" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "20480" *) 
  (* ram_addr_end = "24575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_6
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_5_n_60,MEM_6_reg_bram_5_n_61,MEM_6_reg_bram_5_n_62,MEM_6_reg_bram_5_n_63,MEM_6_reg_bram_5_n_64,MEM_6_reg_bram_5_n_65,MEM_6_reg_bram_5_n_66,MEM_6_reg_bram_5_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_5_n_136,MEM_6_reg_bram_5_n_137,MEM_6_reg_bram_5_n_138,MEM_6_reg_bram_5_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_6_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_6_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_6_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_6_n_60,MEM_6_reg_bram_6_n_61,MEM_6_reg_bram_6_n_62,MEM_6_reg_bram_6_n_63,MEM_6_reg_bram_6_n_64,MEM_6_reg_bram_6_n_65,MEM_6_reg_bram_6_n_66,MEM_6_reg_bram_6_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_6_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_6_n_136,MEM_6_reg_bram_6_n_137,MEM_6_reg_bram_6_n_138,MEM_6_reg_bram_6_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_5_n_0),
        .CASINSBITERR(MEM_6_reg_bram_5_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_6_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_6_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_6_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_6_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_6_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_6_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_6_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_6_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_6_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_6_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_6_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_6_i_1_n_0,MEM_6_reg_bram_6_i_1_n_0,MEM_6_reg_bram_6_i_1_n_0,MEM_6_reg_bram_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_6_reg_bram_6_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[12]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[13]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_6_reg_bram_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "24576" *) 
  (* bram_addr_end = "28671" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "24576" *) 
  (* ram_addr_end = "28671" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_7
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_6_n_60,MEM_6_reg_bram_6_n_61,MEM_6_reg_bram_6_n_62,MEM_6_reg_bram_6_n_63,MEM_6_reg_bram_6_n_64,MEM_6_reg_bram_6_n_65,MEM_6_reg_bram_6_n_66,MEM_6_reg_bram_6_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_6_n_136,MEM_6_reg_bram_6_n_137,MEM_6_reg_bram_6_n_138,MEM_6_reg_bram_6_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_7_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_7_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_7_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_7_n_60,MEM_6_reg_bram_7_n_61,MEM_6_reg_bram_7_n_62,MEM_6_reg_bram_7_n_63,MEM_6_reg_bram_7_n_64,MEM_6_reg_bram_7_n_65,MEM_6_reg_bram_7_n_66,MEM_6_reg_bram_7_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_7_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_7_n_136,MEM_6_reg_bram_7_n_137,MEM_6_reg_bram_7_n_138,MEM_6_reg_bram_7_n_139}),
        .CASINDBITERR(MEM_6_reg_bram_6_n_0),
        .CASINSBITERR(MEM_6_reg_bram_6_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_7_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_7_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_7_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_7_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_7_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_7_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_7_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_7_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_7_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_7_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_7_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_7_i_1_n_0,MEM_6_reg_bram_7_i_1_n_0,MEM_6_reg_bram_7_i_1_n_0,MEM_6_reg_bram_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    MEM_6_reg_bram_7_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_6_reg_bram_7_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "28672" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "28672" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_8
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MEM_6_reg_bram_7_n_60,MEM_6_reg_bram_7_n_61,MEM_6_reg_bram_7_n_62,MEM_6_reg_bram_7_n_63,MEM_6_reg_bram_7_n_64,MEM_6_reg_bram_7_n_65,MEM_6_reg_bram_7_n_66,MEM_6_reg_bram_7_n_67}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({MEM_6_reg_bram_7_n_136,MEM_6_reg_bram_7_n_137,MEM_6_reg_bram_7_n_138,MEM_6_reg_bram_7_n_139}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(MEM_0_reg_bram_8_i_1_n_0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(REG),
        .CASDOUTA(NLW_MEM_6_reg_bram_8_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_MEM_6_reg_bram_8_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_MEM_6_reg_bram_8_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_MEM_6_reg_bram_8_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(MEM_6_reg_bram_7_n_0),
        .CASINSBITERR(MEM_6_reg_bram_7_n_1),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_MEM_6_reg_bram_8_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_MEM_6_reg_bram_8_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_8_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_8_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_MEM_6_reg_bram_8_DOUTBDOUT_UNCONNECTED[31:8],MEM_6_reg_bram_8_n_124,MEM_6_reg_bram_8_n_125,MEM_6_reg_bram_8_n_126,MEM_6_reg_bram_8_n_127,MEM_6_reg_bram_8_n_128,MEM_6_reg_bram_8_n_129,MEM_6_reg_bram_8_n_130,MEM_6_reg_bram_8_n_131}),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_8_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_8_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_8_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_8_i_2_n_0),
        .ENBWREN(MEM_0_reg_bram_8_i_3_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_8_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_8_i_1_n_0,MEM_6_reg_bram_8_i_1_n_0,MEM_6_reg_bram_8_i_1_n_0,MEM_6_reg_bram_8_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00800000)) 
    MEM_6_reg_bram_8_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[15]),
        .I4(io_in_fb_awaddr[12]),
        .O(MEM_6_reg_bram_8_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "480000" *) 
  (* RTL_RAM_NAME = "MEM_6" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "36863" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "36863" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    MEM_6_reg_bram_9
       (.ADDRARDADDR({io_in_fb_awaddr[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({fb_io_in_araddr[14:3],1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_6_reg_bram_9_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB({NLW_MEM_6_reg_bram_9_CASDOUTB_UNCONNECTED[31:8],MEM_6_reg_bram_9_n_60,MEM_6_reg_bram_9_n_61,MEM_6_reg_bram_9_n_62,MEM_6_reg_bram_9_n_63,MEM_6_reg_bram_9_n_64,MEM_6_reg_bram_9_n_65,MEM_6_reg_bram_9_n_66,MEM_6_reg_bram_9_n_67}),
        .CASDOUTPA(NLW_MEM_6_reg_bram_9_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB({MEM_6_reg_bram_9_n_136,MEM_6_reg_bram_9_n_137,MEM_6_reg_bram_9_n_138,MEM_6_reg_bram_9_n_139}),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(MEM_6_reg_bram_9_n_0),
        .CASOUTSBITERR(MEM_6_reg_bram_9_n_1),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_MEM_6_reg_bram_9_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,io_in_fb_wdata[47:40]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_MEM_6_reg_bram_9_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT(NLW_MEM_6_reg_bram_9_DOUTBDOUT_UNCONNECTED[31:0]),
        .DOUTPADOUTP(NLW_MEM_6_reg_bram_9_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_MEM_6_reg_bram_9_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEM_6_reg_bram_9_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(MEM_0_reg_bram_9_i_1_n_0),
        .ENBWREN(MEM_0_reg_bram_9_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_MEM_6_reg_bram_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEM_6_reg_bram_9_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({MEM_6_reg_bram_9_i_1_n_0,MEM_6_reg_bram_9_i_1_n_0,MEM_6_reg_bram_9_i_1_n_0,MEM_6_reg_bram_9_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    MEM_6_reg_bram_9_i_1
       (.I0(io_in_fb_wstrb[5]),
        .I1(io_in_fb_awaddr[13]),
        .I2(io_in_fb_awaddr[14]),
        .I3(io_in_fb_awaddr[12]),
        .I4(io_in_fb_awaddr[15]),
        .O(MEM_6_reg_bram_9_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h88A88888)) 
    REG_1_i_1__0
       (.I0(REG),
        .I1(r_busy),
        .I2(REG_1),
        .I3(\io_vga_rgb[0] [0]),
        .I4(\io_vga_rgb[0] [1]),
        .O(_GEN_3));
  FDRE REG_1_reg
       (.C(clock),
        .CE(1'b1),
        .D(_GEN_3),
        .Q(fb_io_in_rvalid),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hA8A8FFA8)) 
    REG_2_i_1
       (.I0(io_in_fb_wvalid),
        .I1(io_in_fb_awvalid),
        .I2(w_busy),
        .I3(io_in_fb_bvalid),
        .I4(io_in_fb_bready),
        .O(_GEN_7));
  FDRE REG_2_reg
       (.C(clock),
        .CE(1'b1),
        .D(_GEN_7),
        .Q(io_in_fb_bvalid),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h20)) 
    REG_i_1__0
       (.I0(REG_1),
        .I1(\io_vga_rgb[0] [0]),
        .I2(\io_vga_rgb[0] [1]),
        .O(fb_io_in_arvalid));
  FDRE REG_reg
       (.C(clock),
        .CE(1'b1),
        .D(fb_io_in_arvalid),
        .Q(REG),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    io_in_fb_awready_INST_0
       (.I0(w_busy),
        .O(io_in_fb_awready));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hE)) 
    io_in_fb_wready_INST_0
       (.I0(io_in_fb_awvalid),
        .I1(w_busy),
        .O(io_in_fb_wready));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[0]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[0]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[24]),
        .I5(fb_io_in_rdata[24]),
        .O(io_vga_rgb[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[0]_INST_0_i_1 
       (.I0(MEM_0_reg_bram_15_n_131),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_131),
        .I3(r[0]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[0]_INST_0_i_2 
       (.I0(MEM_4_reg_bram_15_n_131),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_4_reg_bram_8_n_131),
        .O(fb_io_in_rdata[24]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[10]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[10]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[34]),
        .I5(fb_io_in_rdata[34]),
        .O(io_vga_rgb[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[10]_INST_0_i_1 
       (.I0(MEM_1_reg_bram_15_n_129),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_129),
        .I3(r[10]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[10]_INST_0_i_2 
       (.I0(MEM_5_reg_bram_15_n_129),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_5_reg_bram_8_n_129),
        .O(fb_io_in_rdata[34]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[11]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[11]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[35]),
        .I5(fb_io_in_rdata[35]),
        .O(io_vga_rgb[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[11]_INST_0_i_1 
       (.I0(MEM_1_reg_bram_15_n_128),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_128),
        .I3(r[11]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[11]_INST_0_i_2 
       (.I0(MEM_5_reg_bram_15_n_128),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_5_reg_bram_8_n_128),
        .O(fb_io_in_rdata[35]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[12]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[12]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[36]),
        .I5(fb_io_in_rdata[36]),
        .O(io_vga_rgb[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[12]_INST_0_i_1 
       (.I0(MEM_1_reg_bram_15_n_127),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_127),
        .I3(r[12]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[12]_INST_0_i_2 
       (.I0(MEM_5_reg_bram_15_n_127),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_5_reg_bram_8_n_127),
        .O(fb_io_in_rdata[36]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[13]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[13]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[37]),
        .I5(fb_io_in_rdata[37]),
        .O(io_vga_rgb[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[13]_INST_0_i_1 
       (.I0(MEM_1_reg_bram_15_n_126),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_126),
        .I3(r[13]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[13]_INST_0_i_2 
       (.I0(MEM_5_reg_bram_15_n_126),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_5_reg_bram_8_n_126),
        .O(fb_io_in_rdata[37]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[14]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[14]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[38]),
        .I5(fb_io_in_rdata[38]),
        .O(io_vga_rgb[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[14]_INST_0_i_1 
       (.I0(MEM_1_reg_bram_15_n_125),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_125),
        .I3(r[14]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[14]_INST_0_i_2 
       (.I0(MEM_5_reg_bram_15_n_125),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_5_reg_bram_8_n_125),
        .O(fb_io_in_rdata[38]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[15]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[15]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[39]),
        .I5(fb_io_in_rdata[39]),
        .O(io_vga_rgb[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[15]_INST_0_i_1 
       (.I0(MEM_1_reg_bram_15_n_124),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_124),
        .I3(r[15]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[15]_INST_0_i_2 
       (.I0(MEM_5_reg_bram_15_n_124),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_5_reg_bram_8_n_124),
        .O(fb_io_in_rdata[39]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[16]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[16]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[40]),
        .I5(fb_io_in_rdata[40]),
        .O(io_vga_rgb[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[16]_INST_0_i_1 
       (.I0(MEM_2_reg_bram_15_n_131),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_131),
        .I3(r[16]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[16]_INST_0_i_2 
       (.I0(MEM_6_reg_bram_15_n_131),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_6_reg_bram_8_n_131),
        .O(fb_io_in_rdata[40]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[17]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[17]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[41]),
        .I5(fb_io_in_rdata[41]),
        .O(io_vga_rgb[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[17]_INST_0_i_1 
       (.I0(MEM_2_reg_bram_15_n_130),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_130),
        .I3(r[17]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[17]_INST_0_i_2 
       (.I0(MEM_6_reg_bram_15_n_130),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_6_reg_bram_8_n_130),
        .O(fb_io_in_rdata[41]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[18]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[18]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[42]),
        .I5(fb_io_in_rdata[42]),
        .O(io_vga_rgb[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[18]_INST_0_i_1 
       (.I0(MEM_2_reg_bram_15_n_129),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_129),
        .I3(r[18]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[18]_INST_0_i_2 
       (.I0(MEM_6_reg_bram_15_n_129),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_6_reg_bram_8_n_129),
        .O(fb_io_in_rdata[42]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[19]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[19]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[43]),
        .I5(fb_io_in_rdata[43]),
        .O(io_vga_rgb[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[19]_INST_0_i_1 
       (.I0(MEM_2_reg_bram_15_n_128),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_128),
        .I3(r[19]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[19]_INST_0_i_2 
       (.I0(MEM_6_reg_bram_15_n_128),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_6_reg_bram_8_n_128),
        .O(fb_io_in_rdata[43]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[1]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[1]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[25]),
        .I5(fb_io_in_rdata[25]),
        .O(io_vga_rgb[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[1]_INST_0_i_1 
       (.I0(MEM_0_reg_bram_15_n_130),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_130),
        .I3(r[1]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[1]_INST_0_i_2 
       (.I0(MEM_4_reg_bram_15_n_130),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_4_reg_bram_8_n_130),
        .O(fb_io_in_rdata[25]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[20]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[20]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[44]),
        .I5(fb_io_in_rdata[44]),
        .O(io_vga_rgb[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[20]_INST_0_i_1 
       (.I0(MEM_2_reg_bram_15_n_127),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_127),
        .I3(r[20]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[20]_INST_0_i_2 
       (.I0(MEM_6_reg_bram_15_n_127),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_6_reg_bram_8_n_127),
        .O(fb_io_in_rdata[44]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[21]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[21]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[45]),
        .I5(fb_io_in_rdata[45]),
        .O(io_vga_rgb[21]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[21]_INST_0_i_1 
       (.I0(MEM_2_reg_bram_15_n_126),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_126),
        .I3(r[21]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[21]_INST_0_i_2 
       (.I0(MEM_6_reg_bram_15_n_126),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_6_reg_bram_8_n_126),
        .O(fb_io_in_rdata[45]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[22]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[22]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[46]),
        .I5(fb_io_in_rdata[46]),
        .O(io_vga_rgb[22]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[22]_INST_0_i_1 
       (.I0(MEM_2_reg_bram_15_n_125),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_125),
        .I3(r[22]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[22]_INST_0_i_2 
       (.I0(MEM_6_reg_bram_15_n_125),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_6_reg_bram_8_n_125),
        .O(fb_io_in_rdata[46]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[23]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[23]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[47]),
        .I5(fb_io_in_rdata[47]),
        .O(io_vga_rgb[23]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[23]_INST_0_i_1 
       (.I0(MEM_2_reg_bram_15_n_124),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_124),
        .I3(r[23]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[23]_INST_0_i_2 
       (.I0(MEM_6_reg_bram_15_n_124),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_6_reg_bram_8_n_124),
        .O(fb_io_in_rdata[47]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[2]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[2]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[26]),
        .I5(fb_io_in_rdata[26]),
        .O(io_vga_rgb[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[2]_INST_0_i_1 
       (.I0(MEM_0_reg_bram_15_n_129),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_129),
        .I3(r[2]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[2]_INST_0_i_2 
       (.I0(MEM_4_reg_bram_15_n_129),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_4_reg_bram_8_n_129),
        .O(fb_io_in_rdata[26]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[3]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[3]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[27]),
        .I5(fb_io_in_rdata[27]),
        .O(io_vga_rgb[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[3]_INST_0_i_1 
       (.I0(MEM_0_reg_bram_15_n_128),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_128),
        .I3(r[3]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[3]_INST_0_i_2 
       (.I0(MEM_4_reg_bram_15_n_128),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_4_reg_bram_8_n_128),
        .O(fb_io_in_rdata[27]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[4]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[4]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[28]),
        .I5(fb_io_in_rdata[28]),
        .O(io_vga_rgb[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[4]_INST_0_i_1 
       (.I0(MEM_0_reg_bram_15_n_127),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_127),
        .I3(r[4]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[4]_INST_0_i_2 
       (.I0(MEM_4_reg_bram_15_n_127),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_4_reg_bram_8_n_127),
        .O(fb_io_in_rdata[28]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[5]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[5]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[29]),
        .I5(fb_io_in_rdata[29]),
        .O(io_vga_rgb[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[5]_INST_0_i_1 
       (.I0(MEM_0_reg_bram_15_n_126),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_126),
        .I3(r[5]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[5]_INST_0_i_2 
       (.I0(MEM_4_reg_bram_15_n_126),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_4_reg_bram_8_n_126),
        .O(fb_io_in_rdata[29]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[6]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[6]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[30]),
        .I5(fb_io_in_rdata[30]),
        .O(io_vga_rgb[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[6]_INST_0_i_1 
       (.I0(MEM_0_reg_bram_15_n_125),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_125),
        .I3(r[6]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[6]_INST_0_i_2 
       (.I0(MEM_4_reg_bram_15_n_125),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_4_reg_bram_8_n_125),
        .O(fb_io_in_rdata[30]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[7]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[7]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[31]),
        .I5(fb_io_in_rdata[31]),
        .O(io_vga_rgb[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[7]_INST_0_i_1 
       (.I0(MEM_0_reg_bram_15_n_124),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_124),
        .I3(r[7]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[7]_INST_0_i_2 
       (.I0(MEM_4_reg_bram_15_n_124),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_4_reg_bram_8_n_124),
        .O(fb_io_in_rdata[31]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[8]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[8]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[32]),
        .I5(fb_io_in_rdata[32]),
        .O(io_vga_rgb[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[8]_INST_0_i_1 
       (.I0(MEM_1_reg_bram_15_n_131),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_131),
        .I3(r[8]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[8]_INST_0_i_2 
       (.I0(MEM_5_reg_bram_15_n_131),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_5_reg_bram_8_n_131),
        .O(fb_io_in_rdata[32]));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \io_vga_rgb[9]_INST_0 
       (.I0(io_vga_rgb_23_sn_1),
        .I1(p_1_in[9]),
        .I2(\io_vga_rgb[0] [1]),
        .I3(fb_io_in_rvalid),
        .I4(r[33]),
        .I5(fb_io_in_rdata[33]),
        .O(io_vga_rgb[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \io_vga_rgb[9]_INST_0_i_1 
       (.I0(MEM_1_reg_bram_15_n_130),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_130),
        .I3(r[9]),
        .I4(fb_io_in_rvalid),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \io_vga_rgb[9]_INST_0_i_2 
       (.I0(MEM_5_reg_bram_15_n_130),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_5_reg_bram_8_n_130),
        .O(fb_io_in_rdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[0]_i_1 
       (.I0(MEM_0_reg_bram_15_n_131),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_131),
        .O(fb_io_in_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[10]_i_1 
       (.I0(MEM_1_reg_bram_15_n_129),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_129),
        .O(fb_io_in_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[11]_i_1 
       (.I0(MEM_1_reg_bram_15_n_128),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_128),
        .O(fb_io_in_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[12]_i_1 
       (.I0(MEM_1_reg_bram_15_n_127),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_127),
        .O(fb_io_in_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[13]_i_1 
       (.I0(MEM_1_reg_bram_15_n_126),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_126),
        .O(fb_io_in_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[14]_i_1 
       (.I0(MEM_1_reg_bram_15_n_125),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_125),
        .O(fb_io_in_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[15]_i_1 
       (.I0(MEM_1_reg_bram_15_n_124),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_124),
        .O(fb_io_in_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[16]_i_1 
       (.I0(MEM_2_reg_bram_15_n_131),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_131),
        .O(fb_io_in_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[17]_i_1 
       (.I0(MEM_2_reg_bram_15_n_130),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_130),
        .O(fb_io_in_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[18]_i_1 
       (.I0(MEM_2_reg_bram_15_n_129),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_129),
        .O(fb_io_in_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[19]_i_1 
       (.I0(MEM_2_reg_bram_15_n_128),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_128),
        .O(fb_io_in_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[1]_i_1 
       (.I0(MEM_0_reg_bram_15_n_130),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_130),
        .O(fb_io_in_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[20]_i_1 
       (.I0(MEM_2_reg_bram_15_n_127),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_127),
        .O(fb_io_in_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[21]_i_1 
       (.I0(MEM_2_reg_bram_15_n_126),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_126),
        .O(fb_io_in_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[22]_i_1 
       (.I0(MEM_2_reg_bram_15_n_125),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_125),
        .O(fb_io_in_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[23]_i_1 
       (.I0(MEM_2_reg_bram_15_n_124),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_2_reg_bram_8_n_124),
        .O(fb_io_in_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[2]_i_1 
       (.I0(MEM_0_reg_bram_15_n_129),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_129),
        .O(fb_io_in_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[3]_i_1 
       (.I0(MEM_0_reg_bram_15_n_128),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_128),
        .O(fb_io_in_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[4]_i_1 
       (.I0(MEM_0_reg_bram_15_n_127),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_127),
        .O(fb_io_in_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[5]_i_1 
       (.I0(MEM_0_reg_bram_15_n_126),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_126),
        .O(fb_io_in_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[6]_i_1 
       (.I0(MEM_0_reg_bram_15_n_125),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_125),
        .O(fb_io_in_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[7]_i_1 
       (.I0(MEM_0_reg_bram_15_n_124),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_0_reg_bram_8_n_124),
        .O(fb_io_in_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[8]_i_1 
       (.I0(MEM_1_reg_bram_15_n_131),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_131),
        .O(fb_io_in_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r[9]_i_1 
       (.I0(MEM_1_reg_bram_15_n_130),
        .I1(MEM_2_reg_mux_sel_reg_0_n_0),
        .I2(MEM_1_reg_bram_8_n_130),
        .O(fb_io_in_rdata[9]));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    r_busy_i_1
       (.I0(\io_vga_rgb[0] [1]),
        .I1(\io_vga_rgb[0] [0]),
        .I2(REG_1),
        .I3(fb_io_in_rvalid),
        .I4(r_busy),
        .O(_GEN_1));
  FDRE r_busy_reg
       (.C(clock),
        .CE(1'b1),
        .D(_GEN_1),
        .Q(r_busy),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2EEE)) 
    w_busy_i_1
       (.I0(io_in_fb_awvalid),
        .I1(w_busy),
        .I2(io_in_fb_bready),
        .I3(io_in_fb_bvalid),
        .O(_GEN_5));
  FDRE w_busy_reg
       (.C(clock),
        .CE(1'b1),
        .D(_GEN_5),
        .Q(w_busy),
        .R(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4VGA
   (io_in_ctrl_bvalid,
    io_in_ctrl_rvalid,
    io_in_ctrl_rdata,
    io_in_ctrl_wready,
    io_in_ctrl_awready,
    io_in_ctrl_arready,
    io_in_fb_bvalid,
    io_in_fb_wready,
    io_in_fb_awready,
    io_in_fb_rvalid,
    io_vga_rgb,
    \hCounter_reg[10]_0 ,
    io_vga_vsync,
    io_vga_hsync,
    reset,
    clock,
    io_in_ctrl_wvalid,
    io_in_ctrl_awvalid,
    io_in_ctrl_bready,
    io_in_ctrl_araddr,
    io_in_ctrl_arvalid,
    io_in_ctrl_rready,
    io_in_fb_awaddr,
    io_in_fb_wdata,
    io_in_fb_wstrb,
    io_in_fb_wvalid,
    io_in_fb_awvalid,
    io_in_fb_bready,
    io_in_fb_arvalid,
    io_in_fb_rready);
  output io_in_ctrl_bvalid;
  output io_in_ctrl_rvalid;
  output [1:0]io_in_ctrl_rdata;
  output io_in_ctrl_wready;
  output io_in_ctrl_awready;
  output io_in_ctrl_arready;
  output io_in_fb_bvalid;
  output io_in_fb_wready;
  output io_in_fb_awready;
  output io_in_fb_rvalid;
  output [23:0]io_vga_rgb;
  output \hCounter_reg[10]_0 ;
  output io_vga_vsync;
  output io_vga_hsync;
  input reset;
  input clock;
  input io_in_ctrl_wvalid;
  input io_in_ctrl_awvalid;
  input io_in_ctrl_bready;
  input [3:0]io_in_ctrl_araddr;
  input io_in_ctrl_arvalid;
  input io_in_ctrl_rready;
  input [15:0]io_in_fb_awaddr;
  input [47:0]io_in_fb_wdata;
  input [5:0]io_in_fb_wstrb;
  input io_in_fb_wvalid;
  input io_in_fb_awvalid;
  input io_in_fb_bready;
  input io_in_fb_arvalid;
  input io_in_fb_rready;

  wire REG_1;
  wire REG_1_i_3_n_0;
  wire REG_1_i_4_n_0;
  wire _GEN_1__0;
  wire _T_1203_in;
  wire _T_15;
  wire _T_16;
  wire [10:0]_wrap_value_T_1;
  wire [9:0]_wrap_value_T_3;
  wire clock;
  wire \fbPixelAddrV0[0]_i_1_n_0 ;
  wire \fbPixelAddrV0[0]_i_4_n_0 ;
  wire \fbPixelAddrV0[0]_i_5_n_0 ;
  wire \fbPixelAddrV0[0]_i_6_n_0 ;
  wire \fbPixelAddrV0[0]_i_7_n_0 ;
  wire \fbPixelAddrV0[0]_i_8_n_0 ;
  wire [16:0]fbPixelAddrV0_reg;
  wire \fbPixelAddrV0_reg[0]_i_3_n_0 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_1 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_10 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_11 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_12 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_13 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_14 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_15 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_2 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_3 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_4 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_5 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_6 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_7 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_8 ;
  wire \fbPixelAddrV0_reg[0]_i_3_n_9 ;
  wire \fbPixelAddrV0_reg[16]_i_1_n_15 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_0 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_1 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_10 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_11 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_12 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_13 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_14 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_15 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_2 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_3 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_4 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_5 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_6 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_7 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_8 ;
  wire \fbPixelAddrV0_reg[8]_i_1_n_9 ;
  wire \fbPixelAddrV1[0]_i_1_n_0 ;
  wire \fbPixelAddrV1[0]_i_4_n_0 ;
  wire \fbPixelAddrV1[0]_i_5_n_0 ;
  wire \fbPixelAddrV1[0]_i_6_n_0 ;
  wire \fbPixelAddrV1[0]_i_7_n_0 ;
  wire \fbPixelAddrV1[0]_i_8_n_0 ;
  wire [16:0]fbPixelAddrV1_reg;
  wire \fbPixelAddrV1_reg[0]_i_3_n_0 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_1 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_10 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_11 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_12 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_13 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_14 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_15 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_2 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_3 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_4 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_5 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_6 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_7 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_8 ;
  wire \fbPixelAddrV1_reg[0]_i_3_n_9 ;
  wire \fbPixelAddrV1_reg[16]_i_1_n_15 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_0 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_1 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_10 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_11 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_12 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_13 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_14 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_15 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_2 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_3 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_4 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_5 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_6 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_7 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_8 ;
  wire \fbPixelAddrV1_reg[8]_i_1_n_9 ;
  wire [55:0]fb_io_in_rdata;
  wire fb_io_in_rvalid;
  wire \hCounter[10]_i_1_n_0 ;
  wire \hCounter[10]_i_3_n_0 ;
  wire \hCounter[2]_i_1_n_0 ;
  wire \hCounter[7]_i_2_n_0 ;
  wire [10:0]hCounter_reg;
  wire \hCounter_reg[10]_0 ;
  wire [3:0]io_in_ctrl_araddr;
  wire io_in_ctrl_arready;
  wire io_in_ctrl_arvalid;
  wire io_in_ctrl_awready;
  wire io_in_ctrl_awvalid;
  wire io_in_ctrl_bready;
  wire io_in_ctrl_bvalid;
  wire [1:0]io_in_ctrl_rdata;
  wire io_in_ctrl_rready;
  wire io_in_ctrl_rvalid;
  wire io_in_ctrl_wready;
  wire io_in_ctrl_wvalid;
  wire io_in_fb_arvalid;
  wire [15:0]io_in_fb_awaddr;
  wire io_in_fb_awready;
  wire io_in_fb_awvalid;
  wire io_in_fb_bready;
  wire io_in_fb_bvalid;
  wire io_in_fb_rready;
  wire io_in_fb_rvalid;
  wire [47:0]io_in_fb_wdata;
  wire io_in_fb_wready;
  wire [5:0]io_in_fb_wstrb;
  wire io_in_fb_wvalid;
  wire io_vga_hsync;
  wire io_vga_hsync_INST_0_i_1_n_0;
  wire [23:0]io_vga_rgb;
  wire io_vga_valid_INST_0_i_1_n_0;
  wire io_vga_valid_INST_0_i_2_n_0;
  wire io_vga_valid_INST_0_i_3_n_0;
  wire io_vga_valid_INST_0_i_4_n_0;
  wire io_vga_valid_INST_0_i_6_n_0;
  wire io_vga_valid_INST_0_i_7_n_0;
  wire io_vga_vsync;
  wire io_vga_vsync_INST_0_i_1_n_0;
  wire io_vga_vsync_INST_0_i_2_n_0;
  wire p_4_in;
  wire p_6_in;
  wire [55:0]r;
  wire reset;
  wire \vCounter[2]_i_1_n_0 ;
  wire \vCounter[6]_i_2_n_0 ;
  wire \vCounter[9]_i_1_n_0 ;
  wire \vCounter[9]_i_4_n_0 ;
  wire \vCounter[9]_i_5_n_0 ;
  wire \vCounter[9]_i_6_n_0 ;
  wire \vCounter[9]_i_7_n_0 ;
  wire [9:0]vCounter_reg;
  wire wrap_wrap;
  wire [7:0]\NLW_fbPixelAddrV0_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_fbPixelAddrV0_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_fbPixelAddrV1_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_fbPixelAddrV1_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000880800000000)) 
    REG_1_i_1
       (.I0(hCounter_reg[0]),
        .I1(_T_1203_in),
        .I2(io_vga_valid_INST_0_i_3_n_0),
        .I3(REG_1_i_3_n_0),
        .I4(hCounter_reg[10]),
        .I5(p_6_in),
        .O(p_4_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    REG_1_i_2
       (.I0(hCounter_reg[9]),
        .I1(hCounter_reg[8]),
        .I2(hCounter_reg[7]),
        .I3(REG_1_i_4_n_0),
        .I4(hCounter_reg[6]),
        .I5(hCounter_reg[10]),
        .O(_T_1203_in));
  LUT6 #(
    .INIT(64'h0001010101010101)) 
    REG_1_i_3
       (.I0(hCounter_reg[3]),
        .I1(hCounter_reg[4]),
        .I2(hCounter_reg[5]),
        .I3(hCounter_reg[0]),
        .I4(hCounter_reg[1]),
        .I5(hCounter_reg[2]),
        .O(REG_1_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8888888)) 
    REG_1_i_4
       (.I0(hCounter_reg[5]),
        .I1(hCounter_reg[4]),
        .I2(hCounter_reg[2]),
        .I3(hCounter_reg[0]),
        .I4(hCounter_reg[1]),
        .I5(hCounter_reg[3]),
        .O(REG_1_i_4_n_0));
  FDRE REG_1_reg
       (.C(clock),
        .CE(1'b1),
        .D(p_4_in),
        .Q(REG_1),
        .R(1'b0));
  FDRE REG_reg
       (.C(clock),
        .CE(1'b1),
        .D(_GEN_1__0),
        .Q(io_in_fb_rvalid),
        .R(reset));
  LUT3 #(
    .INIT(8'hBA)) 
    _GEN_1
       (.I0(io_in_fb_arvalid),
        .I1(io_in_fb_rready),
        .I2(io_in_fb_rvalid),
        .O(_GEN_1__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGACtrl ctrl
       (.clock(clock),
        .io_in_ctrl_araddr(io_in_ctrl_araddr),
        .io_in_ctrl_arready(io_in_ctrl_arready),
        .io_in_ctrl_arvalid(io_in_ctrl_arvalid),
        .io_in_ctrl_awready(io_in_ctrl_awready),
        .io_in_ctrl_awvalid(io_in_ctrl_awvalid),
        .io_in_ctrl_bready(io_in_ctrl_bready),
        .io_in_ctrl_bvalid(io_in_ctrl_bvalid),
        .io_in_ctrl_rdata(io_in_ctrl_rdata),
        .io_in_ctrl_rready(io_in_ctrl_rready),
        .io_in_ctrl_rvalid(io_in_ctrl_rvalid),
        .io_in_ctrl_wready(io_in_ctrl_wready),
        .io_in_ctrl_wvalid(io_in_ctrl_wvalid),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4RAM fb
       (.Q(vCounter_reg[0]),
        .REG_1(REG_1),
        .clock(clock),
        .fbPixelAddrV0_reg(fbPixelAddrV0_reg[16:1]),
        .fbPixelAddrV1_reg(fbPixelAddrV1_reg[16:1]),
        .fb_io_in_rdata({fb_io_in_rdata[55:32],fb_io_in_rdata[23:0]}),
        .fb_io_in_rvalid(fb_io_in_rvalid),
        .io_in_fb_awaddr(io_in_fb_awaddr),
        .io_in_fb_awready(io_in_fb_awready),
        .io_in_fb_awvalid(io_in_fb_awvalid),
        .io_in_fb_bready(io_in_fb_bready),
        .io_in_fb_bvalid(io_in_fb_bvalid),
        .io_in_fb_wdata(io_in_fb_wdata),
        .io_in_fb_wready(io_in_fb_wready),
        .io_in_fb_wstrb(io_in_fb_wstrb),
        .io_in_fb_wvalid(io_in_fb_wvalid),
        .io_vga_rgb(io_vga_rgb),
        .\io_vga_rgb[0] (hCounter_reg[1:0]),
        .io_vga_rgb_23_sp_1(\hCounter_reg[10]_0 ),
        .r({r[55:32],r[23:0]}),
        .reset(reset));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \fbPixelAddrV0[0]_i_1 
       (.I0(reset),
        .I1(fbPixelAddrV0_reg[11]),
        .I2(\fbPixelAddrV0[0]_i_4_n_0 ),
        .I3(p_4_in),
        .I4(vCounter_reg[0]),
        .O(\fbPixelAddrV0[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \fbPixelAddrV0[0]_i_2 
       (.I0(p_4_in),
        .I1(vCounter_reg[0]),
        .O(_T_15));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fbPixelAddrV0[0]_i_4 
       (.I0(\fbPixelAddrV0[0]_i_6_n_0 ),
        .I1(fbPixelAddrV0_reg[8]),
        .I2(fbPixelAddrV0_reg[6]),
        .I3(fbPixelAddrV0_reg[9]),
        .I4(fbPixelAddrV0_reg[13]),
        .I5(\fbPixelAddrV0[0]_i_7_n_0 ),
        .O(\fbPixelAddrV0[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fbPixelAddrV0[0]_i_5 
       (.I0(fbPixelAddrV0_reg[0]),
        .O(\fbPixelAddrV0[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fbPixelAddrV0[0]_i_6 
       (.I0(fbPixelAddrV0_reg[10]),
        .I1(fbPixelAddrV0_reg[15]),
        .I2(fbPixelAddrV0_reg[14]),
        .I3(fbPixelAddrV0_reg[12]),
        .O(\fbPixelAddrV0[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \fbPixelAddrV0[0]_i_7 
       (.I0(fbPixelAddrV0_reg[5]),
        .I1(fbPixelAddrV0_reg[4]),
        .I2(fbPixelAddrV0_reg[7]),
        .I3(fbPixelAddrV0_reg[16]),
        .I4(\fbPixelAddrV0[0]_i_8_n_0 ),
        .O(\fbPixelAddrV0[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fbPixelAddrV0[0]_i_8 
       (.I0(fbPixelAddrV0_reg[2]),
        .I1(fbPixelAddrV0_reg[3]),
        .I2(fbPixelAddrV0_reg[0]),
        .I3(fbPixelAddrV0_reg[1]),
        .O(\fbPixelAddrV0[0]_i_8_n_0 ));
  FDRE \fbPixelAddrV0_reg[0] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[0]_i_3_n_15 ),
        .Q(fbPixelAddrV0_reg[0]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  CARRY8 \fbPixelAddrV0_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\fbPixelAddrV0_reg[0]_i_3_n_0 ,\fbPixelAddrV0_reg[0]_i_3_n_1 ,\fbPixelAddrV0_reg[0]_i_3_n_2 ,\fbPixelAddrV0_reg[0]_i_3_n_3 ,\fbPixelAddrV0_reg[0]_i_3_n_4 ,\fbPixelAddrV0_reg[0]_i_3_n_5 ,\fbPixelAddrV0_reg[0]_i_3_n_6 ,\fbPixelAddrV0_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\fbPixelAddrV0_reg[0]_i_3_n_8 ,\fbPixelAddrV0_reg[0]_i_3_n_9 ,\fbPixelAddrV0_reg[0]_i_3_n_10 ,\fbPixelAddrV0_reg[0]_i_3_n_11 ,\fbPixelAddrV0_reg[0]_i_3_n_12 ,\fbPixelAddrV0_reg[0]_i_3_n_13 ,\fbPixelAddrV0_reg[0]_i_3_n_14 ,\fbPixelAddrV0_reg[0]_i_3_n_15 }),
        .S({fbPixelAddrV0_reg[7:1],\fbPixelAddrV0[0]_i_5_n_0 }));
  FDRE \fbPixelAddrV0_reg[10] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[8]_i_1_n_13 ),
        .Q(fbPixelAddrV0_reg[10]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[11] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[8]_i_1_n_12 ),
        .Q(fbPixelAddrV0_reg[11]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[12] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[8]_i_1_n_11 ),
        .Q(fbPixelAddrV0_reg[12]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[13] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[8]_i_1_n_10 ),
        .Q(fbPixelAddrV0_reg[13]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[14] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[8]_i_1_n_9 ),
        .Q(fbPixelAddrV0_reg[14]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[15] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[8]_i_1_n_8 ),
        .Q(fbPixelAddrV0_reg[15]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[16] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[16]_i_1_n_15 ),
        .Q(fbPixelAddrV0_reg[16]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  CARRY8 \fbPixelAddrV0_reg[16]_i_1 
       (.CI(\fbPixelAddrV0_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_fbPixelAddrV0_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fbPixelAddrV0_reg[16]_i_1_O_UNCONNECTED [7:1],\fbPixelAddrV0_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fbPixelAddrV0_reg[16]}));
  FDRE \fbPixelAddrV0_reg[1] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[0]_i_3_n_14 ),
        .Q(fbPixelAddrV0_reg[1]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[2] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[0]_i_3_n_13 ),
        .Q(fbPixelAddrV0_reg[2]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[3] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[0]_i_3_n_12 ),
        .Q(fbPixelAddrV0_reg[3]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[4] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[0]_i_3_n_11 ),
        .Q(fbPixelAddrV0_reg[4]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[5] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[0]_i_3_n_10 ),
        .Q(fbPixelAddrV0_reg[5]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[6] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[0]_i_3_n_9 ),
        .Q(fbPixelAddrV0_reg[6]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[7] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[0]_i_3_n_8 ),
        .Q(fbPixelAddrV0_reg[7]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV0_reg[8] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[8]_i_1_n_15 ),
        .Q(fbPixelAddrV0_reg[8]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  CARRY8 \fbPixelAddrV0_reg[8]_i_1 
       (.CI(\fbPixelAddrV0_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\fbPixelAddrV0_reg[8]_i_1_n_0 ,\fbPixelAddrV0_reg[8]_i_1_n_1 ,\fbPixelAddrV0_reg[8]_i_1_n_2 ,\fbPixelAddrV0_reg[8]_i_1_n_3 ,\fbPixelAddrV0_reg[8]_i_1_n_4 ,\fbPixelAddrV0_reg[8]_i_1_n_5 ,\fbPixelAddrV0_reg[8]_i_1_n_6 ,\fbPixelAddrV0_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\fbPixelAddrV0_reg[8]_i_1_n_8 ,\fbPixelAddrV0_reg[8]_i_1_n_9 ,\fbPixelAddrV0_reg[8]_i_1_n_10 ,\fbPixelAddrV0_reg[8]_i_1_n_11 ,\fbPixelAddrV0_reg[8]_i_1_n_12 ,\fbPixelAddrV0_reg[8]_i_1_n_13 ,\fbPixelAddrV0_reg[8]_i_1_n_14 ,\fbPixelAddrV0_reg[8]_i_1_n_15 }),
        .S(fbPixelAddrV0_reg[15:8]));
  FDRE \fbPixelAddrV0_reg[9] 
       (.C(clock),
        .CE(_T_15),
        .D(\fbPixelAddrV0_reg[8]_i_1_n_14 ),
        .Q(fbPixelAddrV0_reg[9]),
        .R(\fbPixelAddrV0[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \fbPixelAddrV1[0]_i_1 
       (.I0(reset),
        .I1(fbPixelAddrV1_reg[11]),
        .I2(\fbPixelAddrV1[0]_i_4_n_0 ),
        .I3(p_4_in),
        .I4(vCounter_reg[0]),
        .O(\fbPixelAddrV1[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fbPixelAddrV1[0]_i_2 
       (.I0(p_4_in),
        .I1(vCounter_reg[0]),
        .O(_T_16));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fbPixelAddrV1[0]_i_4 
       (.I0(\fbPixelAddrV1[0]_i_6_n_0 ),
        .I1(fbPixelAddrV1_reg[8]),
        .I2(fbPixelAddrV1_reg[6]),
        .I3(fbPixelAddrV1_reg[9]),
        .I4(fbPixelAddrV1_reg[13]),
        .I5(\fbPixelAddrV1[0]_i_7_n_0 ),
        .O(\fbPixelAddrV1[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fbPixelAddrV1[0]_i_5 
       (.I0(fbPixelAddrV1_reg[0]),
        .O(\fbPixelAddrV1[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fbPixelAddrV1[0]_i_6 
       (.I0(fbPixelAddrV1_reg[10]),
        .I1(fbPixelAddrV1_reg[15]),
        .I2(fbPixelAddrV1_reg[14]),
        .I3(fbPixelAddrV1_reg[12]),
        .O(\fbPixelAddrV1[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \fbPixelAddrV1[0]_i_7 
       (.I0(fbPixelAddrV1_reg[5]),
        .I1(fbPixelAddrV1_reg[4]),
        .I2(fbPixelAddrV1_reg[7]),
        .I3(fbPixelAddrV1_reg[16]),
        .I4(\fbPixelAddrV1[0]_i_8_n_0 ),
        .O(\fbPixelAddrV1[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fbPixelAddrV1[0]_i_8 
       (.I0(fbPixelAddrV1_reg[2]),
        .I1(fbPixelAddrV1_reg[3]),
        .I2(fbPixelAddrV1_reg[0]),
        .I3(fbPixelAddrV1_reg[1]),
        .O(\fbPixelAddrV1[0]_i_8_n_0 ));
  FDRE \fbPixelAddrV1_reg[0] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[0]_i_3_n_15 ),
        .Q(fbPixelAddrV1_reg[0]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  CARRY8 \fbPixelAddrV1_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\fbPixelAddrV1_reg[0]_i_3_n_0 ,\fbPixelAddrV1_reg[0]_i_3_n_1 ,\fbPixelAddrV1_reg[0]_i_3_n_2 ,\fbPixelAddrV1_reg[0]_i_3_n_3 ,\fbPixelAddrV1_reg[0]_i_3_n_4 ,\fbPixelAddrV1_reg[0]_i_3_n_5 ,\fbPixelAddrV1_reg[0]_i_3_n_6 ,\fbPixelAddrV1_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\fbPixelAddrV1_reg[0]_i_3_n_8 ,\fbPixelAddrV1_reg[0]_i_3_n_9 ,\fbPixelAddrV1_reg[0]_i_3_n_10 ,\fbPixelAddrV1_reg[0]_i_3_n_11 ,\fbPixelAddrV1_reg[0]_i_3_n_12 ,\fbPixelAddrV1_reg[0]_i_3_n_13 ,\fbPixelAddrV1_reg[0]_i_3_n_14 ,\fbPixelAddrV1_reg[0]_i_3_n_15 }),
        .S({fbPixelAddrV1_reg[7:1],\fbPixelAddrV1[0]_i_5_n_0 }));
  FDRE \fbPixelAddrV1_reg[10] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[8]_i_1_n_13 ),
        .Q(fbPixelAddrV1_reg[10]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[11] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[8]_i_1_n_12 ),
        .Q(fbPixelAddrV1_reg[11]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[12] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[8]_i_1_n_11 ),
        .Q(fbPixelAddrV1_reg[12]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[13] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[8]_i_1_n_10 ),
        .Q(fbPixelAddrV1_reg[13]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[14] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[8]_i_1_n_9 ),
        .Q(fbPixelAddrV1_reg[14]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[15] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[8]_i_1_n_8 ),
        .Q(fbPixelAddrV1_reg[15]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[16] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[16]_i_1_n_15 ),
        .Q(fbPixelAddrV1_reg[16]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  CARRY8 \fbPixelAddrV1_reg[16]_i_1 
       (.CI(\fbPixelAddrV1_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_fbPixelAddrV1_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fbPixelAddrV1_reg[16]_i_1_O_UNCONNECTED [7:1],\fbPixelAddrV1_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fbPixelAddrV1_reg[16]}));
  FDRE \fbPixelAddrV1_reg[1] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[0]_i_3_n_14 ),
        .Q(fbPixelAddrV1_reg[1]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[2] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[0]_i_3_n_13 ),
        .Q(fbPixelAddrV1_reg[2]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[3] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[0]_i_3_n_12 ),
        .Q(fbPixelAddrV1_reg[3]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[4] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[0]_i_3_n_11 ),
        .Q(fbPixelAddrV1_reg[4]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[5] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[0]_i_3_n_10 ),
        .Q(fbPixelAddrV1_reg[5]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[6] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[0]_i_3_n_9 ),
        .Q(fbPixelAddrV1_reg[6]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[7] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[0]_i_3_n_8 ),
        .Q(fbPixelAddrV1_reg[7]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  FDRE \fbPixelAddrV1_reg[8] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[8]_i_1_n_15 ),
        .Q(fbPixelAddrV1_reg[8]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  CARRY8 \fbPixelAddrV1_reg[8]_i_1 
       (.CI(\fbPixelAddrV1_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\fbPixelAddrV1_reg[8]_i_1_n_0 ,\fbPixelAddrV1_reg[8]_i_1_n_1 ,\fbPixelAddrV1_reg[8]_i_1_n_2 ,\fbPixelAddrV1_reg[8]_i_1_n_3 ,\fbPixelAddrV1_reg[8]_i_1_n_4 ,\fbPixelAddrV1_reg[8]_i_1_n_5 ,\fbPixelAddrV1_reg[8]_i_1_n_6 ,\fbPixelAddrV1_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\fbPixelAddrV1_reg[8]_i_1_n_8 ,\fbPixelAddrV1_reg[8]_i_1_n_9 ,\fbPixelAddrV1_reg[8]_i_1_n_10 ,\fbPixelAddrV1_reg[8]_i_1_n_11 ,\fbPixelAddrV1_reg[8]_i_1_n_12 ,\fbPixelAddrV1_reg[8]_i_1_n_13 ,\fbPixelAddrV1_reg[8]_i_1_n_14 ,\fbPixelAddrV1_reg[8]_i_1_n_15 }),
        .S(fbPixelAddrV1_reg[15:8]));
  FDRE \fbPixelAddrV1_reg[9] 
       (.C(clock),
        .CE(_T_16),
        .D(\fbPixelAddrV1_reg[8]_i_1_n_14 ),
        .Q(fbPixelAddrV1_reg[9]),
        .R(\fbPixelAddrV1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hCounter[0]_i_1 
       (.I0(hCounter_reg[0]),
        .O(_wrap_value_T_1[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \hCounter[10]_i_1 
       (.I0(reset),
        .I1(wrap_wrap),
        .O(\hCounter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hCounter[10]_i_2 
       (.I0(hCounter_reg[8]),
        .I1(hCounter_reg[6]),
        .I2(\hCounter[10]_i_3_n_0 ),
        .I3(hCounter_reg[7]),
        .I4(hCounter_reg[9]),
        .I5(hCounter_reg[10]),
        .O(_wrap_value_T_1[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hCounter[10]_i_3 
       (.I0(hCounter_reg[5]),
        .I1(hCounter_reg[3]),
        .I2(hCounter_reg[0]),
        .I3(hCounter_reg[1]),
        .I4(hCounter_reg[2]),
        .I5(hCounter_reg[4]),
        .O(\hCounter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hCounter[1]_i_1 
       (.I0(hCounter_reg[0]),
        .I1(hCounter_reg[1]),
        .O(_wrap_value_T_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hCounter[2]_i_1 
       (.I0(hCounter_reg[1]),
        .I1(hCounter_reg[0]),
        .I2(hCounter_reg[2]),
        .O(\hCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hCounter[3]_i_1 
       (.I0(hCounter_reg[0]),
        .I1(hCounter_reg[1]),
        .I2(hCounter_reg[2]),
        .I3(hCounter_reg[3]),
        .O(_wrap_value_T_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hCounter[4]_i_1 
       (.I0(hCounter_reg[2]),
        .I1(hCounter_reg[1]),
        .I2(hCounter_reg[0]),
        .I3(hCounter_reg[3]),
        .I4(hCounter_reg[4]),
        .O(_wrap_value_T_1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hCounter[5]_i_1 
       (.I0(hCounter_reg[3]),
        .I1(hCounter_reg[0]),
        .I2(hCounter_reg[1]),
        .I3(hCounter_reg[2]),
        .I4(hCounter_reg[4]),
        .I5(hCounter_reg[5]),
        .O(_wrap_value_T_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hCounter[6]_i_1 
       (.I0(hCounter_reg[4]),
        .I1(\hCounter[7]_i_2_n_0 ),
        .I2(hCounter_reg[3]),
        .I3(hCounter_reg[5]),
        .I4(hCounter_reg[6]),
        .O(_wrap_value_T_1[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hCounter[7]_i_1 
       (.I0(hCounter_reg[5]),
        .I1(hCounter_reg[3]),
        .I2(\hCounter[7]_i_2_n_0 ),
        .I3(hCounter_reg[4]),
        .I4(hCounter_reg[6]),
        .I5(hCounter_reg[7]),
        .O(_wrap_value_T_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \hCounter[7]_i_2 
       (.I0(hCounter_reg[2]),
        .I1(hCounter_reg[1]),
        .I2(hCounter_reg[0]),
        .O(\hCounter[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hCounter[8]_i_1 
       (.I0(hCounter_reg[6]),
        .I1(\hCounter[10]_i_3_n_0 ),
        .I2(hCounter_reg[7]),
        .I3(hCounter_reg[8]),
        .O(_wrap_value_T_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hCounter[9]_i_1 
       (.I0(hCounter_reg[7]),
        .I1(\hCounter[10]_i_3_n_0 ),
        .I2(hCounter_reg[6]),
        .I3(hCounter_reg[8]),
        .I4(hCounter_reg[9]),
        .O(_wrap_value_T_1[9]));
  FDRE \hCounter_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(_wrap_value_T_1[0]),
        .Q(hCounter_reg[0]),
        .R(\hCounter[10]_i_1_n_0 ));
  FDRE \hCounter_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(_wrap_value_T_1[10]),
        .Q(hCounter_reg[10]),
        .R(\hCounter[10]_i_1_n_0 ));
  FDRE \hCounter_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(_wrap_value_T_1[1]),
        .Q(hCounter_reg[1]),
        .R(\hCounter[10]_i_1_n_0 ));
  FDRE \hCounter_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(\hCounter[2]_i_1_n_0 ),
        .Q(hCounter_reg[2]),
        .R(\hCounter[10]_i_1_n_0 ));
  FDRE \hCounter_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(_wrap_value_T_1[3]),
        .Q(hCounter_reg[3]),
        .R(\hCounter[10]_i_1_n_0 ));
  FDRE \hCounter_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(_wrap_value_T_1[4]),
        .Q(hCounter_reg[4]),
        .R(\hCounter[10]_i_1_n_0 ));
  FDRE \hCounter_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(_wrap_value_T_1[5]),
        .Q(hCounter_reg[5]),
        .R(\hCounter[10]_i_1_n_0 ));
  FDRE \hCounter_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(_wrap_value_T_1[6]),
        .Q(hCounter_reg[6]),
        .R(\hCounter[10]_i_1_n_0 ));
  FDRE \hCounter_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(_wrap_value_T_1[7]),
        .Q(hCounter_reg[7]),
        .R(\hCounter[10]_i_1_n_0 ));
  FDRE \hCounter_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(_wrap_value_T_1[8]),
        .Q(hCounter_reg[8]),
        .R(\hCounter[10]_i_1_n_0 ));
  FDRE \hCounter_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(_wrap_value_T_1[9]),
        .Q(hCounter_reg[9]),
        .R(\hCounter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    io_vga_hsync_INST_0
       (.I0(hCounter_reg[7]),
        .I1(hCounter_reg[6]),
        .I2(hCounter_reg[10]),
        .I3(io_vga_hsync_INST_0_i_1_n_0),
        .I4(hCounter_reg[8]),
        .I5(hCounter_reg[9]),
        .O(io_vga_hsync));
  LUT3 #(
    .INIT(8'hA8)) 
    io_vga_hsync_INST_0_i_1
       (.I0(hCounter_reg[5]),
        .I1(hCounter_reg[3]),
        .I2(hCounter_reg[4]),
        .O(io_vga_hsync_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000EE0E00000000)) 
    io_vga_valid_INST_0
       (.I0(io_vga_valid_INST_0_i_1_n_0),
        .I1(io_vga_valid_INST_0_i_2_n_0),
        .I2(io_vga_valid_INST_0_i_3_n_0),
        .I3(io_vga_valid_INST_0_i_4_n_0),
        .I4(hCounter_reg[10]),
        .I5(p_6_in),
        .O(\hCounter_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    io_vga_valid_INST_0_i_1
       (.I0(hCounter_reg[10]),
        .I1(hCounter_reg[6]),
        .I2(hCounter_reg[4]),
        .I3(hCounter_reg[3]),
        .I4(hCounter_reg[5]),
        .I5(hCounter_reg[7]),
        .O(io_vga_valid_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'hE)) 
    io_vga_valid_INST_0_i_2
       (.I0(hCounter_reg[8]),
        .I1(hCounter_reg[9]),
        .O(io_vga_valid_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    io_vga_valid_INST_0_i_3
       (.I0(hCounter_reg[7]),
        .I1(hCounter_reg[6]),
        .I2(hCounter_reg[9]),
        .I3(hCounter_reg[8]),
        .O(io_vga_valid_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h01)) 
    io_vga_valid_INST_0_i_4
       (.I0(hCounter_reg[5]),
        .I1(hCounter_reg[4]),
        .I2(hCounter_reg[3]),
        .O(io_vga_valid_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0E0E0E0EEEEE0EEE)) 
    io_vga_valid_INST_0_i_5
       (.I0(io_vga_valid_INST_0_i_6_n_0),
        .I1(io_vga_vsync_INST_0_i_2_n_0),
        .I2(vCounter_reg[9]),
        .I3(vCounter_reg[6]),
        .I4(io_vga_valid_INST_0_i_7_n_0),
        .I5(io_vga_vsync_INST_0_i_1_n_0),
        .O(p_6_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    io_vga_valid_INST_0_i_6
       (.I0(vCounter_reg[8]),
        .I1(vCounter_reg[7]),
        .I2(vCounter_reg[2]),
        .I3(vCounter_reg[0]),
        .I4(vCounter_reg[1]),
        .I5(vCounter_reg[9]),
        .O(io_vga_valid_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h000000007F7F7FFF)) 
    io_vga_valid_INST_0_i_7
       (.I0(vCounter_reg[2]),
        .I1(vCounter_reg[4]),
        .I2(vCounter_reg[3]),
        .I3(vCounter_reg[1]),
        .I4(vCounter_reg[0]),
        .I5(vCounter_reg[5]),
        .O(io_vga_valid_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    io_vga_vsync_INST_0
       (.I0(vCounter_reg[2]),
        .I1(vCounter_reg[1]),
        .I2(io_vga_vsync_INST_0_i_1_n_0),
        .I3(vCounter_reg[0]),
        .I4(vCounter_reg[9]),
        .I5(io_vga_vsync_INST_0_i_2_n_0),
        .O(io_vga_vsync));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'hE)) 
    io_vga_vsync_INST_0_i_1
       (.I0(vCounter_reg[7]),
        .I1(vCounter_reg[8]),
        .O(io_vga_vsync_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    io_vga_vsync_INST_0_i_2
       (.I0(vCounter_reg[4]),
        .I1(vCounter_reg[3]),
        .I2(vCounter_reg[6]),
        .I3(vCounter_reg[5]),
        .O(io_vga_vsync_INST_0_i_2_n_0));
  FDRE \r_reg[0] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[0]),
        .Q(r[0]),
        .R(reset));
  FDRE \r_reg[10] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[10]),
        .Q(r[10]),
        .R(reset));
  FDRE \r_reg[11] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[11]),
        .Q(r[11]),
        .R(reset));
  FDRE \r_reg[12] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[12]),
        .Q(r[12]),
        .R(reset));
  FDRE \r_reg[13] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[13]),
        .Q(r[13]),
        .R(reset));
  FDRE \r_reg[14] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[14]),
        .Q(r[14]),
        .R(reset));
  FDRE \r_reg[15] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[15]),
        .Q(r[15]),
        .R(reset));
  FDRE \r_reg[16] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[16]),
        .Q(r[16]),
        .R(reset));
  FDRE \r_reg[17] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[17]),
        .Q(r[17]),
        .R(reset));
  FDRE \r_reg[18] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[18]),
        .Q(r[18]),
        .R(reset));
  FDRE \r_reg[19] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[19]),
        .Q(r[19]),
        .R(reset));
  FDRE \r_reg[1] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[1]),
        .Q(r[1]),
        .R(reset));
  FDRE \r_reg[20] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[20]),
        .Q(r[20]),
        .R(reset));
  FDRE \r_reg[21] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[21]),
        .Q(r[21]),
        .R(reset));
  FDRE \r_reg[22] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[22]),
        .Q(r[22]),
        .R(reset));
  FDRE \r_reg[23] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[23]),
        .Q(r[23]),
        .R(reset));
  FDRE \r_reg[2] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[2]),
        .Q(r[2]),
        .R(reset));
  FDRE \r_reg[32] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[32]),
        .Q(r[32]),
        .R(reset));
  FDRE \r_reg[33] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[33]),
        .Q(r[33]),
        .R(reset));
  FDRE \r_reg[34] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[34]),
        .Q(r[34]),
        .R(reset));
  FDRE \r_reg[35] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[35]),
        .Q(r[35]),
        .R(reset));
  FDRE \r_reg[36] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[36]),
        .Q(r[36]),
        .R(reset));
  FDRE \r_reg[37] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[37]),
        .Q(r[37]),
        .R(reset));
  FDRE \r_reg[38] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[38]),
        .Q(r[38]),
        .R(reset));
  FDRE \r_reg[39] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[39]),
        .Q(r[39]),
        .R(reset));
  FDRE \r_reg[3] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[3]),
        .Q(r[3]),
        .R(reset));
  FDRE \r_reg[40] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[40]),
        .Q(r[40]),
        .R(reset));
  FDRE \r_reg[41] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[41]),
        .Q(r[41]),
        .R(reset));
  FDRE \r_reg[42] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[42]),
        .Q(r[42]),
        .R(reset));
  FDRE \r_reg[43] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[43]),
        .Q(r[43]),
        .R(reset));
  FDRE \r_reg[44] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[44]),
        .Q(r[44]),
        .R(reset));
  FDRE \r_reg[45] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[45]),
        .Q(r[45]),
        .R(reset));
  FDRE \r_reg[46] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[46]),
        .Q(r[46]),
        .R(reset));
  FDRE \r_reg[47] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[47]),
        .Q(r[47]),
        .R(reset));
  FDRE \r_reg[48] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[48]),
        .Q(r[48]),
        .R(reset));
  FDRE \r_reg[49] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[49]),
        .Q(r[49]),
        .R(reset));
  FDRE \r_reg[4] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[4]),
        .Q(r[4]),
        .R(reset));
  FDRE \r_reg[50] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[50]),
        .Q(r[50]),
        .R(reset));
  FDRE \r_reg[51] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[51]),
        .Q(r[51]),
        .R(reset));
  FDRE \r_reg[52] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[52]),
        .Q(r[52]),
        .R(reset));
  FDRE \r_reg[53] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[53]),
        .Q(r[53]),
        .R(reset));
  FDRE \r_reg[54] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[54]),
        .Q(r[54]),
        .R(reset));
  FDRE \r_reg[55] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[55]),
        .Q(r[55]),
        .R(reset));
  FDRE \r_reg[5] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[5]),
        .Q(r[5]),
        .R(reset));
  FDRE \r_reg[6] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[6]),
        .Q(r[6]),
        .R(reset));
  FDRE \r_reg[7] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[7]),
        .Q(r[7]),
        .R(reset));
  FDRE \r_reg[8] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[8]),
        .Q(r[8]),
        .R(reset));
  FDRE \r_reg[9] 
       (.C(clock),
        .CE(fb_io_in_rvalid),
        .D(fb_io_in_rdata[9]),
        .Q(r[9]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \vCounter[0]_i_1 
       (.I0(vCounter_reg[0]),
        .O(_wrap_value_T_3[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vCounter[1]_i_1 
       (.I0(vCounter_reg[0]),
        .I1(vCounter_reg[1]),
        .O(_wrap_value_T_3[1]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vCounter[2]_i_1 
       (.I0(vCounter_reg[0]),
        .I1(vCounter_reg[1]),
        .I2(vCounter_reg[2]),
        .O(\vCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vCounter[3]_i_1 
       (.I0(vCounter_reg[1]),
        .I1(vCounter_reg[0]),
        .I2(vCounter_reg[2]),
        .I3(vCounter_reg[3]),
        .O(_wrap_value_T_3[3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vCounter[4]_i_1 
       (.I0(vCounter_reg[2]),
        .I1(vCounter_reg[0]),
        .I2(vCounter_reg[1]),
        .I3(vCounter_reg[3]),
        .I4(vCounter_reg[4]),
        .O(_wrap_value_T_3[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vCounter[5]_i_1 
       (.I0(vCounter_reg[3]),
        .I1(vCounter_reg[1]),
        .I2(vCounter_reg[0]),
        .I3(vCounter_reg[2]),
        .I4(vCounter_reg[4]),
        .I5(vCounter_reg[5]),
        .O(_wrap_value_T_3[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \vCounter[6]_i_1 
       (.I0(vCounter_reg[4]),
        .I1(vCounter_reg[2]),
        .I2(\vCounter[6]_i_2_n_0 ),
        .I3(vCounter_reg[3]),
        .I4(vCounter_reg[5]),
        .I5(vCounter_reg[6]),
        .O(_wrap_value_T_3[6]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \vCounter[6]_i_2 
       (.I0(vCounter_reg[1]),
        .I1(vCounter_reg[0]),
        .O(\vCounter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vCounter[7]_i_1 
       (.I0(\vCounter[9]_i_6_n_0 ),
        .I1(vCounter_reg[6]),
        .I2(vCounter_reg[7]),
        .O(_wrap_value_T_3[7]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vCounter[8]_i_1 
       (.I0(vCounter_reg[6]),
        .I1(\vCounter[9]_i_6_n_0 ),
        .I2(vCounter_reg[7]),
        .I3(vCounter_reg[8]),
        .O(_wrap_value_T_3[8]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \vCounter[9]_i_1 
       (.I0(reset),
        .I1(vCounter_reg[3]),
        .I2(vCounter_reg[8]),
        .I3(\vCounter[9]_i_4_n_0 ),
        .I4(wrap_wrap),
        .O(\vCounter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \vCounter[9]_i_2 
       (.I0(hCounter_reg[7]),
        .I1(hCounter_reg[6]),
        .I2(hCounter_reg[5]),
        .I3(hCounter_reg[8]),
        .I4(hCounter_reg[9]),
        .I5(\vCounter[9]_i_5_n_0 ),
        .O(wrap_wrap));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vCounter[9]_i_3 
       (.I0(vCounter_reg[7]),
        .I1(\vCounter[9]_i_6_n_0 ),
        .I2(vCounter_reg[6]),
        .I3(vCounter_reg[8]),
        .I4(vCounter_reg[9]),
        .O(_wrap_value_T_3[9]));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \vCounter[9]_i_4 
       (.I0(vCounter_reg[9]),
        .I1(vCounter_reg[4]),
        .I2(vCounter_reg[7]),
        .I3(vCounter_reg[2]),
        .I4(\vCounter[9]_i_7_n_0 ),
        .O(\vCounter[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \vCounter[9]_i_5 
       (.I0(hCounter_reg[0]),
        .I1(hCounter_reg[1]),
        .I2(hCounter_reg[2]),
        .I3(hCounter_reg[3]),
        .I4(hCounter_reg[4]),
        .I5(hCounter_reg[10]),
        .O(\vCounter[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vCounter[9]_i_6 
       (.I0(vCounter_reg[5]),
        .I1(vCounter_reg[3]),
        .I2(vCounter_reg[1]),
        .I3(vCounter_reg[0]),
        .I4(vCounter_reg[2]),
        .I5(vCounter_reg[4]),
        .O(\vCounter[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \vCounter[9]_i_7 
       (.I0(vCounter_reg[6]),
        .I1(vCounter_reg[5]),
        .I2(vCounter_reg[0]),
        .I3(vCounter_reg[1]),
        .O(\vCounter[9]_i_7_n_0 ));
  FDRE \vCounter_reg[0] 
       (.C(clock),
        .CE(wrap_wrap),
        .D(_wrap_value_T_3[0]),
        .Q(vCounter_reg[0]),
        .R(\vCounter[9]_i_1_n_0 ));
  FDRE \vCounter_reg[1] 
       (.C(clock),
        .CE(wrap_wrap),
        .D(_wrap_value_T_3[1]),
        .Q(vCounter_reg[1]),
        .R(\vCounter[9]_i_1_n_0 ));
  FDRE \vCounter_reg[2] 
       (.C(clock),
        .CE(wrap_wrap),
        .D(\vCounter[2]_i_1_n_0 ),
        .Q(vCounter_reg[2]),
        .R(\vCounter[9]_i_1_n_0 ));
  FDRE \vCounter_reg[3] 
       (.C(clock),
        .CE(wrap_wrap),
        .D(_wrap_value_T_3[3]),
        .Q(vCounter_reg[3]),
        .R(\vCounter[9]_i_1_n_0 ));
  FDRE \vCounter_reg[4] 
       (.C(clock),
        .CE(wrap_wrap),
        .D(_wrap_value_T_3[4]),
        .Q(vCounter_reg[4]),
        .R(\vCounter[9]_i_1_n_0 ));
  FDRE \vCounter_reg[5] 
       (.C(clock),
        .CE(wrap_wrap),
        .D(_wrap_value_T_3[5]),
        .Q(vCounter_reg[5]),
        .R(\vCounter[9]_i_1_n_0 ));
  FDRE \vCounter_reg[6] 
       (.C(clock),
        .CE(wrap_wrap),
        .D(_wrap_value_T_3[6]),
        .Q(vCounter_reg[6]),
        .R(\vCounter[9]_i_1_n_0 ));
  FDRE \vCounter_reg[7] 
       (.C(clock),
        .CE(wrap_wrap),
        .D(_wrap_value_T_3[7]),
        .Q(vCounter_reg[7]),
        .R(\vCounter[9]_i_1_n_0 ));
  FDRE \vCounter_reg[8] 
       (.C(clock),
        .CE(wrap_wrap),
        .D(_wrap_value_T_3[8]),
        .Q(vCounter_reg[8]),
        .R(\vCounter[9]_i_1_n_0 ));
  FDRE \vCounter_reg[9] 
       (.C(clock),
        .CE(wrap_wrap),
        .D(_wrap_value_T_3[9]),
        .Q(vCounter_reg[9]),
        .R(\vCounter[9]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGACtrl
   (io_in_ctrl_bvalid,
    io_in_ctrl_rvalid,
    io_in_ctrl_rdata,
    io_in_ctrl_wready,
    io_in_ctrl_awready,
    io_in_ctrl_arready,
    reset,
    clock,
    io_in_ctrl_wvalid,
    io_in_ctrl_awvalid,
    io_in_ctrl_bready,
    io_in_ctrl_araddr,
    io_in_ctrl_arvalid,
    io_in_ctrl_rready);
  output io_in_ctrl_bvalid;
  output io_in_ctrl_rvalid;
  output [1:0]io_in_ctrl_rdata;
  output io_in_ctrl_wready;
  output io_in_ctrl_awready;
  output io_in_ctrl_arready;
  input reset;
  input clock;
  input io_in_ctrl_wvalid;
  input io_in_ctrl_awvalid;
  input io_in_ctrl_bready;
  input [3:0]io_in_ctrl_araddr;
  input io_in_ctrl_arvalid;
  input io_in_ctrl_rready;

  wire REG;
  wire _GEN_1__0;
  wire _GEN_3__0;
  wire _GEN_5__0;
  wire _GEN_7__0;
  wire _T_24;
  wire clock;
  wire [3:0]io_in_ctrl_araddr;
  wire io_in_ctrl_arready;
  wire io_in_ctrl_arvalid;
  wire io_in_ctrl_awready;
  wire io_in_ctrl_awvalid;
  wire io_in_ctrl_bready;
  wire io_in_ctrl_bvalid;
  wire [1:0]io_in_ctrl_rdata;
  wire io_in_ctrl_rready;
  wire io_in_ctrl_rvalid;
  wire io_in_ctrl_wready;
  wire io_in_ctrl_wvalid;
  wire r_busy;
  wire reset;
  wire w_busy;

  FDRE REG_1_reg
       (.C(clock),
        .CE(1'b1),
        .D(_GEN_3__0),
        .Q(io_in_ctrl_rvalid),
        .R(reset));
  FDRE REG_2_reg
       (.C(clock),
        .CE(1'b1),
        .D(_GEN_7__0),
        .Q(io_in_ctrl_bvalid),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    REG_i_1
       (.I0(r_busy),
        .I1(io_in_ctrl_rready),
        .I2(io_in_ctrl_arvalid),
        .O(_T_24));
  FDRE REG_reg
       (.C(clock),
        .CE(1'b1),
        .D(_T_24),
        .Q(REG),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAEEE)) 
    _GEN_1
       (.I0(io_in_ctrl_arvalid),
        .I1(r_busy),
        .I2(io_in_ctrl_rready),
        .I3(io_in_ctrl_rvalid),
        .O(_GEN_1__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE0E0FFE0)) 
    _GEN_3
       (.I0(io_in_ctrl_arvalid),
        .I1(r_busy),
        .I2(REG),
        .I3(io_in_ctrl_rvalid),
        .I4(io_in_ctrl_rready),
        .O(_GEN_3__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2EEE)) 
    _GEN_5
       (.I0(io_in_ctrl_awvalid),
        .I1(w_busy),
        .I2(io_in_ctrl_bready),
        .I3(io_in_ctrl_bvalid),
        .O(_GEN_5__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8A8FFA8)) 
    _GEN_7
       (.I0(io_in_ctrl_wvalid),
        .I1(io_in_ctrl_awvalid),
        .I2(w_busy),
        .I3(io_in_ctrl_bvalid),
        .I4(io_in_ctrl_bready),
        .O(_GEN_7__0));
  LUT4 #(
    .INIT(16'h0001)) 
    _T_73
       (.I0(io_in_ctrl_araddr[2]),
        .I1(io_in_ctrl_araddr[3]),
        .I2(io_in_ctrl_araddr[1]),
        .I3(io_in_ctrl_araddr[0]),
        .O(io_in_ctrl_rdata[1]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    _T_77
       (.I0(io_in_ctrl_araddr[1]),
        .I1(io_in_ctrl_araddr[2]),
        .I2(io_in_ctrl_araddr[0]),
        .I3(io_in_ctrl_araddr[3]),
        .I4(w_busy),
        .I5(io_in_ctrl_awvalid),
        .O(io_in_ctrl_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    io_in_ctrl_arready_INST_0
       (.I0(io_in_ctrl_rready),
        .I1(r_busy),
        .O(io_in_ctrl_arready));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    io_in_ctrl_awready_INST_0
       (.I0(w_busy),
        .O(io_in_ctrl_awready));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    io_in_ctrl_wready_INST_0
       (.I0(io_in_ctrl_awvalid),
        .I1(w_busy),
        .O(io_in_ctrl_wready));
  FDRE r_busy_reg
       (.C(clock),
        .CE(1'b1),
        .D(_GEN_1__0),
        .Q(r_busy),
        .R(reset));
  FDRE w_busy_reg
       (.C(clock),
        .CE(1'b1),
        .D(_GEN_5__0),
        .Q(w_busy),
        .R(reset));
endmodule

(* CHECK_LICENSE_TYPE = "zynq_soc_AXI4VGA_0_0,AXI4VGA,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AXI4VGA,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clock,
    reset,
    io_in_fb_awready,
    io_in_fb_awvalid,
    io_in_fb_awaddr,
    io_in_fb_awprot,
    io_in_fb_wready,
    io_in_fb_wvalid,
    io_in_fb_wdata,
    io_in_fb_wstrb,
    io_in_fb_bready,
    io_in_fb_bvalid,
    io_in_fb_bresp,
    io_in_fb_arready,
    io_in_fb_arvalid,
    io_in_fb_araddr,
    io_in_fb_arprot,
    io_in_fb_rready,
    io_in_fb_rvalid,
    io_in_fb_rresp,
    io_in_fb_rdata,
    io_in_ctrl_awready,
    io_in_ctrl_awvalid,
    io_in_ctrl_awaddr,
    io_in_ctrl_awprot,
    io_in_ctrl_wready,
    io_in_ctrl_wvalid,
    io_in_ctrl_wdata,
    io_in_ctrl_wstrb,
    io_in_ctrl_bready,
    io_in_ctrl_bvalid,
    io_in_ctrl_bresp,
    io_in_ctrl_arready,
    io_in_ctrl_arvalid,
    io_in_ctrl_araddr,
    io_in_ctrl_arprot,
    io_in_ctrl_rready,
    io_in_ctrl_rvalid,
    io_in_ctrl_rresp,
    io_in_ctrl_rdata,
    io_vga_rgb,
    io_vga_hsync,
    io_vga_vsync,
    io_vga_valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_BUSIF io_in_ctrl:io_in_fb, ASSOCIATED_RESET reset, FREQ_HZ 39999600, PHASE 0.0, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, INSERT_VIP 0" *) input clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb AWREADY" *) output io_in_fb_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb AWVALID" *) input io_in_fb_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb AWADDR" *) input [31:0]io_in_fb_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb AWPROT" *) input [2:0]io_in_fb_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb WREADY" *) output io_in_fb_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb WVALID" *) input io_in_fb_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb WDATA" *) input [63:0]io_in_fb_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb WSTRB" *) input [7:0]io_in_fb_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb BREADY" *) input io_in_fb_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb BVALID" *) output io_in_fb_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb BRESP" *) output [1:0]io_in_fb_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb ARREADY" *) output io_in_fb_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb ARVALID" *) input io_in_fb_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb ARADDR" *) input [31:0]io_in_fb_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb ARPROT" *) input [2:0]io_in_fb_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb RREADY" *) input io_in_fb_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb RVALID" *) output io_in_fb_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb RRESP" *) output [1:0]io_in_fb_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb RDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_in_fb, DATA_WIDTH 64, PROTOCOL AXI4LITE, FREQ_HZ 39999600, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]io_in_fb_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl AWREADY" *) output io_in_ctrl_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl AWVALID" *) input io_in_ctrl_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl AWADDR" *) input [31:0]io_in_ctrl_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl AWPROT" *) input [2:0]io_in_ctrl_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl WREADY" *) output io_in_ctrl_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl WVALID" *) input io_in_ctrl_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl WDATA" *) input [63:0]io_in_ctrl_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl WSTRB" *) input [7:0]io_in_ctrl_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl BREADY" *) input io_in_ctrl_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl BVALID" *) output io_in_ctrl_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl BRESP" *) output [1:0]io_in_ctrl_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl ARREADY" *) output io_in_ctrl_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl ARVALID" *) input io_in_ctrl_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl ARADDR" *) input [31:0]io_in_ctrl_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl ARPROT" *) input [2:0]io_in_ctrl_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl RREADY" *) input io_in_ctrl_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl RVALID" *) output io_in_ctrl_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl RRESP" *) output [1:0]io_in_ctrl_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl RDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_in_ctrl, DATA_WIDTH 64, PROTOCOL AXI4LITE, FREQ_HZ 39999600, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]io_in_ctrl_rdata;
  output [23:0]io_vga_rgb;
  output io_vga_hsync;
  output io_vga_vsync;
  output io_vga_valid;

  wire \<const0> ;
  wire \<const1> ;
  wire clock;
  wire [31:0]io_in_ctrl_araddr;
  wire io_in_ctrl_arready;
  wire io_in_ctrl_arvalid;
  wire io_in_ctrl_awready;
  wire io_in_ctrl_awvalid;
  wire io_in_ctrl_bready;
  wire io_in_ctrl_bvalid;
  wire [2:0]\^io_in_ctrl_rdata ;
  wire io_in_ctrl_rready;
  wire io_in_ctrl_rvalid;
  wire io_in_ctrl_wready;
  wire io_in_ctrl_wvalid;
  wire io_in_fb_arvalid;
  wire [31:0]io_in_fb_awaddr;
  wire io_in_fb_awready;
  wire io_in_fb_awvalid;
  wire io_in_fb_bready;
  wire io_in_fb_bvalid;
  wire io_in_fb_rready;
  wire io_in_fb_rvalid;
  wire [63:0]io_in_fb_wdata;
  wire io_in_fb_wready;
  wire [7:0]io_in_fb_wstrb;
  wire io_in_fb_wvalid;
  wire io_vga_hsync;
  wire [23:0]io_vga_rgb;
  wire io_vga_valid;
  wire io_vga_vsync;
  wire reset;

  assign io_in_ctrl_bresp[1] = \<const0> ;
  assign io_in_ctrl_bresp[0] = \<const0> ;
  assign io_in_ctrl_rdata[63] = \<const0> ;
  assign io_in_ctrl_rdata[62] = \<const0> ;
  assign io_in_ctrl_rdata[61] = \<const0> ;
  assign io_in_ctrl_rdata[60] = \<const0> ;
  assign io_in_ctrl_rdata[59] = \<const0> ;
  assign io_in_ctrl_rdata[58] = \<const0> ;
  assign io_in_ctrl_rdata[57] = \<const0> ;
  assign io_in_ctrl_rdata[56] = \<const0> ;
  assign io_in_ctrl_rdata[55] = \<const0> ;
  assign io_in_ctrl_rdata[54] = \<const0> ;
  assign io_in_ctrl_rdata[53] = \<const0> ;
  assign io_in_ctrl_rdata[52] = \<const0> ;
  assign io_in_ctrl_rdata[51] = \<const0> ;
  assign io_in_ctrl_rdata[50] = \<const0> ;
  assign io_in_ctrl_rdata[49] = \<const0> ;
  assign io_in_ctrl_rdata[48] = \<const0> ;
  assign io_in_ctrl_rdata[47] = \<const0> ;
  assign io_in_ctrl_rdata[46] = \<const0> ;
  assign io_in_ctrl_rdata[45] = \<const0> ;
  assign io_in_ctrl_rdata[44] = \<const0> ;
  assign io_in_ctrl_rdata[43] = \<const0> ;
  assign io_in_ctrl_rdata[42] = \<const0> ;
  assign io_in_ctrl_rdata[41] = \<const0> ;
  assign io_in_ctrl_rdata[40] = \<const0> ;
  assign io_in_ctrl_rdata[39] = \<const0> ;
  assign io_in_ctrl_rdata[38] = \<const0> ;
  assign io_in_ctrl_rdata[37] = \<const0> ;
  assign io_in_ctrl_rdata[36] = \<const0> ;
  assign io_in_ctrl_rdata[35] = \<const0> ;
  assign io_in_ctrl_rdata[34] = \<const0> ;
  assign io_in_ctrl_rdata[33] = \<const0> ;
  assign io_in_ctrl_rdata[32] = \<const0> ;
  assign io_in_ctrl_rdata[31] = \<const0> ;
  assign io_in_ctrl_rdata[30] = \<const0> ;
  assign io_in_ctrl_rdata[29] = \<const0> ;
  assign io_in_ctrl_rdata[28] = \<const0> ;
  assign io_in_ctrl_rdata[27] = \<const0> ;
  assign io_in_ctrl_rdata[26] = \<const0> ;
  assign io_in_ctrl_rdata[25] = \<const0> ;
  assign io_in_ctrl_rdata[24] = \^io_in_ctrl_rdata [2];
  assign io_in_ctrl_rdata[23] = \^io_in_ctrl_rdata [2];
  assign io_in_ctrl_rdata[22] = \<const0> ;
  assign io_in_ctrl_rdata[21] = \<const0> ;
  assign io_in_ctrl_rdata[20] = \^io_in_ctrl_rdata [2];
  assign io_in_ctrl_rdata[19] = \<const0> ;
  assign io_in_ctrl_rdata[18] = \<const0> ;
  assign io_in_ctrl_rdata[17] = \<const0> ;
  assign io_in_ctrl_rdata[16] = \<const0> ;
  assign io_in_ctrl_rdata[15] = \<const0> ;
  assign io_in_ctrl_rdata[14] = \<const0> ;
  assign io_in_ctrl_rdata[13] = \<const0> ;
  assign io_in_ctrl_rdata[12] = \<const0> ;
  assign io_in_ctrl_rdata[11] = \<const0> ;
  assign io_in_ctrl_rdata[10] = \<const0> ;
  assign io_in_ctrl_rdata[9] = \<const0> ;
  assign io_in_ctrl_rdata[8] = \^io_in_ctrl_rdata [2];
  assign io_in_ctrl_rdata[7] = \<const0> ;
  assign io_in_ctrl_rdata[6] = \<const0> ;
  assign io_in_ctrl_rdata[5] = \^io_in_ctrl_rdata [2];
  assign io_in_ctrl_rdata[4] = \<const0> ;
  assign io_in_ctrl_rdata[3] = \^io_in_ctrl_rdata [2];
  assign io_in_ctrl_rdata[2] = \^io_in_ctrl_rdata [2];
  assign io_in_ctrl_rdata[1] = \<const0> ;
  assign io_in_ctrl_rdata[0] = \^io_in_ctrl_rdata [0];
  assign io_in_ctrl_rresp[1] = \<const0> ;
  assign io_in_ctrl_rresp[0] = \<const0> ;
  assign io_in_fb_arready = \<const1> ;
  assign io_in_fb_bresp[1] = \<const0> ;
  assign io_in_fb_bresp[0] = \<const0> ;
  assign io_in_fb_rdata[63] = \<const0> ;
  assign io_in_fb_rdata[62] = \<const0> ;
  assign io_in_fb_rdata[61] = \<const0> ;
  assign io_in_fb_rdata[60] = \<const0> ;
  assign io_in_fb_rdata[59] = \<const0> ;
  assign io_in_fb_rdata[58] = \<const0> ;
  assign io_in_fb_rdata[57] = \<const0> ;
  assign io_in_fb_rdata[56] = \<const0> ;
  assign io_in_fb_rdata[55] = \<const0> ;
  assign io_in_fb_rdata[54] = \<const0> ;
  assign io_in_fb_rdata[53] = \<const0> ;
  assign io_in_fb_rdata[52] = \<const0> ;
  assign io_in_fb_rdata[51] = \<const0> ;
  assign io_in_fb_rdata[50] = \<const0> ;
  assign io_in_fb_rdata[49] = \<const0> ;
  assign io_in_fb_rdata[48] = \<const0> ;
  assign io_in_fb_rdata[47] = \<const0> ;
  assign io_in_fb_rdata[46] = \<const0> ;
  assign io_in_fb_rdata[45] = \<const0> ;
  assign io_in_fb_rdata[44] = \<const0> ;
  assign io_in_fb_rdata[43] = \<const0> ;
  assign io_in_fb_rdata[42] = \<const0> ;
  assign io_in_fb_rdata[41] = \<const0> ;
  assign io_in_fb_rdata[40] = \<const0> ;
  assign io_in_fb_rdata[39] = \<const0> ;
  assign io_in_fb_rdata[38] = \<const0> ;
  assign io_in_fb_rdata[37] = \<const0> ;
  assign io_in_fb_rdata[36] = \<const0> ;
  assign io_in_fb_rdata[35] = \<const0> ;
  assign io_in_fb_rdata[34] = \<const0> ;
  assign io_in_fb_rdata[33] = \<const0> ;
  assign io_in_fb_rdata[32] = \<const0> ;
  assign io_in_fb_rdata[31] = \<const0> ;
  assign io_in_fb_rdata[30] = \<const0> ;
  assign io_in_fb_rdata[29] = \<const0> ;
  assign io_in_fb_rdata[28] = \<const0> ;
  assign io_in_fb_rdata[27] = \<const0> ;
  assign io_in_fb_rdata[26] = \<const0> ;
  assign io_in_fb_rdata[25] = \<const0> ;
  assign io_in_fb_rdata[24] = \<const0> ;
  assign io_in_fb_rdata[23] = \<const0> ;
  assign io_in_fb_rdata[22] = \<const0> ;
  assign io_in_fb_rdata[21] = \<const0> ;
  assign io_in_fb_rdata[20] = \<const0> ;
  assign io_in_fb_rdata[19] = \<const0> ;
  assign io_in_fb_rdata[18] = \<const0> ;
  assign io_in_fb_rdata[17] = \<const0> ;
  assign io_in_fb_rdata[16] = \<const0> ;
  assign io_in_fb_rdata[15] = \<const0> ;
  assign io_in_fb_rdata[14] = \<const0> ;
  assign io_in_fb_rdata[13] = \<const0> ;
  assign io_in_fb_rdata[12] = \<const0> ;
  assign io_in_fb_rdata[11] = \<const0> ;
  assign io_in_fb_rdata[10] = \<const0> ;
  assign io_in_fb_rdata[9] = \<const0> ;
  assign io_in_fb_rdata[8] = \<const0> ;
  assign io_in_fb_rdata[7] = \<const0> ;
  assign io_in_fb_rdata[6] = \<const0> ;
  assign io_in_fb_rdata[5] = \<const0> ;
  assign io_in_fb_rdata[4] = \<const0> ;
  assign io_in_fb_rdata[3] = \<const0> ;
  assign io_in_fb_rdata[2] = \<const0> ;
  assign io_in_fb_rdata[1] = \<const0> ;
  assign io_in_fb_rdata[0] = \<const0> ;
  assign io_in_fb_rresp[1] = \<const0> ;
  assign io_in_fb_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4VGA inst
       (.clock(clock),
        .\hCounter_reg[10]_0 (io_vga_valid),
        .io_in_ctrl_araddr(io_in_ctrl_araddr[3:0]),
        .io_in_ctrl_arready(io_in_ctrl_arready),
        .io_in_ctrl_arvalid(io_in_ctrl_arvalid),
        .io_in_ctrl_awready(io_in_ctrl_awready),
        .io_in_ctrl_awvalid(io_in_ctrl_awvalid),
        .io_in_ctrl_bready(io_in_ctrl_bready),
        .io_in_ctrl_bvalid(io_in_ctrl_bvalid),
        .io_in_ctrl_rdata({\^io_in_ctrl_rdata [2],\^io_in_ctrl_rdata [0]}),
        .io_in_ctrl_rready(io_in_ctrl_rready),
        .io_in_ctrl_rvalid(io_in_ctrl_rvalid),
        .io_in_ctrl_wready(io_in_ctrl_wready),
        .io_in_ctrl_wvalid(io_in_ctrl_wvalid),
        .io_in_fb_arvalid(io_in_fb_arvalid),
        .io_in_fb_awaddr(io_in_fb_awaddr[18:3]),
        .io_in_fb_awready(io_in_fb_awready),
        .io_in_fb_awvalid(io_in_fb_awvalid),
        .io_in_fb_bready(io_in_fb_bready),
        .io_in_fb_bvalid(io_in_fb_bvalid),
        .io_in_fb_rready(io_in_fb_rready),
        .io_in_fb_rvalid(io_in_fb_rvalid),
        .io_in_fb_wdata({io_in_fb_wdata[55:32],io_in_fb_wdata[23:0]}),
        .io_in_fb_wready(io_in_fb_wready),
        .io_in_fb_wstrb({io_in_fb_wstrb[6:4],io_in_fb_wstrb[2:0]}),
        .io_in_fb_wvalid(io_in_fb_wvalid),
        .io_vga_hsync(io_vga_hsync),
        .io_vga_rgb(io_vga_rgb),
        .io_vga_vsync(io_vga_vsync),
        .reset(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
