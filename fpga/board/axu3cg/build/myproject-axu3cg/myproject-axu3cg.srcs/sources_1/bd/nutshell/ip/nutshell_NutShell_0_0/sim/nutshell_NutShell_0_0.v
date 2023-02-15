// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:NutShell:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module nutshell_NutShell_0_0 (
  clock,
  reset,
  io_mem_awready,
  io_mem_awvalid,
  io_mem_awaddr,
  io_mem_awprot,
  io_mem_awid,
  io_mem_awuser,
  io_mem_awlen,
  io_mem_awsize,
  io_mem_awburst,
  io_mem_awlock,
  io_mem_awcache,
  io_mem_awqos,
  io_mem_wready,
  io_mem_wvalid,
  io_mem_wdata,
  io_mem_wstrb,
  io_mem_wlast,
  io_mem_bready,
  io_mem_bvalid,
  io_mem_bresp,
  io_mem_bid,
  io_mem_buser,
  io_mem_arready,
  io_mem_arvalid,
  io_mem_araddr,
  io_mem_arprot,
  io_mem_arid,
  io_mem_aruser,
  io_mem_arlen,
  io_mem_arsize,
  io_mem_arburst,
  io_mem_arlock,
  io_mem_arcache,
  io_mem_arqos,
  io_mem_rready,
  io_mem_rvalid,
  io_mem_rresp,
  io_mem_rdata,
  io_mem_rlast,
  io_mem_rid,
  io_mem_ruser,
  io_mmio_awready,
  io_mmio_awvalid,
  io_mmio_awaddr,
  io_mmio_awprot,
  io_mmio_awid,
  io_mmio_awuser,
  io_mmio_awlen,
  io_mmio_awsize,
  io_mmio_awburst,
  io_mmio_awlock,
  io_mmio_awcache,
  io_mmio_awqos,
  io_mmio_wready,
  io_mmio_wvalid,
  io_mmio_wdata,
  io_mmio_wstrb,
  io_mmio_wlast,
  io_mmio_bready,
  io_mmio_bvalid,
  io_mmio_bresp,
  io_mmio_bid,
  io_mmio_buser,
  io_mmio_arready,
  io_mmio_arvalid,
  io_mmio_araddr,
  io_mmio_arprot,
  io_mmio_arid,
  io_mmio_aruser,
  io_mmio_arlen,
  io_mmio_arsize,
  io_mmio_arburst,
  io_mmio_arlock,
  io_mmio_arcache,
  io_mmio_arqos,
  io_mmio_rready,
  io_mmio_rvalid,
  io_mmio_rresp,
  io_mmio_rdata,
  io_mmio_rlast,
  io_mmio_rid,
  io_mmio_ruser,
  io_frontend_awready,
  io_frontend_awvalid,
  io_frontend_awaddr,
  io_frontend_awprot,
  io_frontend_awid,
  io_frontend_awuser,
  io_frontend_awlen,
  io_frontend_awsize,
  io_frontend_awburst,
  io_frontend_awlock,
  io_frontend_awcache,
  io_frontend_awqos,
  io_frontend_wready,
  io_frontend_wvalid,
  io_frontend_wdata,
  io_frontend_wstrb,
  io_frontend_wlast,
  io_frontend_bready,
  io_frontend_bvalid,
  io_frontend_bresp,
  io_frontend_bid,
  io_frontend_buser,
  io_frontend_arready,
  io_frontend_arvalid,
  io_frontend_araddr,
  io_frontend_arprot,
  io_frontend_arid,
  io_frontend_aruser,
  io_frontend_arlen,
  io_frontend_arsize,
  io_frontend_arburst,
  io_frontend_arlock,
  io_frontend_arcache,
  io_frontend_arqos,
  io_frontend_rready,
  io_frontend_rvalid,
  io_frontend_rresp,
  io_frontend_rdata,
  io_frontend_rlast,
  io_frontend_rid,
  io_frontend_ruser,
  io_meip,
  io_ila_WBUpc,
  io_ila_WBUvalid,
  io_ila_WBUrfWen,
  io_ila_WBUrfDest,
  io_ila_WBUrfData,
  io_ila_InstrCnt
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_BUSIF io_frontend:io_mem:io_mmio, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN nutshell_coreclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *)
input wire clock;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWREADY" *)
input wire io_mem_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWVALID" *)
output wire io_mem_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWADDR" *)
output wire [31 : 0] io_mem_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWPROT" *)
output wire [2 : 0] io_mem_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWID" *)
output wire io_mem_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWUSER" *)
output wire io_mem_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWLEN" *)
output wire [7 : 0] io_mem_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWSIZE" *)
output wire [2 : 0] io_mem_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWBURST" *)
output wire [1 : 0] io_mem_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWLOCK" *)
output wire io_mem_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWCACHE" *)
output wire [3 : 0] io_mem_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem AWQOS" *)
output wire [3 : 0] io_mem_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem WREADY" *)
input wire io_mem_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem WVALID" *)
output wire io_mem_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem WDATA" *)
output wire [63 : 0] io_mem_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem WSTRB" *)
output wire [7 : 0] io_mem_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem WLAST" *)
output wire io_mem_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem BREADY" *)
output wire io_mem_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem BVALID" *)
input wire io_mem_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem BRESP" *)
input wire [1 : 0] io_mem_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem BID" *)
input wire io_mem_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem BUSER" *)
input wire io_mem_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARREADY" *)
input wire io_mem_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARVALID" *)
output wire io_mem_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARADDR" *)
output wire [31 : 0] io_mem_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARPROT" *)
output wire [2 : 0] io_mem_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARID" *)
output wire io_mem_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARUSER" *)
output wire io_mem_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARLEN" *)
output wire [7 : 0] io_mem_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARSIZE" *)
output wire [2 : 0] io_mem_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARBURST" *)
output wire [1 : 0] io_mem_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARLOCK" *)
output wire io_mem_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARCACHE" *)
output wire [3 : 0] io_mem_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem ARQOS" *)
output wire [3 : 0] io_mem_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem RREADY" *)
output wire io_mem_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem RVALID" *)
input wire io_mem_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem RRESP" *)
input wire [1 : 0] io_mem_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem RDATA" *)
input wire [63 : 0] io_mem_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem RLAST" *)
input wire io_mem_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem RID" *)
input wire io_mem_rid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_mem, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 0, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nutshell_coreclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, \
RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mem RUSER" *)
input wire io_mem_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWREADY" *)
input wire io_mmio_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWVALID" *)
output wire io_mmio_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWADDR" *)
output wire [31 : 0] io_mmio_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWPROT" *)
output wire [2 : 0] io_mmio_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWID" *)
output wire io_mmio_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWUSER" *)
output wire io_mmio_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWLEN" *)
output wire [7 : 0] io_mmio_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWSIZE" *)
output wire [2 : 0] io_mmio_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWBURST" *)
output wire [1 : 0] io_mmio_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWLOCK" *)
output wire io_mmio_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWCACHE" *)
output wire [3 : 0] io_mmio_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio AWQOS" *)
output wire [3 : 0] io_mmio_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio WREADY" *)
input wire io_mmio_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio WVALID" *)
output wire io_mmio_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio WDATA" *)
output wire [63 : 0] io_mmio_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio WSTRB" *)
output wire [7 : 0] io_mmio_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio WLAST" *)
output wire io_mmio_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio BREADY" *)
output wire io_mmio_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio BVALID" *)
input wire io_mmio_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio BRESP" *)
input wire [1 : 0] io_mmio_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio BID" *)
input wire io_mmio_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio BUSER" *)
input wire io_mmio_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARREADY" *)
input wire io_mmio_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARVALID" *)
output wire io_mmio_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARADDR" *)
output wire [31 : 0] io_mmio_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARPROT" *)
output wire [2 : 0] io_mmio_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARID" *)
output wire io_mmio_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARUSER" *)
output wire io_mmio_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARLEN" *)
output wire [7 : 0] io_mmio_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARSIZE" *)
output wire [2 : 0] io_mmio_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARBURST" *)
output wire [1 : 0] io_mmio_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARLOCK" *)
output wire io_mmio_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARCACHE" *)
output wire [3 : 0] io_mmio_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio ARQOS" *)
output wire [3 : 0] io_mmio_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio RREADY" *)
output wire io_mmio_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio RVALID" *)
input wire io_mmio_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio RRESP" *)
input wire [1 : 0] io_mmio_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio RDATA" *)
input wire [63 : 0] io_mmio_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio RLAST" *)
input wire io_mmio_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio RID" *)
input wire io_mmio_rid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_mmio, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 0, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nutshell_coreclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1,\
 RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_mmio RUSER" *)
input wire io_mmio_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWREADY" *)
output wire io_frontend_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWVALID" *)
input wire io_frontend_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWADDR" *)
input wire [31 : 0] io_frontend_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWPROT" *)
input wire [2 : 0] io_frontend_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWID" *)
input wire io_frontend_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWUSER" *)
input wire io_frontend_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWLEN" *)
input wire [7 : 0] io_frontend_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWSIZE" *)
input wire [2 : 0] io_frontend_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWBURST" *)
input wire [1 : 0] io_frontend_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWLOCK" *)
input wire io_frontend_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWCACHE" *)
input wire [3 : 0] io_frontend_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend AWQOS" *)
input wire [3 : 0] io_frontend_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend WREADY" *)
output wire io_frontend_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend WVALID" *)
input wire io_frontend_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend WDATA" *)
input wire [63 : 0] io_frontend_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend WSTRB" *)
input wire [7 : 0] io_frontend_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend WLAST" *)
input wire io_frontend_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend BREADY" *)
input wire io_frontend_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend BVALID" *)
output wire io_frontend_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend BRESP" *)
output wire [1 : 0] io_frontend_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend BID" *)
output wire io_frontend_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend BUSER" *)
output wire io_frontend_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARREADY" *)
output wire io_frontend_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARVALID" *)
input wire io_frontend_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARADDR" *)
input wire [31 : 0] io_frontend_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARPROT" *)
input wire [2 : 0] io_frontend_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARID" *)
input wire io_frontend_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARUSER" *)
input wire io_frontend_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARLEN" *)
input wire [7 : 0] io_frontend_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARSIZE" *)
input wire [2 : 0] io_frontend_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARBURST" *)
input wire [1 : 0] io_frontend_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARLOCK" *)
input wire io_frontend_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARCACHE" *)
input wire [3 : 0] io_frontend_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend ARQOS" *)
input wire [3 : 0] io_frontend_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend RREADY" *)
input wire io_frontend_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend RVALID" *)
output wire io_frontend_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend RRESP" *)
output wire [1 : 0] io_frontend_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend RDATA" *)
output wire [63 : 0] io_frontend_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend RLAST" *)
output wire io_frontend_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend RID" *)
output wire io_frontend_rid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_frontend, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 0, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nutshell_coreclk, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_frontend RUSER" *)
output wire io_frontend_ruser;
input wire [2 : 0] io_meip;
output wire [38 : 0] io_ila_WBUpc;
output wire io_ila_WBUvalid;
output wire io_ila_WBUrfWen;
output wire [4 : 0] io_ila_WBUrfDest;
output wire [63 : 0] io_ila_WBUrfData;
output wire [63 : 0] io_ila_InstrCnt;

  NutShell inst (
    .clock(clock),
    .reset(reset),
    .io_mem_awready(io_mem_awready),
    .io_mem_awvalid(io_mem_awvalid),
    .io_mem_awaddr(io_mem_awaddr),
    .io_mem_awprot(io_mem_awprot),
    .io_mem_awid(io_mem_awid),
    .io_mem_awuser(io_mem_awuser),
    .io_mem_awlen(io_mem_awlen),
    .io_mem_awsize(io_mem_awsize),
    .io_mem_awburst(io_mem_awburst),
    .io_mem_awlock(io_mem_awlock),
    .io_mem_awcache(io_mem_awcache),
    .io_mem_awqos(io_mem_awqos),
    .io_mem_wready(io_mem_wready),
    .io_mem_wvalid(io_mem_wvalid),
    .io_mem_wdata(io_mem_wdata),
    .io_mem_wstrb(io_mem_wstrb),
    .io_mem_wlast(io_mem_wlast),
    .io_mem_bready(io_mem_bready),
    .io_mem_bvalid(io_mem_bvalid),
    .io_mem_bresp(io_mem_bresp),
    .io_mem_bid(io_mem_bid),
    .io_mem_buser(io_mem_buser),
    .io_mem_arready(io_mem_arready),
    .io_mem_arvalid(io_mem_arvalid),
    .io_mem_araddr(io_mem_araddr),
    .io_mem_arprot(io_mem_arprot),
    .io_mem_arid(io_mem_arid),
    .io_mem_aruser(io_mem_aruser),
    .io_mem_arlen(io_mem_arlen),
    .io_mem_arsize(io_mem_arsize),
    .io_mem_arburst(io_mem_arburst),
    .io_mem_arlock(io_mem_arlock),
    .io_mem_arcache(io_mem_arcache),
    .io_mem_arqos(io_mem_arqos),
    .io_mem_rready(io_mem_rready),
    .io_mem_rvalid(io_mem_rvalid),
    .io_mem_rresp(io_mem_rresp),
    .io_mem_rdata(io_mem_rdata),
    .io_mem_rlast(io_mem_rlast),
    .io_mem_rid(io_mem_rid),
    .io_mem_ruser(io_mem_ruser),
    .io_mmio_awready(io_mmio_awready),
    .io_mmio_awvalid(io_mmio_awvalid),
    .io_mmio_awaddr(io_mmio_awaddr),
    .io_mmio_awprot(io_mmio_awprot),
    .io_mmio_awid(io_mmio_awid),
    .io_mmio_awuser(io_mmio_awuser),
    .io_mmio_awlen(io_mmio_awlen),
    .io_mmio_awsize(io_mmio_awsize),
    .io_mmio_awburst(io_mmio_awburst),
    .io_mmio_awlock(io_mmio_awlock),
    .io_mmio_awcache(io_mmio_awcache),
    .io_mmio_awqos(io_mmio_awqos),
    .io_mmio_wready(io_mmio_wready),
    .io_mmio_wvalid(io_mmio_wvalid),
    .io_mmio_wdata(io_mmio_wdata),
    .io_mmio_wstrb(io_mmio_wstrb),
    .io_mmio_wlast(io_mmio_wlast),
    .io_mmio_bready(io_mmio_bready),
    .io_mmio_bvalid(io_mmio_bvalid),
    .io_mmio_bresp(io_mmio_bresp),
    .io_mmio_bid(io_mmio_bid),
    .io_mmio_buser(io_mmio_buser),
    .io_mmio_arready(io_mmio_arready),
    .io_mmio_arvalid(io_mmio_arvalid),
    .io_mmio_araddr(io_mmio_araddr),
    .io_mmio_arprot(io_mmio_arprot),
    .io_mmio_arid(io_mmio_arid),
    .io_mmio_aruser(io_mmio_aruser),
    .io_mmio_arlen(io_mmio_arlen),
    .io_mmio_arsize(io_mmio_arsize),
    .io_mmio_arburst(io_mmio_arburst),
    .io_mmio_arlock(io_mmio_arlock),
    .io_mmio_arcache(io_mmio_arcache),
    .io_mmio_arqos(io_mmio_arqos),
    .io_mmio_rready(io_mmio_rready),
    .io_mmio_rvalid(io_mmio_rvalid),
    .io_mmio_rresp(io_mmio_rresp),
    .io_mmio_rdata(io_mmio_rdata),
    .io_mmio_rlast(io_mmio_rlast),
    .io_mmio_rid(io_mmio_rid),
    .io_mmio_ruser(io_mmio_ruser),
    .io_frontend_awready(io_frontend_awready),
    .io_frontend_awvalid(io_frontend_awvalid),
    .io_frontend_awaddr(io_frontend_awaddr),
    .io_frontend_awprot(io_frontend_awprot),
    .io_frontend_awid(io_frontend_awid),
    .io_frontend_awuser(io_frontend_awuser),
    .io_frontend_awlen(io_frontend_awlen),
    .io_frontend_awsize(io_frontend_awsize),
    .io_frontend_awburst(io_frontend_awburst),
    .io_frontend_awlock(io_frontend_awlock),
    .io_frontend_awcache(io_frontend_awcache),
    .io_frontend_awqos(io_frontend_awqos),
    .io_frontend_wready(io_frontend_wready),
    .io_frontend_wvalid(io_frontend_wvalid),
    .io_frontend_wdata(io_frontend_wdata),
    .io_frontend_wstrb(io_frontend_wstrb),
    .io_frontend_wlast(io_frontend_wlast),
    .io_frontend_bready(io_frontend_bready),
    .io_frontend_bvalid(io_frontend_bvalid),
    .io_frontend_bresp(io_frontend_bresp),
    .io_frontend_bid(io_frontend_bid),
    .io_frontend_buser(io_frontend_buser),
    .io_frontend_arready(io_frontend_arready),
    .io_frontend_arvalid(io_frontend_arvalid),
    .io_frontend_araddr(io_frontend_araddr),
    .io_frontend_arprot(io_frontend_arprot),
    .io_frontend_arid(io_frontend_arid),
    .io_frontend_aruser(io_frontend_aruser),
    .io_frontend_arlen(io_frontend_arlen),
    .io_frontend_arsize(io_frontend_arsize),
    .io_frontend_arburst(io_frontend_arburst),
    .io_frontend_arlock(io_frontend_arlock),
    .io_frontend_arcache(io_frontend_arcache),
    .io_frontend_arqos(io_frontend_arqos),
    .io_frontend_rready(io_frontend_rready),
    .io_frontend_rvalid(io_frontend_rvalid),
    .io_frontend_rresp(io_frontend_rresp),
    .io_frontend_rdata(io_frontend_rdata),
    .io_frontend_rlast(io_frontend_rlast),
    .io_frontend_rid(io_frontend_rid),
    .io_frontend_ruser(io_frontend_ruser),
    .io_meip(io_meip),
    .io_ila_WBUpc(io_ila_WBUpc),
    .io_ila_WBUvalid(io_ila_WBUvalid),
    .io_ila_WBUrfWen(io_ila_WBUrfWen),
    .io_ila_WBUrfDest(io_ila_WBUrfDest),
    .io_ila_WBUrfData(io_ila_WBUrfData),
    .io_ila_InstrCnt(io_ila_InstrCnt)
  );
endmodule
