// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Aug 17 02:16:12 2022
// Host        : stu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_NutShell_0_0/nutshell_NutShell_0_0_stub.v
// Design      : nutshell_NutShell_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3cg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "NutShell,Vivado 2019.1" *)
module nutshell_NutShell_0_0(clock, reset, io_mem_awready, io_mem_awvalid, 
  io_mem_awaddr, io_mem_awprot, io_mem_awid, io_mem_awuser, io_mem_awlen, io_mem_awsize, 
  io_mem_awburst, io_mem_awlock, io_mem_awcache, io_mem_awqos, io_mem_wready, io_mem_wvalid, 
  io_mem_wdata, io_mem_wstrb, io_mem_wlast, io_mem_bready, io_mem_bvalid, io_mem_bresp, 
  io_mem_bid, io_mem_buser, io_mem_arready, io_mem_arvalid, io_mem_araddr, io_mem_arprot, 
  io_mem_arid, io_mem_aruser, io_mem_arlen, io_mem_arsize, io_mem_arburst, io_mem_arlock, 
  io_mem_arcache, io_mem_arqos, io_mem_rready, io_mem_rvalid, io_mem_rresp, io_mem_rdata, 
  io_mem_rlast, io_mem_rid, io_mem_ruser, io_mmio_awready, io_mmio_awvalid, io_mmio_awaddr, 
  io_mmio_awprot, io_mmio_awid, io_mmio_awuser, io_mmio_awlen, io_mmio_awsize, 
  io_mmio_awburst, io_mmio_awlock, io_mmio_awcache, io_mmio_awqos, io_mmio_wready, 
  io_mmio_wvalid, io_mmio_wdata, io_mmio_wstrb, io_mmio_wlast, io_mmio_bready, 
  io_mmio_bvalid, io_mmio_bresp, io_mmio_bid, io_mmio_buser, io_mmio_arready, 
  io_mmio_arvalid, io_mmio_araddr, io_mmio_arprot, io_mmio_arid, io_mmio_aruser, 
  io_mmio_arlen, io_mmio_arsize, io_mmio_arburst, io_mmio_arlock, io_mmio_arcache, 
  io_mmio_arqos, io_mmio_rready, io_mmio_rvalid, io_mmio_rresp, io_mmio_rdata, io_mmio_rlast, 
  io_mmio_rid, io_mmio_ruser, io_frontend_awready, io_frontend_awvalid, io_frontend_awaddr, 
  io_frontend_awprot, io_frontend_awid, io_frontend_awuser, io_frontend_awlen, 
  io_frontend_awsize, io_frontend_awburst, io_frontend_awlock, io_frontend_awcache, 
  io_frontend_awqos, io_frontend_wready, io_frontend_wvalid, io_frontend_wdata, 
  io_frontend_wstrb, io_frontend_wlast, io_frontend_bready, io_frontend_bvalid, 
  io_frontend_bresp, io_frontend_bid, io_frontend_buser, io_frontend_arready, 
  io_frontend_arvalid, io_frontend_araddr, io_frontend_arprot, io_frontend_arid, 
  io_frontend_aruser, io_frontend_arlen, io_frontend_arsize, io_frontend_arburst, 
  io_frontend_arlock, io_frontend_arcache, io_frontend_arqos, io_frontend_rready, 
  io_frontend_rvalid, io_frontend_rresp, io_frontend_rdata, io_frontend_rlast, 
  io_frontend_rid, io_frontend_ruser, io_meip, io_ila_WBUpc, io_ila_WBUvalid, 
  io_ila_WBUrfWen, io_ila_WBUrfDest, io_ila_WBUrfData, io_ila_InstrCnt)
/* synthesis syn_black_box black_box_pad_pin="clock,reset,io_mem_awready,io_mem_awvalid,io_mem_awaddr[31:0],io_mem_awprot[2:0],io_mem_awid,io_mem_awuser,io_mem_awlen[7:0],io_mem_awsize[2:0],io_mem_awburst[1:0],io_mem_awlock,io_mem_awcache[3:0],io_mem_awqos[3:0],io_mem_wready,io_mem_wvalid,io_mem_wdata[63:0],io_mem_wstrb[7:0],io_mem_wlast,io_mem_bready,io_mem_bvalid,io_mem_bresp[1:0],io_mem_bid,io_mem_buser,io_mem_arready,io_mem_arvalid,io_mem_araddr[31:0],io_mem_arprot[2:0],io_mem_arid,io_mem_aruser,io_mem_arlen[7:0],io_mem_arsize[2:0],io_mem_arburst[1:0],io_mem_arlock,io_mem_arcache[3:0],io_mem_arqos[3:0],io_mem_rready,io_mem_rvalid,io_mem_rresp[1:0],io_mem_rdata[63:0],io_mem_rlast,io_mem_rid,io_mem_ruser,io_mmio_awready,io_mmio_awvalid,io_mmio_awaddr[31:0],io_mmio_awprot[2:0],io_mmio_awid,io_mmio_awuser,io_mmio_awlen[7:0],io_mmio_awsize[2:0],io_mmio_awburst[1:0],io_mmio_awlock,io_mmio_awcache[3:0],io_mmio_awqos[3:0],io_mmio_wready,io_mmio_wvalid,io_mmio_wdata[63:0],io_mmio_wstrb[7:0],io_mmio_wlast,io_mmio_bready,io_mmio_bvalid,io_mmio_bresp[1:0],io_mmio_bid,io_mmio_buser,io_mmio_arready,io_mmio_arvalid,io_mmio_araddr[31:0],io_mmio_arprot[2:0],io_mmio_arid,io_mmio_aruser,io_mmio_arlen[7:0],io_mmio_arsize[2:0],io_mmio_arburst[1:0],io_mmio_arlock,io_mmio_arcache[3:0],io_mmio_arqos[3:0],io_mmio_rready,io_mmio_rvalid,io_mmio_rresp[1:0],io_mmio_rdata[63:0],io_mmio_rlast,io_mmio_rid,io_mmio_ruser,io_frontend_awready,io_frontend_awvalid,io_frontend_awaddr[31:0],io_frontend_awprot[2:0],io_frontend_awid,io_frontend_awuser,io_frontend_awlen[7:0],io_frontend_awsize[2:0],io_frontend_awburst[1:0],io_frontend_awlock,io_frontend_awcache[3:0],io_frontend_awqos[3:0],io_frontend_wready,io_frontend_wvalid,io_frontend_wdata[63:0],io_frontend_wstrb[7:0],io_frontend_wlast,io_frontend_bready,io_frontend_bvalid,io_frontend_bresp[1:0],io_frontend_bid,io_frontend_buser,io_frontend_arready,io_frontend_arvalid,io_frontend_araddr[31:0],io_frontend_arprot[2:0],io_frontend_arid,io_frontend_aruser,io_frontend_arlen[7:0],io_frontend_arsize[2:0],io_frontend_arburst[1:0],io_frontend_arlock,io_frontend_arcache[3:0],io_frontend_arqos[3:0],io_frontend_rready,io_frontend_rvalid,io_frontend_rresp[1:0],io_frontend_rdata[63:0],io_frontend_rlast,io_frontend_rid,io_frontend_ruser,io_meip[1:0],io_ila_WBUpc[38:0],io_ila_WBUvalid,io_ila_WBUrfWen,io_ila_WBUrfDest[4:0],io_ila_WBUrfData[63:0],io_ila_InstrCnt[63:0]" */;
  input clock;
  input reset;
  input io_mem_awready;
  output io_mem_awvalid;
  output [31:0]io_mem_awaddr;
  output [2:0]io_mem_awprot;
  output io_mem_awid;
  output io_mem_awuser;
  output [7:0]io_mem_awlen;
  output [2:0]io_mem_awsize;
  output [1:0]io_mem_awburst;
  output io_mem_awlock;
  output [3:0]io_mem_awcache;
  output [3:0]io_mem_awqos;
  input io_mem_wready;
  output io_mem_wvalid;
  output [63:0]io_mem_wdata;
  output [7:0]io_mem_wstrb;
  output io_mem_wlast;
  output io_mem_bready;
  input io_mem_bvalid;
  input [1:0]io_mem_bresp;
  input io_mem_bid;
  input io_mem_buser;
  input io_mem_arready;
  output io_mem_arvalid;
  output [31:0]io_mem_araddr;
  output [2:0]io_mem_arprot;
  output io_mem_arid;
  output io_mem_aruser;
  output [7:0]io_mem_arlen;
  output [2:0]io_mem_arsize;
  output [1:0]io_mem_arburst;
  output io_mem_arlock;
  output [3:0]io_mem_arcache;
  output [3:0]io_mem_arqos;
  output io_mem_rready;
  input io_mem_rvalid;
  input [1:0]io_mem_rresp;
  input [63:0]io_mem_rdata;
  input io_mem_rlast;
  input io_mem_rid;
  input io_mem_ruser;
  input io_mmio_awready;
  output io_mmio_awvalid;
  output [31:0]io_mmio_awaddr;
  output [2:0]io_mmio_awprot;
  output io_mmio_awid;
  output io_mmio_awuser;
  output [7:0]io_mmio_awlen;
  output [2:0]io_mmio_awsize;
  output [1:0]io_mmio_awburst;
  output io_mmio_awlock;
  output [3:0]io_mmio_awcache;
  output [3:0]io_mmio_awqos;
  input io_mmio_wready;
  output io_mmio_wvalid;
  output [63:0]io_mmio_wdata;
  output [7:0]io_mmio_wstrb;
  output io_mmio_wlast;
  output io_mmio_bready;
  input io_mmio_bvalid;
  input [1:0]io_mmio_bresp;
  input io_mmio_bid;
  input io_mmio_buser;
  input io_mmio_arready;
  output io_mmio_arvalid;
  output [31:0]io_mmio_araddr;
  output [2:0]io_mmio_arprot;
  output io_mmio_arid;
  output io_mmio_aruser;
  output [7:0]io_mmio_arlen;
  output [2:0]io_mmio_arsize;
  output [1:0]io_mmio_arburst;
  output io_mmio_arlock;
  output [3:0]io_mmio_arcache;
  output [3:0]io_mmio_arqos;
  output io_mmio_rready;
  input io_mmio_rvalid;
  input [1:0]io_mmio_rresp;
  input [63:0]io_mmio_rdata;
  input io_mmio_rlast;
  input io_mmio_rid;
  input io_mmio_ruser;
  output io_frontend_awready;
  input io_frontend_awvalid;
  input [31:0]io_frontend_awaddr;
  input [2:0]io_frontend_awprot;
  input io_frontend_awid;
  input io_frontend_awuser;
  input [7:0]io_frontend_awlen;
  input [2:0]io_frontend_awsize;
  input [1:0]io_frontend_awburst;
  input io_frontend_awlock;
  input [3:0]io_frontend_awcache;
  input [3:0]io_frontend_awqos;
  output io_frontend_wready;
  input io_frontend_wvalid;
  input [63:0]io_frontend_wdata;
  input [7:0]io_frontend_wstrb;
  input io_frontend_wlast;
  input io_frontend_bready;
  output io_frontend_bvalid;
  output [1:0]io_frontend_bresp;
  output io_frontend_bid;
  output io_frontend_buser;
  output io_frontend_arready;
  input io_frontend_arvalid;
  input [31:0]io_frontend_araddr;
  input [2:0]io_frontend_arprot;
  input io_frontend_arid;
  input io_frontend_aruser;
  input [7:0]io_frontend_arlen;
  input [2:0]io_frontend_arsize;
  input [1:0]io_frontend_arburst;
  input io_frontend_arlock;
  input [3:0]io_frontend_arcache;
  input [3:0]io_frontend_arqos;
  input io_frontend_rready;
  output io_frontend_rvalid;
  output [1:0]io_frontend_rresp;
  output [63:0]io_frontend_rdata;
  output io_frontend_rlast;
  output io_frontend_rid;
  output io_frontend_ruser;
  input [1:0]io_meip;
  output [38:0]io_ila_WBUpc;
  output io_ila_WBUvalid;
  output io_ila_WBUrfWen;
  output [4:0]io_ila_WBUrfDest;
  output [63:0]io_ila_WBUrfData;
  output [63:0]io_ila_InstrCnt;
endmodule
