// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Aug 16 11:32:25 2022
// Host        : stu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_AXI4VGA_0_0/zynq_soc_AXI4VGA_0_0_stub.v
// Design      : zynq_soc_AXI4VGA_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3cg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AXI4VGA,Vivado 2019.1" *)
module zynq_soc_AXI4VGA_0_0(clock, reset, io_in_fb_awready, 
  io_in_fb_awvalid, io_in_fb_awaddr, io_in_fb_awprot, io_in_fb_wready, io_in_fb_wvalid, 
  io_in_fb_wdata, io_in_fb_wstrb, io_in_fb_bready, io_in_fb_bvalid, io_in_fb_bresp, 
  io_in_fb_arready, io_in_fb_arvalid, io_in_fb_araddr, io_in_fb_arprot, io_in_fb_rready, 
  io_in_fb_rvalid, io_in_fb_rresp, io_in_fb_rdata, io_in_ctrl_awready, io_in_ctrl_awvalid, 
  io_in_ctrl_awaddr, io_in_ctrl_awprot, io_in_ctrl_wready, io_in_ctrl_wvalid, 
  io_in_ctrl_wdata, io_in_ctrl_wstrb, io_in_ctrl_bready, io_in_ctrl_bvalid, 
  io_in_ctrl_bresp, io_in_ctrl_arready, io_in_ctrl_arvalid, io_in_ctrl_araddr, 
  io_in_ctrl_arprot, io_in_ctrl_rready, io_in_ctrl_rvalid, io_in_ctrl_rresp, 
  io_in_ctrl_rdata, io_vga_rgb, io_vga_hsync, io_vga_vsync, io_vga_valid)
/* synthesis syn_black_box black_box_pad_pin="clock,reset,io_in_fb_awready,io_in_fb_awvalid,io_in_fb_awaddr[31:0],io_in_fb_awprot[2:0],io_in_fb_wready,io_in_fb_wvalid,io_in_fb_wdata[63:0],io_in_fb_wstrb[7:0],io_in_fb_bready,io_in_fb_bvalid,io_in_fb_bresp[1:0],io_in_fb_arready,io_in_fb_arvalid,io_in_fb_araddr[31:0],io_in_fb_arprot[2:0],io_in_fb_rready,io_in_fb_rvalid,io_in_fb_rresp[1:0],io_in_fb_rdata[63:0],io_in_ctrl_awready,io_in_ctrl_awvalid,io_in_ctrl_awaddr[31:0],io_in_ctrl_awprot[2:0],io_in_ctrl_wready,io_in_ctrl_wvalid,io_in_ctrl_wdata[63:0],io_in_ctrl_wstrb[7:0],io_in_ctrl_bready,io_in_ctrl_bvalid,io_in_ctrl_bresp[1:0],io_in_ctrl_arready,io_in_ctrl_arvalid,io_in_ctrl_araddr[31:0],io_in_ctrl_arprot[2:0],io_in_ctrl_rready,io_in_ctrl_rvalid,io_in_ctrl_rresp[1:0],io_in_ctrl_rdata[63:0],io_vga_rgb[23:0],io_vga_hsync,io_vga_vsync,io_vga_valid" */;
  input clock;
  input reset;
  output io_in_fb_awready;
  input io_in_fb_awvalid;
  input [31:0]io_in_fb_awaddr;
  input [2:0]io_in_fb_awprot;
  output io_in_fb_wready;
  input io_in_fb_wvalid;
  input [63:0]io_in_fb_wdata;
  input [7:0]io_in_fb_wstrb;
  input io_in_fb_bready;
  output io_in_fb_bvalid;
  output [1:0]io_in_fb_bresp;
  output io_in_fb_arready;
  input io_in_fb_arvalid;
  input [31:0]io_in_fb_araddr;
  input [2:0]io_in_fb_arprot;
  input io_in_fb_rready;
  output io_in_fb_rvalid;
  output [1:0]io_in_fb_rresp;
  output [63:0]io_in_fb_rdata;
  output io_in_ctrl_awready;
  input io_in_ctrl_awvalid;
  input [31:0]io_in_ctrl_awaddr;
  input [2:0]io_in_ctrl_awprot;
  output io_in_ctrl_wready;
  input io_in_ctrl_wvalid;
  input [63:0]io_in_ctrl_wdata;
  input [7:0]io_in_ctrl_wstrb;
  input io_in_ctrl_bready;
  output io_in_ctrl_bvalid;
  output [1:0]io_in_ctrl_bresp;
  output io_in_ctrl_arready;
  input io_in_ctrl_arvalid;
  input [31:0]io_in_ctrl_araddr;
  input [2:0]io_in_ctrl_arprot;
  input io_in_ctrl_rready;
  output io_in_ctrl_rvalid;
  output [1:0]io_in_ctrl_rresp;
  output [63:0]io_in_ctrl_rdata;
  output [23:0]io_vga_rgb;
  output io_vga_hsync;
  output io_vga_vsync;
  output io_vga_valid;
endmodule
