//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Tue Aug 16 10:30:21 2022
//Host        : stu running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target nutshell_wrapper.bd
//Design      : nutshell_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module nutshell_wrapper
   (AXI_DMA_araddr,
    AXI_DMA_arburst,
    AXI_DMA_arcache,
    AXI_DMA_arid,
    AXI_DMA_arlen,
    AXI_DMA_arlock,
    AXI_DMA_arprot,
    AXI_DMA_arqos,
    AXI_DMA_arready,
    AXI_DMA_arregion,
    AXI_DMA_arsize,
    AXI_DMA_arvalid,
    AXI_DMA_awaddr,
    AXI_DMA_awburst,
    AXI_DMA_awcache,
    AXI_DMA_awid,
    AXI_DMA_awlen,
    AXI_DMA_awlock,
    AXI_DMA_awprot,
    AXI_DMA_awqos,
    AXI_DMA_awready,
    AXI_DMA_awregion,
    AXI_DMA_awsize,
    AXI_DMA_awvalid,
    AXI_DMA_bid,
    AXI_DMA_bready,
    AXI_DMA_bresp,
    AXI_DMA_bvalid,
    AXI_DMA_rdata,
    AXI_DMA_rid,
    AXI_DMA_rlast,
    AXI_DMA_rready,
    AXI_DMA_rresp,
    AXI_DMA_rvalid,
    AXI_DMA_wdata,
    AXI_DMA_wlast,
    AXI_DMA_wready,
    AXI_DMA_wstrb,
    AXI_DMA_wvalid,
    AXI_MEM_araddr,
    AXI_MEM_arburst,
    AXI_MEM_arcache,
    AXI_MEM_arid,
    AXI_MEM_arlen,
    AXI_MEM_arlock,
    AXI_MEM_arprot,
    AXI_MEM_arqos,
    AXI_MEM_arready,
    AXI_MEM_arregion,
    AXI_MEM_arsize,
    AXI_MEM_aruser,
    AXI_MEM_arvalid,
    AXI_MEM_awaddr,
    AXI_MEM_awburst,
    AXI_MEM_awcache,
    AXI_MEM_awid,
    AXI_MEM_awlen,
    AXI_MEM_awlock,
    AXI_MEM_awprot,
    AXI_MEM_awqos,
    AXI_MEM_awready,
    AXI_MEM_awregion,
    AXI_MEM_awsize,
    AXI_MEM_awuser,
    AXI_MEM_awvalid,
    AXI_MEM_bid,
    AXI_MEM_bready,
    AXI_MEM_bresp,
    AXI_MEM_buser,
    AXI_MEM_bvalid,
    AXI_MEM_rdata,
    AXI_MEM_rid,
    AXI_MEM_rlast,
    AXI_MEM_rready,
    AXI_MEM_rresp,
    AXI_MEM_ruser,
    AXI_MEM_rvalid,
    AXI_MEM_wdata,
    AXI_MEM_wlast,
    AXI_MEM_wready,
    AXI_MEM_wstrb,
    AXI_MEM_wvalid,
    AXI_MMIO_araddr,
    AXI_MMIO_arburst,
    AXI_MMIO_arcache,
    AXI_MMIO_arid,
    AXI_MMIO_arlen,
    AXI_MMIO_arlock,
    AXI_MMIO_arprot,
    AXI_MMIO_arqos,
    AXI_MMIO_arready,
    AXI_MMIO_arregion,
    AXI_MMIO_arsize,
    AXI_MMIO_aruser,
    AXI_MMIO_arvalid,
    AXI_MMIO_awaddr,
    AXI_MMIO_awburst,
    AXI_MMIO_awcache,
    AXI_MMIO_awid,
    AXI_MMIO_awlen,
    AXI_MMIO_awlock,
    AXI_MMIO_awprot,
    AXI_MMIO_awqos,
    AXI_MMIO_awready,
    AXI_MMIO_awregion,
    AXI_MMIO_awsize,
    AXI_MMIO_awuser,
    AXI_MMIO_awvalid,
    AXI_MMIO_bid,
    AXI_MMIO_bready,
    AXI_MMIO_bresp,
    AXI_MMIO_buser,
    AXI_MMIO_bvalid,
    AXI_MMIO_rdata,
    AXI_MMIO_rid,
    AXI_MMIO_rlast,
    AXI_MMIO_rready,
    AXI_MMIO_rresp,
    AXI_MMIO_ruser,
    AXI_MMIO_rvalid,
    AXI_MMIO_wdata,
    AXI_MMIO_wlast,
    AXI_MMIO_wready,
    AXI_MMIO_wstrb,
    AXI_MMIO_wvalid,
    coreclk,
    corerstn,
    intrs,
    uncoreclk,
    uncorerstn);
  input [31:0]AXI_DMA_araddr;
  input [1:0]AXI_DMA_arburst;
  input [3:0]AXI_DMA_arcache;
  input [15:0]AXI_DMA_arid;
  input [7:0]AXI_DMA_arlen;
  input [0:0]AXI_DMA_arlock;
  input [2:0]AXI_DMA_arprot;
  input [3:0]AXI_DMA_arqos;
  output AXI_DMA_arready;
  input [3:0]AXI_DMA_arregion;
  input [2:0]AXI_DMA_arsize;
  input AXI_DMA_arvalid;
  input [31:0]AXI_DMA_awaddr;
  input [1:0]AXI_DMA_awburst;
  input [3:0]AXI_DMA_awcache;
  input [15:0]AXI_DMA_awid;
  input [7:0]AXI_DMA_awlen;
  input [0:0]AXI_DMA_awlock;
  input [2:0]AXI_DMA_awprot;
  input [3:0]AXI_DMA_awqos;
  output AXI_DMA_awready;
  input [3:0]AXI_DMA_awregion;
  input [2:0]AXI_DMA_awsize;
  input AXI_DMA_awvalid;
  output [15:0]AXI_DMA_bid;
  input AXI_DMA_bready;
  output [1:0]AXI_DMA_bresp;
  output AXI_DMA_bvalid;
  output [63:0]AXI_DMA_rdata;
  output [15:0]AXI_DMA_rid;
  output AXI_DMA_rlast;
  input AXI_DMA_rready;
  output [1:0]AXI_DMA_rresp;
  output AXI_DMA_rvalid;
  input [63:0]AXI_DMA_wdata;
  input AXI_DMA_wlast;
  output AXI_DMA_wready;
  input [7:0]AXI_DMA_wstrb;
  input AXI_DMA_wvalid;
  output [31:0]AXI_MEM_araddr;
  output [1:0]AXI_MEM_arburst;
  output [3:0]AXI_MEM_arcache;
  output [0:0]AXI_MEM_arid;
  output [7:0]AXI_MEM_arlen;
  output [0:0]AXI_MEM_arlock;
  output [2:0]AXI_MEM_arprot;
  output [3:0]AXI_MEM_arqos;
  input AXI_MEM_arready;
  output [3:0]AXI_MEM_arregion;
  output [2:0]AXI_MEM_arsize;
  output [0:0]AXI_MEM_aruser;
  output AXI_MEM_arvalid;
  output [31:0]AXI_MEM_awaddr;
  output [1:0]AXI_MEM_awburst;
  output [3:0]AXI_MEM_awcache;
  output [0:0]AXI_MEM_awid;
  output [7:0]AXI_MEM_awlen;
  output [0:0]AXI_MEM_awlock;
  output [2:0]AXI_MEM_awprot;
  output [3:0]AXI_MEM_awqos;
  input AXI_MEM_awready;
  output [3:0]AXI_MEM_awregion;
  output [2:0]AXI_MEM_awsize;
  output [0:0]AXI_MEM_awuser;
  output AXI_MEM_awvalid;
  input [0:0]AXI_MEM_bid;
  output AXI_MEM_bready;
  input [1:0]AXI_MEM_bresp;
  input [0:0]AXI_MEM_buser;
  input AXI_MEM_bvalid;
  input [63:0]AXI_MEM_rdata;
  input [0:0]AXI_MEM_rid;
  input AXI_MEM_rlast;
  output AXI_MEM_rready;
  input [1:0]AXI_MEM_rresp;
  input [0:0]AXI_MEM_ruser;
  input AXI_MEM_rvalid;
  output [63:0]AXI_MEM_wdata;
  output AXI_MEM_wlast;
  input AXI_MEM_wready;
  output [7:0]AXI_MEM_wstrb;
  output AXI_MEM_wvalid;
  output [31:0]AXI_MMIO_araddr;
  output [1:0]AXI_MMIO_arburst;
  output [3:0]AXI_MMIO_arcache;
  output [0:0]AXI_MMIO_arid;
  output [7:0]AXI_MMIO_arlen;
  output [0:0]AXI_MMIO_arlock;
  output [2:0]AXI_MMIO_arprot;
  output [3:0]AXI_MMIO_arqos;
  input AXI_MMIO_arready;
  output [3:0]AXI_MMIO_arregion;
  output [2:0]AXI_MMIO_arsize;
  output [0:0]AXI_MMIO_aruser;
  output AXI_MMIO_arvalid;
  output [31:0]AXI_MMIO_awaddr;
  output [1:0]AXI_MMIO_awburst;
  output [3:0]AXI_MMIO_awcache;
  output [0:0]AXI_MMIO_awid;
  output [7:0]AXI_MMIO_awlen;
  output [0:0]AXI_MMIO_awlock;
  output [2:0]AXI_MMIO_awprot;
  output [3:0]AXI_MMIO_awqos;
  input AXI_MMIO_awready;
  output [3:0]AXI_MMIO_awregion;
  output [2:0]AXI_MMIO_awsize;
  output [0:0]AXI_MMIO_awuser;
  output AXI_MMIO_awvalid;
  input [0:0]AXI_MMIO_bid;
  output AXI_MMIO_bready;
  input [1:0]AXI_MMIO_bresp;
  input [0:0]AXI_MMIO_buser;
  input AXI_MMIO_bvalid;
  input [63:0]AXI_MMIO_rdata;
  input [0:0]AXI_MMIO_rid;
  input AXI_MMIO_rlast;
  output AXI_MMIO_rready;
  input [1:0]AXI_MMIO_rresp;
  input [0:0]AXI_MMIO_ruser;
  input AXI_MMIO_rvalid;
  output [63:0]AXI_MMIO_wdata;
  output AXI_MMIO_wlast;
  input AXI_MMIO_wready;
  output [7:0]AXI_MMIO_wstrb;
  output AXI_MMIO_wvalid;
  input coreclk;
  input corerstn;
  input [4:0]intrs;
  input uncoreclk;
  input uncorerstn;

  wire [31:0]AXI_DMA_araddr;
  wire [1:0]AXI_DMA_arburst;
  wire [3:0]AXI_DMA_arcache;
  wire [15:0]AXI_DMA_arid;
  wire [7:0]AXI_DMA_arlen;
  wire [0:0]AXI_DMA_arlock;
  wire [2:0]AXI_DMA_arprot;
  wire [3:0]AXI_DMA_arqos;
  wire AXI_DMA_arready;
  wire [3:0]AXI_DMA_arregion;
  wire [2:0]AXI_DMA_arsize;
  wire AXI_DMA_arvalid;
  wire [31:0]AXI_DMA_awaddr;
  wire [1:0]AXI_DMA_awburst;
  wire [3:0]AXI_DMA_awcache;
  wire [15:0]AXI_DMA_awid;
  wire [7:0]AXI_DMA_awlen;
  wire [0:0]AXI_DMA_awlock;
  wire [2:0]AXI_DMA_awprot;
  wire [3:0]AXI_DMA_awqos;
  wire AXI_DMA_awready;
  wire [3:0]AXI_DMA_awregion;
  wire [2:0]AXI_DMA_awsize;
  wire AXI_DMA_awvalid;
  wire [15:0]AXI_DMA_bid;
  wire AXI_DMA_bready;
  wire [1:0]AXI_DMA_bresp;
  wire AXI_DMA_bvalid;
  wire [63:0]AXI_DMA_rdata;
  wire [15:0]AXI_DMA_rid;
  wire AXI_DMA_rlast;
  wire AXI_DMA_rready;
  wire [1:0]AXI_DMA_rresp;
  wire AXI_DMA_rvalid;
  wire [63:0]AXI_DMA_wdata;
  wire AXI_DMA_wlast;
  wire AXI_DMA_wready;
  wire [7:0]AXI_DMA_wstrb;
  wire AXI_DMA_wvalid;
  wire [31:0]AXI_MEM_araddr;
  wire [1:0]AXI_MEM_arburst;
  wire [3:0]AXI_MEM_arcache;
  wire [0:0]AXI_MEM_arid;
  wire [7:0]AXI_MEM_arlen;
  wire [0:0]AXI_MEM_arlock;
  wire [2:0]AXI_MEM_arprot;
  wire [3:0]AXI_MEM_arqos;
  wire AXI_MEM_arready;
  wire [3:0]AXI_MEM_arregion;
  wire [2:0]AXI_MEM_arsize;
  wire [0:0]AXI_MEM_aruser;
  wire AXI_MEM_arvalid;
  wire [31:0]AXI_MEM_awaddr;
  wire [1:0]AXI_MEM_awburst;
  wire [3:0]AXI_MEM_awcache;
  wire [0:0]AXI_MEM_awid;
  wire [7:0]AXI_MEM_awlen;
  wire [0:0]AXI_MEM_awlock;
  wire [2:0]AXI_MEM_awprot;
  wire [3:0]AXI_MEM_awqos;
  wire AXI_MEM_awready;
  wire [3:0]AXI_MEM_awregion;
  wire [2:0]AXI_MEM_awsize;
  wire [0:0]AXI_MEM_awuser;
  wire AXI_MEM_awvalid;
  wire [0:0]AXI_MEM_bid;
  wire AXI_MEM_bready;
  wire [1:0]AXI_MEM_bresp;
  wire [0:0]AXI_MEM_buser;
  wire AXI_MEM_bvalid;
  wire [63:0]AXI_MEM_rdata;
  wire [0:0]AXI_MEM_rid;
  wire AXI_MEM_rlast;
  wire AXI_MEM_rready;
  wire [1:0]AXI_MEM_rresp;
  wire [0:0]AXI_MEM_ruser;
  wire AXI_MEM_rvalid;
  wire [63:0]AXI_MEM_wdata;
  wire AXI_MEM_wlast;
  wire AXI_MEM_wready;
  wire [7:0]AXI_MEM_wstrb;
  wire AXI_MEM_wvalid;
  wire [31:0]AXI_MMIO_araddr;
  wire [1:0]AXI_MMIO_arburst;
  wire [3:0]AXI_MMIO_arcache;
  wire [0:0]AXI_MMIO_arid;
  wire [7:0]AXI_MMIO_arlen;
  wire [0:0]AXI_MMIO_arlock;
  wire [2:0]AXI_MMIO_arprot;
  wire [3:0]AXI_MMIO_arqos;
  wire AXI_MMIO_arready;
  wire [3:0]AXI_MMIO_arregion;
  wire [2:0]AXI_MMIO_arsize;
  wire [0:0]AXI_MMIO_aruser;
  wire AXI_MMIO_arvalid;
  wire [31:0]AXI_MMIO_awaddr;
  wire [1:0]AXI_MMIO_awburst;
  wire [3:0]AXI_MMIO_awcache;
  wire [0:0]AXI_MMIO_awid;
  wire [7:0]AXI_MMIO_awlen;
  wire [0:0]AXI_MMIO_awlock;
  wire [2:0]AXI_MMIO_awprot;
  wire [3:0]AXI_MMIO_awqos;
  wire AXI_MMIO_awready;
  wire [3:0]AXI_MMIO_awregion;
  wire [2:0]AXI_MMIO_awsize;
  wire [0:0]AXI_MMIO_awuser;
  wire AXI_MMIO_awvalid;
  wire [0:0]AXI_MMIO_bid;
  wire AXI_MMIO_bready;
  wire [1:0]AXI_MMIO_bresp;
  wire [0:0]AXI_MMIO_buser;
  wire AXI_MMIO_bvalid;
  wire [63:0]AXI_MMIO_rdata;
  wire [0:0]AXI_MMIO_rid;
  wire AXI_MMIO_rlast;
  wire AXI_MMIO_rready;
  wire [1:0]AXI_MMIO_rresp;
  wire [0:0]AXI_MMIO_ruser;
  wire AXI_MMIO_rvalid;
  wire [63:0]AXI_MMIO_wdata;
  wire AXI_MMIO_wlast;
  wire AXI_MMIO_wready;
  wire [7:0]AXI_MMIO_wstrb;
  wire AXI_MMIO_wvalid;
  wire coreclk;
  wire corerstn;
  wire [4:0]intrs;
  wire uncoreclk;
  wire uncorerstn;

  nutshell nutshell_i
       (.AXI_DMA_araddr(AXI_DMA_araddr),
        .AXI_DMA_arburst(AXI_DMA_arburst),
        .AXI_DMA_arcache(AXI_DMA_arcache),
        .AXI_DMA_arid(AXI_DMA_arid),
        .AXI_DMA_arlen(AXI_DMA_arlen),
        .AXI_DMA_arlock(AXI_DMA_arlock),
        .AXI_DMA_arprot(AXI_DMA_arprot),
        .AXI_DMA_arqos(AXI_DMA_arqos),
        .AXI_DMA_arready(AXI_DMA_arready),
        .AXI_DMA_arregion(AXI_DMA_arregion),
        .AXI_DMA_arsize(AXI_DMA_arsize),
        .AXI_DMA_arvalid(AXI_DMA_arvalid),
        .AXI_DMA_awaddr(AXI_DMA_awaddr),
        .AXI_DMA_awburst(AXI_DMA_awburst),
        .AXI_DMA_awcache(AXI_DMA_awcache),
        .AXI_DMA_awid(AXI_DMA_awid),
        .AXI_DMA_awlen(AXI_DMA_awlen),
        .AXI_DMA_awlock(AXI_DMA_awlock),
        .AXI_DMA_awprot(AXI_DMA_awprot),
        .AXI_DMA_awqos(AXI_DMA_awqos),
        .AXI_DMA_awready(AXI_DMA_awready),
        .AXI_DMA_awregion(AXI_DMA_awregion),
        .AXI_DMA_awsize(AXI_DMA_awsize),
        .AXI_DMA_awvalid(AXI_DMA_awvalid),
        .AXI_DMA_bid(AXI_DMA_bid),
        .AXI_DMA_bready(AXI_DMA_bready),
        .AXI_DMA_bresp(AXI_DMA_bresp),
        .AXI_DMA_bvalid(AXI_DMA_bvalid),
        .AXI_DMA_rdata(AXI_DMA_rdata),
        .AXI_DMA_rid(AXI_DMA_rid),
        .AXI_DMA_rlast(AXI_DMA_rlast),
        .AXI_DMA_rready(AXI_DMA_rready),
        .AXI_DMA_rresp(AXI_DMA_rresp),
        .AXI_DMA_rvalid(AXI_DMA_rvalid),
        .AXI_DMA_wdata(AXI_DMA_wdata),
        .AXI_DMA_wlast(AXI_DMA_wlast),
        .AXI_DMA_wready(AXI_DMA_wready),
        .AXI_DMA_wstrb(AXI_DMA_wstrb),
        .AXI_DMA_wvalid(AXI_DMA_wvalid),
        .AXI_MEM_araddr(AXI_MEM_araddr),
        .AXI_MEM_arburst(AXI_MEM_arburst),
        .AXI_MEM_arcache(AXI_MEM_arcache),
        .AXI_MEM_arid(AXI_MEM_arid),
        .AXI_MEM_arlen(AXI_MEM_arlen),
        .AXI_MEM_arlock(AXI_MEM_arlock),
        .AXI_MEM_arprot(AXI_MEM_arprot),
        .AXI_MEM_arqos(AXI_MEM_arqos),
        .AXI_MEM_arready(AXI_MEM_arready),
        .AXI_MEM_arregion(AXI_MEM_arregion),
        .AXI_MEM_arsize(AXI_MEM_arsize),
        .AXI_MEM_aruser(AXI_MEM_aruser),
        .AXI_MEM_arvalid(AXI_MEM_arvalid),
        .AXI_MEM_awaddr(AXI_MEM_awaddr),
        .AXI_MEM_awburst(AXI_MEM_awburst),
        .AXI_MEM_awcache(AXI_MEM_awcache),
        .AXI_MEM_awid(AXI_MEM_awid),
        .AXI_MEM_awlen(AXI_MEM_awlen),
        .AXI_MEM_awlock(AXI_MEM_awlock),
        .AXI_MEM_awprot(AXI_MEM_awprot),
        .AXI_MEM_awqos(AXI_MEM_awqos),
        .AXI_MEM_awready(AXI_MEM_awready),
        .AXI_MEM_awregion(AXI_MEM_awregion),
        .AXI_MEM_awsize(AXI_MEM_awsize),
        .AXI_MEM_awuser(AXI_MEM_awuser),
        .AXI_MEM_awvalid(AXI_MEM_awvalid),
        .AXI_MEM_bid(AXI_MEM_bid),
        .AXI_MEM_bready(AXI_MEM_bready),
        .AXI_MEM_bresp(AXI_MEM_bresp),
        .AXI_MEM_buser(AXI_MEM_buser),
        .AXI_MEM_bvalid(AXI_MEM_bvalid),
        .AXI_MEM_rdata(AXI_MEM_rdata),
        .AXI_MEM_rid(AXI_MEM_rid),
        .AXI_MEM_rlast(AXI_MEM_rlast),
        .AXI_MEM_rready(AXI_MEM_rready),
        .AXI_MEM_rresp(AXI_MEM_rresp),
        .AXI_MEM_ruser(AXI_MEM_ruser),
        .AXI_MEM_rvalid(AXI_MEM_rvalid),
        .AXI_MEM_wdata(AXI_MEM_wdata),
        .AXI_MEM_wlast(AXI_MEM_wlast),
        .AXI_MEM_wready(AXI_MEM_wready),
        .AXI_MEM_wstrb(AXI_MEM_wstrb),
        .AXI_MEM_wvalid(AXI_MEM_wvalid),
        .AXI_MMIO_araddr(AXI_MMIO_araddr),
        .AXI_MMIO_arburst(AXI_MMIO_arburst),
        .AXI_MMIO_arcache(AXI_MMIO_arcache),
        .AXI_MMIO_arid(AXI_MMIO_arid),
        .AXI_MMIO_arlen(AXI_MMIO_arlen),
        .AXI_MMIO_arlock(AXI_MMIO_arlock),
        .AXI_MMIO_arprot(AXI_MMIO_arprot),
        .AXI_MMIO_arqos(AXI_MMIO_arqos),
        .AXI_MMIO_arready(AXI_MMIO_arready),
        .AXI_MMIO_arregion(AXI_MMIO_arregion),
        .AXI_MMIO_arsize(AXI_MMIO_arsize),
        .AXI_MMIO_aruser(AXI_MMIO_aruser),
        .AXI_MMIO_arvalid(AXI_MMIO_arvalid),
        .AXI_MMIO_awaddr(AXI_MMIO_awaddr),
        .AXI_MMIO_awburst(AXI_MMIO_awburst),
        .AXI_MMIO_awcache(AXI_MMIO_awcache),
        .AXI_MMIO_awid(AXI_MMIO_awid),
        .AXI_MMIO_awlen(AXI_MMIO_awlen),
        .AXI_MMIO_awlock(AXI_MMIO_awlock),
        .AXI_MMIO_awprot(AXI_MMIO_awprot),
        .AXI_MMIO_awqos(AXI_MMIO_awqos),
        .AXI_MMIO_awready(AXI_MMIO_awready),
        .AXI_MMIO_awregion(AXI_MMIO_awregion),
        .AXI_MMIO_awsize(AXI_MMIO_awsize),
        .AXI_MMIO_awuser(AXI_MMIO_awuser),
        .AXI_MMIO_awvalid(AXI_MMIO_awvalid),
        .AXI_MMIO_bid(AXI_MMIO_bid),
        .AXI_MMIO_bready(AXI_MMIO_bready),
        .AXI_MMIO_bresp(AXI_MMIO_bresp),
        .AXI_MMIO_buser(AXI_MMIO_buser),
        .AXI_MMIO_bvalid(AXI_MMIO_bvalid),
        .AXI_MMIO_rdata(AXI_MMIO_rdata),
        .AXI_MMIO_rid(AXI_MMIO_rid),
        .AXI_MMIO_rlast(AXI_MMIO_rlast),
        .AXI_MMIO_rready(AXI_MMIO_rready),
        .AXI_MMIO_rresp(AXI_MMIO_rresp),
        .AXI_MMIO_ruser(AXI_MMIO_ruser),
        .AXI_MMIO_rvalid(AXI_MMIO_rvalid),
        .AXI_MMIO_wdata(AXI_MMIO_wdata),
        .AXI_MMIO_wlast(AXI_MMIO_wlast),
        .AXI_MMIO_wready(AXI_MMIO_wready),
        .AXI_MMIO_wstrb(AXI_MMIO_wstrb),
        .AXI_MMIO_wvalid(AXI_MMIO_wvalid),
        .coreclk(coreclk),
        .corerstn(corerstn),
        .intrs(intrs),
        .uncoreclk(uncoreclk),
        .uncorerstn(uncorerstn));
endmodule
