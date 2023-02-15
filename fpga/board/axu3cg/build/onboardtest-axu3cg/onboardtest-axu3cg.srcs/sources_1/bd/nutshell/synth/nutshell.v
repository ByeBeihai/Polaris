//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Aug 17 01:50:31 2022
//Host        : stu running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target nutshell.bd
//Design      : nutshell
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "nutshell,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=nutshell,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=6,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "nutshell.hwdef" *) 
module nutshell
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_DMA, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]AXI_DMA_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARBURST" *) input [1:0]AXI_DMA_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARCACHE" *) input [3:0]AXI_DMA_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARID" *) input [15:0]AXI_DMA_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARLEN" *) input [7:0]AXI_DMA_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARLOCK" *) input [0:0]AXI_DMA_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARPROT" *) input [2:0]AXI_DMA_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARQOS" *) input [3:0]AXI_DMA_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARREADY" *) output AXI_DMA_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARREGION" *) input [3:0]AXI_DMA_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARSIZE" *) input [2:0]AXI_DMA_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARVALID" *) input AXI_DMA_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWADDR" *) input [31:0]AXI_DMA_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWBURST" *) input [1:0]AXI_DMA_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWCACHE" *) input [3:0]AXI_DMA_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWID" *) input [15:0]AXI_DMA_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWLEN" *) input [7:0]AXI_DMA_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWLOCK" *) input [0:0]AXI_DMA_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWPROT" *) input [2:0]AXI_DMA_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWQOS" *) input [3:0]AXI_DMA_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWREADY" *) output AXI_DMA_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWREGION" *) input [3:0]AXI_DMA_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWSIZE" *) input [2:0]AXI_DMA_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWVALID" *) input AXI_DMA_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA BID" *) output [15:0]AXI_DMA_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA BREADY" *) input AXI_DMA_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA BRESP" *) output [1:0]AXI_DMA_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA BVALID" *) output AXI_DMA_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RDATA" *) output [63:0]AXI_DMA_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RID" *) output [15:0]AXI_DMA_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RLAST" *) output AXI_DMA_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RREADY" *) input AXI_DMA_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RRESP" *) output [1:0]AXI_DMA_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RVALID" *) output AXI_DMA_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA WDATA" *) input [63:0]AXI_DMA_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA WLAST" *) input AXI_DMA_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA WREADY" *) output AXI_DMA_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA WSTRB" *) input [7:0]AXI_DMA_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA WVALID" *) input AXI_DMA_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_MEM, ADDR_WIDTH 32, ARUSER_WIDTH 1, AWUSER_WIDTH 1, BUSER_WIDTH 1, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 1, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]AXI_MEM_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARBURST" *) output [1:0]AXI_MEM_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARCACHE" *) output [3:0]AXI_MEM_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARID" *) output [0:0]AXI_MEM_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARLEN" *) output [7:0]AXI_MEM_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARLOCK" *) output [0:0]AXI_MEM_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARPROT" *) output [2:0]AXI_MEM_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARQOS" *) output [3:0]AXI_MEM_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARREADY" *) input AXI_MEM_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARREGION" *) output [3:0]AXI_MEM_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARSIZE" *) output [2:0]AXI_MEM_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARUSER" *) output [0:0]AXI_MEM_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARVALID" *) output AXI_MEM_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWADDR" *) output [31:0]AXI_MEM_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWBURST" *) output [1:0]AXI_MEM_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWCACHE" *) output [3:0]AXI_MEM_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWID" *) output [0:0]AXI_MEM_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWLEN" *) output [7:0]AXI_MEM_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWLOCK" *) output [0:0]AXI_MEM_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWPROT" *) output [2:0]AXI_MEM_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWQOS" *) output [3:0]AXI_MEM_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWREADY" *) input AXI_MEM_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWREGION" *) output [3:0]AXI_MEM_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWSIZE" *) output [2:0]AXI_MEM_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWUSER" *) output [0:0]AXI_MEM_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWVALID" *) output AXI_MEM_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM BID" *) input [0:0]AXI_MEM_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM BREADY" *) output AXI_MEM_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM BRESP" *) input [1:0]AXI_MEM_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM BUSER" *) input [0:0]AXI_MEM_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM BVALID" *) input AXI_MEM_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RDATA" *) input [63:0]AXI_MEM_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RID" *) input [0:0]AXI_MEM_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RLAST" *) input AXI_MEM_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RREADY" *) output AXI_MEM_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RRESP" *) input [1:0]AXI_MEM_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RUSER" *) input [0:0]AXI_MEM_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RVALID" *) input AXI_MEM_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM WDATA" *) output [63:0]AXI_MEM_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM WLAST" *) output AXI_MEM_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM WREADY" *) input AXI_MEM_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM WSTRB" *) output [7:0]AXI_MEM_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM WVALID" *) output AXI_MEM_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_MMIO, ADDR_WIDTH 32, ARUSER_WIDTH 1, AWUSER_WIDTH 1, BUSER_WIDTH 1, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 1, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]AXI_MMIO_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARBURST" *) output [1:0]AXI_MMIO_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARCACHE" *) output [3:0]AXI_MMIO_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARID" *) output [0:0]AXI_MMIO_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARLEN" *) output [7:0]AXI_MMIO_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARLOCK" *) output [0:0]AXI_MMIO_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARPROT" *) output [2:0]AXI_MMIO_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARQOS" *) output [3:0]AXI_MMIO_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARREADY" *) input AXI_MMIO_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARREGION" *) output [3:0]AXI_MMIO_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARSIZE" *) output [2:0]AXI_MMIO_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARUSER" *) output [0:0]AXI_MMIO_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARVALID" *) output AXI_MMIO_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWADDR" *) output [31:0]AXI_MMIO_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWBURST" *) output [1:0]AXI_MMIO_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWCACHE" *) output [3:0]AXI_MMIO_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWID" *) output [0:0]AXI_MMIO_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWLEN" *) output [7:0]AXI_MMIO_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWLOCK" *) output [0:0]AXI_MMIO_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWPROT" *) output [2:0]AXI_MMIO_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWQOS" *) output [3:0]AXI_MMIO_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWREADY" *) input AXI_MMIO_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWREGION" *) output [3:0]AXI_MMIO_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWSIZE" *) output [2:0]AXI_MMIO_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWUSER" *) output [0:0]AXI_MMIO_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWVALID" *) output AXI_MMIO_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO BID" *) input [0:0]AXI_MMIO_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO BREADY" *) output AXI_MMIO_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO BRESP" *) input [1:0]AXI_MMIO_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO BUSER" *) input [0:0]AXI_MMIO_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO BVALID" *) input AXI_MMIO_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RDATA" *) input [63:0]AXI_MMIO_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RID" *) input [0:0]AXI_MMIO_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RLAST" *) input AXI_MMIO_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RREADY" *) output AXI_MMIO_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RRESP" *) input [1:0]AXI_MMIO_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RUSER" *) input [0:0]AXI_MMIO_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RVALID" *) input AXI_MMIO_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO WDATA" *) output [63:0]AXI_MMIO_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO WLAST" *) output AXI_MMIO_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO WREADY" *) input AXI_MMIO_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO WSTRB" *) output [7:0]AXI_MMIO_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO WVALID" *) output AXI_MMIO_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CORECLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CORECLK, ASSOCIATED_RESET corerstn, CLK_DOMAIN nutshell_coreclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input coreclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CORERSTN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CORERSTN, LAYERED_METADATA undef" *) input corerstn;
  input [4:0]intrs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.UNCORECLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.UNCORECLK, ASSOCIATED_BUSIF AXI_DMA:AXI_MEM:AXI_MMIO, ASSOCIATED_RESET uncorerstn, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.0" *) input uncoreclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.UNCORERSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.UNCORERSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input uncorerstn;

  wire [31:0]M_AXI_DMA_1_ARADDR;
  wire [1:0]M_AXI_DMA_1_ARBURST;
  wire [3:0]M_AXI_DMA_1_ARCACHE;
  wire [15:0]M_AXI_DMA_1_ARID;
  wire [7:0]M_AXI_DMA_1_ARLEN;
  wire [0:0]M_AXI_DMA_1_ARLOCK;
  wire [2:0]M_AXI_DMA_1_ARPROT;
  wire [3:0]M_AXI_DMA_1_ARQOS;
  wire M_AXI_DMA_1_ARREADY;
  wire [3:0]M_AXI_DMA_1_ARREGION;
  wire [2:0]M_AXI_DMA_1_ARSIZE;
  wire M_AXI_DMA_1_ARVALID;
  wire [31:0]M_AXI_DMA_1_AWADDR;
  wire [1:0]M_AXI_DMA_1_AWBURST;
  wire [3:0]M_AXI_DMA_1_AWCACHE;
  wire [15:0]M_AXI_DMA_1_AWID;
  wire [7:0]M_AXI_DMA_1_AWLEN;
  wire [0:0]M_AXI_DMA_1_AWLOCK;
  wire [2:0]M_AXI_DMA_1_AWPROT;
  wire [3:0]M_AXI_DMA_1_AWQOS;
  wire M_AXI_DMA_1_AWREADY;
  wire [3:0]M_AXI_DMA_1_AWREGION;
  wire [2:0]M_AXI_DMA_1_AWSIZE;
  wire M_AXI_DMA_1_AWVALID;
  wire [15:0]M_AXI_DMA_1_BID;
  wire M_AXI_DMA_1_BREADY;
  wire [1:0]M_AXI_DMA_1_BRESP;
  wire M_AXI_DMA_1_BVALID;
  wire [63:0]M_AXI_DMA_1_RDATA;
  wire [15:0]M_AXI_DMA_1_RID;
  wire M_AXI_DMA_1_RLAST;
  wire M_AXI_DMA_1_RREADY;
  wire [1:0]M_AXI_DMA_1_RRESP;
  wire M_AXI_DMA_1_RVALID;
  wire [63:0]M_AXI_DMA_1_WDATA;
  wire M_AXI_DMA_1_WLAST;
  wire M_AXI_DMA_1_WREADY;
  wire [7:0]M_AXI_DMA_1_WSTRB;
  wire M_AXI_DMA_1_WVALID;
  wire [63:0]NutShell_0_io_ila_InstrCnt;
  wire [38:0]NutShell_0_io_ila_WBUpc;
  wire [63:0]NutShell_0_io_ila_WBUrfData;
  wire [4:0]NutShell_0_io_ila_WBUrfDest;
  wire NutShell_0_io_ila_WBUrfWen;
  wire NutShell_0_io_ila_WBUvalid;
  wire [31:0]NutShell_0_io_mem_ARADDR;
  wire [1:0]NutShell_0_io_mem_ARBURST;
  wire [3:0]NutShell_0_io_mem_ARCACHE;
  wire NutShell_0_io_mem_ARID;
  wire [7:0]NutShell_0_io_mem_ARLEN;
  wire NutShell_0_io_mem_ARLOCK;
  wire [2:0]NutShell_0_io_mem_ARPROT;
  wire [3:0]NutShell_0_io_mem_ARQOS;
  wire NutShell_0_io_mem_ARREADY;
  wire [2:0]NutShell_0_io_mem_ARSIZE;
  wire NutShell_0_io_mem_ARUSER;
  wire NutShell_0_io_mem_ARVALID;
  wire [31:0]NutShell_0_io_mem_AWADDR;
  wire [1:0]NutShell_0_io_mem_AWBURST;
  wire [3:0]NutShell_0_io_mem_AWCACHE;
  wire NutShell_0_io_mem_AWID;
  wire [7:0]NutShell_0_io_mem_AWLEN;
  wire NutShell_0_io_mem_AWLOCK;
  wire [2:0]NutShell_0_io_mem_AWPROT;
  wire [3:0]NutShell_0_io_mem_AWQOS;
  wire NutShell_0_io_mem_AWREADY;
  wire [2:0]NutShell_0_io_mem_AWSIZE;
  wire NutShell_0_io_mem_AWUSER;
  wire NutShell_0_io_mem_AWVALID;
  wire NutShell_0_io_mem_BID;
  wire NutShell_0_io_mem_BREADY;
  wire [1:0]NutShell_0_io_mem_BRESP;
  wire NutShell_0_io_mem_BUSER;
  wire NutShell_0_io_mem_BVALID;
  wire [63:0]NutShell_0_io_mem_RDATA;
  wire NutShell_0_io_mem_RID;
  wire NutShell_0_io_mem_RLAST;
  wire NutShell_0_io_mem_RREADY;
  wire [1:0]NutShell_0_io_mem_RRESP;
  wire NutShell_0_io_mem_RUSER;
  wire NutShell_0_io_mem_RVALID;
  wire [63:0]NutShell_0_io_mem_WDATA;
  wire NutShell_0_io_mem_WLAST;
  wire NutShell_0_io_mem_WREADY;
  wire [7:0]NutShell_0_io_mem_WSTRB;
  wire NutShell_0_io_mem_WVALID;
  wire [31:0]NutShell_0_io_mmio_ARADDR;
  wire [1:0]NutShell_0_io_mmio_ARBURST;
  wire [3:0]NutShell_0_io_mmio_ARCACHE;
  wire NutShell_0_io_mmio_ARID;
  wire [7:0]NutShell_0_io_mmio_ARLEN;
  wire NutShell_0_io_mmio_ARLOCK;
  wire [2:0]NutShell_0_io_mmio_ARPROT;
  wire [3:0]NutShell_0_io_mmio_ARQOS;
  wire NutShell_0_io_mmio_ARREADY;
  wire [2:0]NutShell_0_io_mmio_ARSIZE;
  wire NutShell_0_io_mmio_ARUSER;
  wire NutShell_0_io_mmio_ARVALID;
  wire [31:0]NutShell_0_io_mmio_AWADDR;
  wire [1:0]NutShell_0_io_mmio_AWBURST;
  wire [3:0]NutShell_0_io_mmio_AWCACHE;
  wire NutShell_0_io_mmio_AWID;
  wire [7:0]NutShell_0_io_mmio_AWLEN;
  wire NutShell_0_io_mmio_AWLOCK;
  wire [2:0]NutShell_0_io_mmio_AWPROT;
  wire [3:0]NutShell_0_io_mmio_AWQOS;
  wire NutShell_0_io_mmio_AWREADY;
  wire [2:0]NutShell_0_io_mmio_AWSIZE;
  wire NutShell_0_io_mmio_AWUSER;
  wire NutShell_0_io_mmio_AWVALID;
  wire NutShell_0_io_mmio_BID;
  wire NutShell_0_io_mmio_BREADY;
  wire [1:0]NutShell_0_io_mmio_BRESP;
  wire NutShell_0_io_mmio_BUSER;
  wire NutShell_0_io_mmio_BVALID;
  wire [63:0]NutShell_0_io_mmio_RDATA;
  wire NutShell_0_io_mmio_RID;
  wire NutShell_0_io_mmio_RLAST;
  wire NutShell_0_io_mmio_RREADY;
  wire [1:0]NutShell_0_io_mmio_RRESP;
  wire NutShell_0_io_mmio_RUSER;
  wire NutShell_0_io_mmio_RVALID;
  wire [63:0]NutShell_0_io_mmio_WDATA;
  wire NutShell_0_io_mmio_WLAST;
  wire NutShell_0_io_mmio_WREADY;
  wire [7:0]NutShell_0_io_mmio_WSTRB;
  wire NutShell_0_io_mmio_WVALID;
  wire [31:0]S00_AXI_2_ARADDR;
  wire [1:0]S00_AXI_2_ARBURST;
  wire [3:0]S00_AXI_2_ARCACHE;
  wire [7:0]S00_AXI_2_ARLEN;
  wire [0:0]S00_AXI_2_ARLOCK;
  wire [2:0]S00_AXI_2_ARPROT;
  wire [3:0]S00_AXI_2_ARQOS;
  wire S00_AXI_2_ARREADY;
  wire [3:0]S00_AXI_2_ARREGION;
  wire [2:0]S00_AXI_2_ARSIZE;
  wire S00_AXI_2_ARVALID;
  wire [31:0]S00_AXI_2_AWADDR;
  wire [1:0]S00_AXI_2_AWBURST;
  wire [3:0]S00_AXI_2_AWCACHE;
  wire [7:0]S00_AXI_2_AWLEN;
  wire [0:0]S00_AXI_2_AWLOCK;
  wire [2:0]S00_AXI_2_AWPROT;
  wire [3:0]S00_AXI_2_AWQOS;
  wire S00_AXI_2_AWREADY;
  wire [3:0]S00_AXI_2_AWREGION;
  wire [2:0]S00_AXI_2_AWSIZE;
  wire S00_AXI_2_AWVALID;
  wire S00_AXI_2_BREADY;
  wire [1:0]S00_AXI_2_BRESP;
  wire S00_AXI_2_BVALID;
  wire [63:0]S00_AXI_2_RDATA;
  wire S00_AXI_2_RLAST;
  wire S00_AXI_2_RREADY;
  wire [1:0]S00_AXI_2_RRESP;
  wire S00_AXI_2_RVALID;
  wire [63:0]S00_AXI_2_WDATA;
  wire S00_AXI_2_WLAST;
  wire S00_AXI_2_WREADY;
  wire [7:0]S00_AXI_2_WSTRB;
  wire S00_AXI_2_WVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_ARADDR;
  wire [1:0]axi_clock_converter_0_M_AXI_ARBURST;
  wire [3:0]axi_clock_converter_0_M_AXI_ARCACHE;
  wire [0:0]axi_clock_converter_0_M_AXI_ARID;
  wire [7:0]axi_clock_converter_0_M_AXI_ARLEN;
  wire [0:0]axi_clock_converter_0_M_AXI_ARLOCK;
  wire [2:0]axi_clock_converter_0_M_AXI_ARPROT;
  wire [3:0]axi_clock_converter_0_M_AXI_ARQOS;
  wire axi_clock_converter_0_M_AXI_ARREADY;
  wire [3:0]axi_clock_converter_0_M_AXI_ARREGION;
  wire [2:0]axi_clock_converter_0_M_AXI_ARSIZE;
  wire [0:0]axi_clock_converter_0_M_AXI_ARUSER;
  wire axi_clock_converter_0_M_AXI_ARVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_AWADDR;
  wire [1:0]axi_clock_converter_0_M_AXI_AWBURST;
  wire [3:0]axi_clock_converter_0_M_AXI_AWCACHE;
  wire [0:0]axi_clock_converter_0_M_AXI_AWID;
  wire [7:0]axi_clock_converter_0_M_AXI_AWLEN;
  wire [0:0]axi_clock_converter_0_M_AXI_AWLOCK;
  wire [2:0]axi_clock_converter_0_M_AXI_AWPROT;
  wire [3:0]axi_clock_converter_0_M_AXI_AWQOS;
  wire axi_clock_converter_0_M_AXI_AWREADY;
  wire [3:0]axi_clock_converter_0_M_AXI_AWREGION;
  wire [2:0]axi_clock_converter_0_M_AXI_AWSIZE;
  wire [0:0]axi_clock_converter_0_M_AXI_AWUSER;
  wire axi_clock_converter_0_M_AXI_AWVALID;
  wire [0:0]axi_clock_converter_0_M_AXI_BID;
  wire axi_clock_converter_0_M_AXI_BREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_BRESP;
  wire [0:0]axi_clock_converter_0_M_AXI_BUSER;
  wire axi_clock_converter_0_M_AXI_BVALID;
  wire [63:0]axi_clock_converter_0_M_AXI_RDATA;
  wire [0:0]axi_clock_converter_0_M_AXI_RID;
  wire axi_clock_converter_0_M_AXI_RLAST;
  wire axi_clock_converter_0_M_AXI_RREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_RRESP;
  wire [0:0]axi_clock_converter_0_M_AXI_RUSER;
  wire axi_clock_converter_0_M_AXI_RVALID;
  wire [63:0]axi_clock_converter_0_M_AXI_WDATA;
  wire axi_clock_converter_0_M_AXI_WLAST;
  wire axi_clock_converter_0_M_AXI_WREADY;
  wire [7:0]axi_clock_converter_0_M_AXI_WSTRB;
  wire axi_clock_converter_0_M_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [7:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_ARCACHE;
  wire [0:0]axi_interconnect_1_M00_AXI_ARID;
  wire [7:0]axi_interconnect_1_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_ARQOS;
  wire axi_interconnect_1_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_1_M00_AXI_ARREGION;
  wire [2:0]axi_interconnect_1_M00_AXI_ARSIZE;
  wire [0:0]axi_interconnect_1_M00_AXI_ARUSER;
  wire axi_interconnect_1_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_AWCACHE;
  wire [0:0]axi_interconnect_1_M00_AXI_AWID;
  wire [7:0]axi_interconnect_1_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_AWQOS;
  wire axi_interconnect_1_M00_AXI_AWREADY;
  wire [3:0]axi_interconnect_1_M00_AXI_AWREGION;
  wire [2:0]axi_interconnect_1_M00_AXI_AWSIZE;
  wire [0:0]axi_interconnect_1_M00_AXI_AWUSER;
  wire axi_interconnect_1_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_1_M00_AXI_BID;
  wire axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire [0:0]axi_interconnect_1_M00_AXI_BUSER;
  wire axi_interconnect_1_M00_AXI_BVALID;
  wire [63:0]axi_interconnect_1_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_1_M00_AXI_RID;
  wire axi_interconnect_1_M00_AXI_RLAST;
  wire axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire [0:0]axi_interconnect_1_M00_AXI_RUSER;
  wire axi_interconnect_1_M00_AXI_RVALID;
  wire [63:0]axi_interconnect_1_M00_AXI_WDATA;
  wire axi_interconnect_1_M00_AXI_WLAST;
  wire axi_interconnect_1_M00_AXI_WREADY;
  wire [7:0]axi_interconnect_1_M00_AXI_WSTRB;
  wire axi_interconnect_1_M00_AXI_WVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_ARADDR;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARPROT;
  wire axi_protocol_convert_0_M_AXI_ARREADY;
  wire axi_protocol_convert_0_M_AXI_ARVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_AWADDR;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWPROT;
  wire axi_protocol_convert_0_M_AXI_AWREADY;
  wire axi_protocol_convert_0_M_AXI_AWVALID;
  wire axi_protocol_convert_0_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_BRESP;
  wire axi_protocol_convert_0_M_AXI_BVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_RDATA;
  wire axi_protocol_convert_0_M_AXI_RREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_RRESP;
  wire axi_protocol_convert_0_M_AXI_RVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_WDATA;
  wire axi_protocol_convert_0_M_AXI_WREADY;
  wire [7:0]axi_protocol_convert_0_M_AXI_WSTRB;
  wire axi_protocol_convert_0_M_AXI_WVALID;
  wire c_shift_ram_0_Q;
  wire coreclk_1;
  wire [4:0]intrs_1;
  wire uncoreclk_1;
  wire uncorerstn_2;
  wire [0:0]util_vector_logic_0_Res;

  assign AXI_DMA_arready = M_AXI_DMA_1_ARREADY;
  assign AXI_DMA_awready = M_AXI_DMA_1_AWREADY;
  assign AXI_DMA_bid[15:0] = M_AXI_DMA_1_BID;
  assign AXI_DMA_bresp[1:0] = M_AXI_DMA_1_BRESP;
  assign AXI_DMA_bvalid = M_AXI_DMA_1_BVALID;
  assign AXI_DMA_rdata[63:0] = M_AXI_DMA_1_RDATA;
  assign AXI_DMA_rid[15:0] = M_AXI_DMA_1_RID;
  assign AXI_DMA_rlast = M_AXI_DMA_1_RLAST;
  assign AXI_DMA_rresp[1:0] = M_AXI_DMA_1_RRESP;
  assign AXI_DMA_rvalid = M_AXI_DMA_1_RVALID;
  assign AXI_DMA_wready = M_AXI_DMA_1_WREADY;
  assign AXI_MEM_araddr[31:0] = axi_clock_converter_0_M_AXI_ARADDR;
  assign AXI_MEM_arburst[1:0] = axi_clock_converter_0_M_AXI_ARBURST;
  assign AXI_MEM_arcache[3:0] = axi_clock_converter_0_M_AXI_ARCACHE;
  assign AXI_MEM_arid[0] = axi_clock_converter_0_M_AXI_ARID;
  assign AXI_MEM_arlen[7:0] = axi_clock_converter_0_M_AXI_ARLEN;
  assign AXI_MEM_arlock[0] = axi_clock_converter_0_M_AXI_ARLOCK;
  assign AXI_MEM_arprot[2:0] = axi_clock_converter_0_M_AXI_ARPROT;
  assign AXI_MEM_arqos[3:0] = axi_clock_converter_0_M_AXI_ARQOS;
  assign AXI_MEM_arregion[3:0] = axi_clock_converter_0_M_AXI_ARREGION;
  assign AXI_MEM_arsize[2:0] = axi_clock_converter_0_M_AXI_ARSIZE;
  assign AXI_MEM_aruser[0] = axi_clock_converter_0_M_AXI_ARUSER;
  assign AXI_MEM_arvalid = axi_clock_converter_0_M_AXI_ARVALID;
  assign AXI_MEM_awaddr[31:0] = axi_clock_converter_0_M_AXI_AWADDR;
  assign AXI_MEM_awburst[1:0] = axi_clock_converter_0_M_AXI_AWBURST;
  assign AXI_MEM_awcache[3:0] = axi_clock_converter_0_M_AXI_AWCACHE;
  assign AXI_MEM_awid[0] = axi_clock_converter_0_M_AXI_AWID;
  assign AXI_MEM_awlen[7:0] = axi_clock_converter_0_M_AXI_AWLEN;
  assign AXI_MEM_awlock[0] = axi_clock_converter_0_M_AXI_AWLOCK;
  assign AXI_MEM_awprot[2:0] = axi_clock_converter_0_M_AXI_AWPROT;
  assign AXI_MEM_awqos[3:0] = axi_clock_converter_0_M_AXI_AWQOS;
  assign AXI_MEM_awregion[3:0] = axi_clock_converter_0_M_AXI_AWREGION;
  assign AXI_MEM_awsize[2:0] = axi_clock_converter_0_M_AXI_AWSIZE;
  assign AXI_MEM_awuser[0] = axi_clock_converter_0_M_AXI_AWUSER;
  assign AXI_MEM_awvalid = axi_clock_converter_0_M_AXI_AWVALID;
  assign AXI_MEM_bready = axi_clock_converter_0_M_AXI_BREADY;
  assign AXI_MEM_rready = axi_clock_converter_0_M_AXI_RREADY;
  assign AXI_MEM_wdata[63:0] = axi_clock_converter_0_M_AXI_WDATA;
  assign AXI_MEM_wlast = axi_clock_converter_0_M_AXI_WLAST;
  assign AXI_MEM_wstrb[7:0] = axi_clock_converter_0_M_AXI_WSTRB;
  assign AXI_MEM_wvalid = axi_clock_converter_0_M_AXI_WVALID;
  assign AXI_MMIO_araddr[31:0] = axi_interconnect_1_M00_AXI_ARADDR;
  assign AXI_MMIO_arburst[1:0] = axi_interconnect_1_M00_AXI_ARBURST;
  assign AXI_MMIO_arcache[3:0] = axi_interconnect_1_M00_AXI_ARCACHE;
  assign AXI_MMIO_arid[0] = axi_interconnect_1_M00_AXI_ARID;
  assign AXI_MMIO_arlen[7:0] = axi_interconnect_1_M00_AXI_ARLEN;
  assign AXI_MMIO_arlock[0] = axi_interconnect_1_M00_AXI_ARLOCK;
  assign AXI_MMIO_arprot[2:0] = axi_interconnect_1_M00_AXI_ARPROT;
  assign AXI_MMIO_arqos[3:0] = axi_interconnect_1_M00_AXI_ARQOS;
  assign AXI_MMIO_arregion[3:0] = axi_interconnect_1_M00_AXI_ARREGION;
  assign AXI_MMIO_arsize[2:0] = axi_interconnect_1_M00_AXI_ARSIZE;
  assign AXI_MMIO_aruser[0] = axi_interconnect_1_M00_AXI_ARUSER;
  assign AXI_MMIO_arvalid = axi_interconnect_1_M00_AXI_ARVALID;
  assign AXI_MMIO_awaddr[31:0] = axi_interconnect_1_M00_AXI_AWADDR;
  assign AXI_MMIO_awburst[1:0] = axi_interconnect_1_M00_AXI_AWBURST;
  assign AXI_MMIO_awcache[3:0] = axi_interconnect_1_M00_AXI_AWCACHE;
  assign AXI_MMIO_awid[0] = axi_interconnect_1_M00_AXI_AWID;
  assign AXI_MMIO_awlen[7:0] = axi_interconnect_1_M00_AXI_AWLEN;
  assign AXI_MMIO_awlock[0] = axi_interconnect_1_M00_AXI_AWLOCK;
  assign AXI_MMIO_awprot[2:0] = axi_interconnect_1_M00_AXI_AWPROT;
  assign AXI_MMIO_awqos[3:0] = axi_interconnect_1_M00_AXI_AWQOS;
  assign AXI_MMIO_awregion[3:0] = axi_interconnect_1_M00_AXI_AWREGION;
  assign AXI_MMIO_awsize[2:0] = axi_interconnect_1_M00_AXI_AWSIZE;
  assign AXI_MMIO_awuser[0] = axi_interconnect_1_M00_AXI_AWUSER;
  assign AXI_MMIO_awvalid = axi_interconnect_1_M00_AXI_AWVALID;
  assign AXI_MMIO_bready = axi_interconnect_1_M00_AXI_BREADY;
  assign AXI_MMIO_rready = axi_interconnect_1_M00_AXI_RREADY;
  assign AXI_MMIO_wdata[63:0] = axi_interconnect_1_M00_AXI_WDATA;
  assign AXI_MMIO_wlast = axi_interconnect_1_M00_AXI_WLAST;
  assign AXI_MMIO_wstrb[7:0] = axi_interconnect_1_M00_AXI_WSTRB;
  assign AXI_MMIO_wvalid = axi_interconnect_1_M00_AXI_WVALID;
  assign M_AXI_DMA_1_ARADDR = AXI_DMA_araddr[31:0];
  assign M_AXI_DMA_1_ARBURST = AXI_DMA_arburst[1:0];
  assign M_AXI_DMA_1_ARCACHE = AXI_DMA_arcache[3:0];
  assign M_AXI_DMA_1_ARID = AXI_DMA_arid[15:0];
  assign M_AXI_DMA_1_ARLEN = AXI_DMA_arlen[7:0];
  assign M_AXI_DMA_1_ARLOCK = AXI_DMA_arlock[0];
  assign M_AXI_DMA_1_ARPROT = AXI_DMA_arprot[2:0];
  assign M_AXI_DMA_1_ARQOS = AXI_DMA_arqos[3:0];
  assign M_AXI_DMA_1_ARREGION = AXI_DMA_arregion[3:0];
  assign M_AXI_DMA_1_ARSIZE = AXI_DMA_arsize[2:0];
  assign M_AXI_DMA_1_ARVALID = AXI_DMA_arvalid;
  assign M_AXI_DMA_1_AWADDR = AXI_DMA_awaddr[31:0];
  assign M_AXI_DMA_1_AWBURST = AXI_DMA_awburst[1:0];
  assign M_AXI_DMA_1_AWCACHE = AXI_DMA_awcache[3:0];
  assign M_AXI_DMA_1_AWID = AXI_DMA_awid[15:0];
  assign M_AXI_DMA_1_AWLEN = AXI_DMA_awlen[7:0];
  assign M_AXI_DMA_1_AWLOCK = AXI_DMA_awlock[0];
  assign M_AXI_DMA_1_AWPROT = AXI_DMA_awprot[2:0];
  assign M_AXI_DMA_1_AWQOS = AXI_DMA_awqos[3:0];
  assign M_AXI_DMA_1_AWREGION = AXI_DMA_awregion[3:0];
  assign M_AXI_DMA_1_AWSIZE = AXI_DMA_awsize[2:0];
  assign M_AXI_DMA_1_AWVALID = AXI_DMA_awvalid;
  assign M_AXI_DMA_1_BREADY = AXI_DMA_bready;
  assign M_AXI_DMA_1_RREADY = AXI_DMA_rready;
  assign M_AXI_DMA_1_WDATA = AXI_DMA_wdata[63:0];
  assign M_AXI_DMA_1_WLAST = AXI_DMA_wlast;
  assign M_AXI_DMA_1_WSTRB = AXI_DMA_wstrb[7:0];
  assign M_AXI_DMA_1_WVALID = AXI_DMA_wvalid;
  assign axi_clock_converter_0_M_AXI_ARREADY = AXI_MEM_arready;
  assign axi_clock_converter_0_M_AXI_AWREADY = AXI_MEM_awready;
  assign axi_clock_converter_0_M_AXI_BID = AXI_MEM_bid[0];
  assign axi_clock_converter_0_M_AXI_BRESP = AXI_MEM_bresp[1:0];
  assign axi_clock_converter_0_M_AXI_BUSER = AXI_MEM_buser[0];
  assign axi_clock_converter_0_M_AXI_BVALID = AXI_MEM_bvalid;
  assign axi_clock_converter_0_M_AXI_RDATA = AXI_MEM_rdata[63:0];
  assign axi_clock_converter_0_M_AXI_RID = AXI_MEM_rid[0];
  assign axi_clock_converter_0_M_AXI_RLAST = AXI_MEM_rlast;
  assign axi_clock_converter_0_M_AXI_RRESP = AXI_MEM_rresp[1:0];
  assign axi_clock_converter_0_M_AXI_RUSER = AXI_MEM_ruser[0];
  assign axi_clock_converter_0_M_AXI_RVALID = AXI_MEM_rvalid;
  assign axi_clock_converter_0_M_AXI_WREADY = AXI_MEM_wready;
  assign axi_interconnect_1_M00_AXI_ARREADY = AXI_MMIO_arready;
  assign axi_interconnect_1_M00_AXI_AWREADY = AXI_MMIO_awready;
  assign axi_interconnect_1_M00_AXI_BID = AXI_MMIO_bid[0];
  assign axi_interconnect_1_M00_AXI_BRESP = AXI_MMIO_bresp[1:0];
  assign axi_interconnect_1_M00_AXI_BUSER = AXI_MMIO_buser[0];
  assign axi_interconnect_1_M00_AXI_BVALID = AXI_MMIO_bvalid;
  assign axi_interconnect_1_M00_AXI_RDATA = AXI_MMIO_rdata[63:0];
  assign axi_interconnect_1_M00_AXI_RID = AXI_MMIO_rid[0];
  assign axi_interconnect_1_M00_AXI_RLAST = AXI_MMIO_rlast;
  assign axi_interconnect_1_M00_AXI_RRESP = AXI_MMIO_rresp[1:0];
  assign axi_interconnect_1_M00_AXI_RUSER = AXI_MMIO_ruser[0];
  assign axi_interconnect_1_M00_AXI_RVALID = AXI_MMIO_rvalid;
  assign axi_interconnect_1_M00_AXI_WREADY = AXI_MMIO_wready;
  assign c_shift_ram_0_Q = corerstn;
  assign coreclk_1 = coreclk;
  assign intrs_1 = intrs[4:0];
  assign uncoreclk_1 = uncoreclk;
  assign uncorerstn_2 = uncorerstn;
  nutshell_NutShell_0_0 NutShell_0
       (.clock(coreclk_1),
        .io_frontend_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .io_frontend_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .io_frontend_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .io_frontend_arid(1'b0),
        .io_frontend_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .io_frontend_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .io_frontend_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .io_frontend_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .io_frontend_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .io_frontend_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .io_frontend_aruser(1'b0),
        .io_frontend_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .io_frontend_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .io_frontend_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .io_frontend_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .io_frontend_awid(1'b0),
        .io_frontend_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .io_frontend_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .io_frontend_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .io_frontend_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .io_frontend_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .io_frontend_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .io_frontend_awuser(1'b0),
        .io_frontend_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .io_frontend_bready(axi_interconnect_0_M00_AXI_BREADY),
        .io_frontend_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .io_frontend_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .io_frontend_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .io_frontend_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .io_frontend_rready(axi_interconnect_0_M00_AXI_RREADY),
        .io_frontend_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .io_frontend_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .io_frontend_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .io_frontend_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .io_frontend_wready(axi_interconnect_0_M00_AXI_WREADY),
        .io_frontend_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .io_frontend_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .io_ila_InstrCnt(NutShell_0_io_ila_InstrCnt),
        .io_ila_WBUpc(NutShell_0_io_ila_WBUpc),
        .io_ila_WBUrfData(NutShell_0_io_ila_WBUrfData),
        .io_ila_WBUrfDest(NutShell_0_io_ila_WBUrfDest),
        .io_ila_WBUrfWen(NutShell_0_io_ila_WBUrfWen),
        .io_ila_WBUvalid(NutShell_0_io_ila_WBUvalid),
        .io_meip(intrs_1[1:0]),
        .io_mem_araddr(NutShell_0_io_mem_ARADDR),
        .io_mem_arburst(NutShell_0_io_mem_ARBURST),
        .io_mem_arcache(NutShell_0_io_mem_ARCACHE),
        .io_mem_arid(NutShell_0_io_mem_ARID),
        .io_mem_arlen(NutShell_0_io_mem_ARLEN),
        .io_mem_arlock(NutShell_0_io_mem_ARLOCK),
        .io_mem_arprot(NutShell_0_io_mem_ARPROT),
        .io_mem_arqos(NutShell_0_io_mem_ARQOS),
        .io_mem_arready(NutShell_0_io_mem_ARREADY),
        .io_mem_arsize(NutShell_0_io_mem_ARSIZE),
        .io_mem_aruser(NutShell_0_io_mem_ARUSER),
        .io_mem_arvalid(NutShell_0_io_mem_ARVALID),
        .io_mem_awaddr(NutShell_0_io_mem_AWADDR),
        .io_mem_awburst(NutShell_0_io_mem_AWBURST),
        .io_mem_awcache(NutShell_0_io_mem_AWCACHE),
        .io_mem_awid(NutShell_0_io_mem_AWID),
        .io_mem_awlen(NutShell_0_io_mem_AWLEN),
        .io_mem_awlock(NutShell_0_io_mem_AWLOCK),
        .io_mem_awprot(NutShell_0_io_mem_AWPROT),
        .io_mem_awqos(NutShell_0_io_mem_AWQOS),
        .io_mem_awready(NutShell_0_io_mem_AWREADY),
        .io_mem_awsize(NutShell_0_io_mem_AWSIZE),
        .io_mem_awuser(NutShell_0_io_mem_AWUSER),
        .io_mem_awvalid(NutShell_0_io_mem_AWVALID),
        .io_mem_bid(NutShell_0_io_mem_BID),
        .io_mem_bready(NutShell_0_io_mem_BREADY),
        .io_mem_bresp(NutShell_0_io_mem_BRESP),
        .io_mem_buser(NutShell_0_io_mem_BUSER),
        .io_mem_bvalid(NutShell_0_io_mem_BVALID),
        .io_mem_rdata(NutShell_0_io_mem_RDATA),
        .io_mem_rid(NutShell_0_io_mem_RID),
        .io_mem_rlast(NutShell_0_io_mem_RLAST),
        .io_mem_rready(NutShell_0_io_mem_RREADY),
        .io_mem_rresp(NutShell_0_io_mem_RRESP),
        .io_mem_ruser(NutShell_0_io_mem_RUSER),
        .io_mem_rvalid(NutShell_0_io_mem_RVALID),
        .io_mem_wdata(NutShell_0_io_mem_WDATA),
        .io_mem_wlast(NutShell_0_io_mem_WLAST),
        .io_mem_wready(NutShell_0_io_mem_WREADY),
        .io_mem_wstrb(NutShell_0_io_mem_WSTRB),
        .io_mem_wvalid(NutShell_0_io_mem_WVALID),
        .io_mmio_araddr(NutShell_0_io_mmio_ARADDR),
        .io_mmio_arburst(NutShell_0_io_mmio_ARBURST),
        .io_mmio_arcache(NutShell_0_io_mmio_ARCACHE),
        .io_mmio_arid(NutShell_0_io_mmio_ARID),
        .io_mmio_arlen(NutShell_0_io_mmio_ARLEN),
        .io_mmio_arlock(NutShell_0_io_mmio_ARLOCK),
        .io_mmio_arprot(NutShell_0_io_mmio_ARPROT),
        .io_mmio_arqos(NutShell_0_io_mmio_ARQOS),
        .io_mmio_arready(NutShell_0_io_mmio_ARREADY),
        .io_mmio_arsize(NutShell_0_io_mmio_ARSIZE),
        .io_mmio_aruser(NutShell_0_io_mmio_ARUSER),
        .io_mmio_arvalid(NutShell_0_io_mmio_ARVALID),
        .io_mmio_awaddr(NutShell_0_io_mmio_AWADDR),
        .io_mmio_awburst(NutShell_0_io_mmio_AWBURST),
        .io_mmio_awcache(NutShell_0_io_mmio_AWCACHE),
        .io_mmio_awid(NutShell_0_io_mmio_AWID),
        .io_mmio_awlen(NutShell_0_io_mmio_AWLEN),
        .io_mmio_awlock(NutShell_0_io_mmio_AWLOCK),
        .io_mmio_awprot(NutShell_0_io_mmio_AWPROT),
        .io_mmio_awqos(NutShell_0_io_mmio_AWQOS),
        .io_mmio_awready(NutShell_0_io_mmio_AWREADY),
        .io_mmio_awsize(NutShell_0_io_mmio_AWSIZE),
        .io_mmio_awuser(NutShell_0_io_mmio_AWUSER),
        .io_mmio_awvalid(NutShell_0_io_mmio_AWVALID),
        .io_mmio_bid(NutShell_0_io_mmio_BID),
        .io_mmio_bready(NutShell_0_io_mmio_BREADY),
        .io_mmio_bresp(NutShell_0_io_mmio_BRESP),
        .io_mmio_buser(NutShell_0_io_mmio_BUSER),
        .io_mmio_bvalid(NutShell_0_io_mmio_BVALID),
        .io_mmio_rdata(NutShell_0_io_mmio_RDATA),
        .io_mmio_rid(NutShell_0_io_mmio_RID),
        .io_mmio_rlast(NutShell_0_io_mmio_RLAST),
        .io_mmio_rready(NutShell_0_io_mmio_RREADY),
        .io_mmio_rresp(NutShell_0_io_mmio_RRESP),
        .io_mmio_ruser(NutShell_0_io_mmio_RUSER),
        .io_mmio_rvalid(NutShell_0_io_mmio_RVALID),
        .io_mmio_wdata(NutShell_0_io_mmio_WDATA),
        .io_mmio_wlast(NutShell_0_io_mmio_WLAST),
        .io_mmio_wready(NutShell_0_io_mmio_WREADY),
        .io_mmio_wstrb(NutShell_0_io_mmio_WSTRB),
        .io_mmio_wvalid(NutShell_0_io_mmio_WVALID),
        .reset(util_vector_logic_0_Res));
  nutshell_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(uncoreclk_1),
        .ARESETN(uncorerstn_2),
        .M00_ACLK(coreclk_1),
        .M00_ARESETN(c_shift_ram_0_Q),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(uncoreclk_1),
        .S00_ARESETN(uncorerstn_2),
        .S00_AXI_araddr(S00_AXI_2_ARADDR),
        .S00_AXI_arburst(S00_AXI_2_ARBURST),
        .S00_AXI_arcache(S00_AXI_2_ARCACHE),
        .S00_AXI_arlen(S00_AXI_2_ARLEN),
        .S00_AXI_arlock(S00_AXI_2_ARLOCK),
        .S00_AXI_arprot(S00_AXI_2_ARPROT),
        .S00_AXI_arqos(S00_AXI_2_ARQOS),
        .S00_AXI_arready(S00_AXI_2_ARREADY),
        .S00_AXI_arregion(S00_AXI_2_ARREGION),
        .S00_AXI_arsize(S00_AXI_2_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_2_ARVALID),
        .S00_AXI_awaddr(S00_AXI_2_AWADDR),
        .S00_AXI_awburst(S00_AXI_2_AWBURST),
        .S00_AXI_awcache(S00_AXI_2_AWCACHE),
        .S00_AXI_awlen(S00_AXI_2_AWLEN),
        .S00_AXI_awlock(S00_AXI_2_AWLOCK),
        .S00_AXI_awprot(S00_AXI_2_AWPROT),
        .S00_AXI_awqos(S00_AXI_2_AWQOS),
        .S00_AXI_awready(S00_AXI_2_AWREADY),
        .S00_AXI_awregion(S00_AXI_2_AWREGION),
        .S00_AXI_awsize(S00_AXI_2_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_2_AWVALID),
        .S00_AXI_bready(S00_AXI_2_BREADY),
        .S00_AXI_bresp(S00_AXI_2_BRESP),
        .S00_AXI_bvalid(S00_AXI_2_BVALID),
        .S00_AXI_rdata(S00_AXI_2_RDATA),
        .S00_AXI_rlast(S00_AXI_2_RLAST),
        .S00_AXI_rready(S00_AXI_2_RREADY),
        .S00_AXI_rresp(S00_AXI_2_RRESP),
        .S00_AXI_rvalid(S00_AXI_2_RVALID),
        .S00_AXI_wdata(S00_AXI_2_WDATA),
        .S00_AXI_wlast(S00_AXI_2_WLAST),
        .S00_AXI_wready(S00_AXI_2_WREADY),
        .S00_AXI_wstrb(S00_AXI_2_WSTRB),
        .S00_AXI_wvalid(S00_AXI_2_WVALID));
  nutshell_axi_interconnect_1_0 axi_interconnect_1
       (.ACLK(uncoreclk_1),
        .ARESETN(uncorerstn_2),
        .M00_ACLK(uncoreclk_1),
        .M00_ARESETN(uncorerstn_2),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_1_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_interconnect_1_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_aruser(axi_interconnect_1_M00_AXI_ARUSER),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_1_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_interconnect_1_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awuser(axi_interconnect_1_M00_AXI_AWUSER),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_1_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_buser(axi_interconnect_1_M00_AXI_BUSER),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_1_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_ruser(axi_interconnect_1_M00_AXI_RUSER),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .S00_ACLK(coreclk_1),
        .S00_ARESETN(c_shift_ram_0_Q),
        .S00_AXI_araddr(NutShell_0_io_mmio_ARADDR),
        .S00_AXI_arburst(NutShell_0_io_mmio_ARBURST),
        .S00_AXI_arcache(NutShell_0_io_mmio_ARCACHE),
        .S00_AXI_arid(NutShell_0_io_mmio_ARID),
        .S00_AXI_arlen(NutShell_0_io_mmio_ARLEN),
        .S00_AXI_arlock(NutShell_0_io_mmio_ARLOCK),
        .S00_AXI_arprot(NutShell_0_io_mmio_ARPROT),
        .S00_AXI_arqos(NutShell_0_io_mmio_ARQOS),
        .S00_AXI_arready(NutShell_0_io_mmio_ARREADY),
        .S00_AXI_arsize(NutShell_0_io_mmio_ARSIZE),
        .S00_AXI_aruser(NutShell_0_io_mmio_ARUSER),
        .S00_AXI_arvalid(NutShell_0_io_mmio_ARVALID),
        .S00_AXI_awaddr(NutShell_0_io_mmio_AWADDR),
        .S00_AXI_awburst(NutShell_0_io_mmio_AWBURST),
        .S00_AXI_awcache(NutShell_0_io_mmio_AWCACHE),
        .S00_AXI_awid(NutShell_0_io_mmio_AWID),
        .S00_AXI_awlen(NutShell_0_io_mmio_AWLEN),
        .S00_AXI_awlock(NutShell_0_io_mmio_AWLOCK),
        .S00_AXI_awprot(NutShell_0_io_mmio_AWPROT),
        .S00_AXI_awqos(NutShell_0_io_mmio_AWQOS),
        .S00_AXI_awready(NutShell_0_io_mmio_AWREADY),
        .S00_AXI_awsize(NutShell_0_io_mmio_AWSIZE),
        .S00_AXI_awuser(NutShell_0_io_mmio_AWUSER),
        .S00_AXI_awvalid(NutShell_0_io_mmio_AWVALID),
        .S00_AXI_bid(NutShell_0_io_mmio_BID),
        .S00_AXI_bready(NutShell_0_io_mmio_BREADY),
        .S00_AXI_bresp(NutShell_0_io_mmio_BRESP),
        .S00_AXI_buser(NutShell_0_io_mmio_BUSER),
        .S00_AXI_bvalid(NutShell_0_io_mmio_BVALID),
        .S00_AXI_rdata(NutShell_0_io_mmio_RDATA),
        .S00_AXI_rid(NutShell_0_io_mmio_RID),
        .S00_AXI_rlast(NutShell_0_io_mmio_RLAST),
        .S00_AXI_rready(NutShell_0_io_mmio_RREADY),
        .S00_AXI_rresp(NutShell_0_io_mmio_RRESP),
        .S00_AXI_ruser(NutShell_0_io_mmio_RUSER),
        .S00_AXI_rvalid(NutShell_0_io_mmio_RVALID),
        .S00_AXI_wdata(NutShell_0_io_mmio_WDATA),
        .S00_AXI_wlast(NutShell_0_io_mmio_WLAST),
        .S00_AXI_wready(NutShell_0_io_mmio_WREADY),
        .S00_AXI_wstrb(NutShell_0_io_mmio_WSTRB),
        .S00_AXI_wvalid(NutShell_0_io_mmio_WVALID));
  nutshell_axi_interconnect_2_0 axi_interconnect_2
       (.ACLK(coreclk_1),
        .ARESETN(c_shift_ram_0_Q),
        .M00_ACLK(uncoreclk_1),
        .M00_ARESETN(uncorerstn_2),
        .M00_AXI_araddr(axi_clock_converter_0_M_AXI_ARADDR),
        .M00_AXI_arburst(axi_clock_converter_0_M_AXI_ARBURST),
        .M00_AXI_arcache(axi_clock_converter_0_M_AXI_ARCACHE),
        .M00_AXI_arid(axi_clock_converter_0_M_AXI_ARID),
        .M00_AXI_arlen(axi_clock_converter_0_M_AXI_ARLEN),
        .M00_AXI_arlock(axi_clock_converter_0_M_AXI_ARLOCK),
        .M00_AXI_arprot(axi_clock_converter_0_M_AXI_ARPROT),
        .M00_AXI_arqos(axi_clock_converter_0_M_AXI_ARQOS),
        .M00_AXI_arready(axi_clock_converter_0_M_AXI_ARREADY),
        .M00_AXI_arregion(axi_clock_converter_0_M_AXI_ARREGION),
        .M00_AXI_arsize(axi_clock_converter_0_M_AXI_ARSIZE),
        .M00_AXI_aruser(axi_clock_converter_0_M_AXI_ARUSER),
        .M00_AXI_arvalid(axi_clock_converter_0_M_AXI_ARVALID),
        .M00_AXI_awaddr(axi_clock_converter_0_M_AXI_AWADDR),
        .M00_AXI_awburst(axi_clock_converter_0_M_AXI_AWBURST),
        .M00_AXI_awcache(axi_clock_converter_0_M_AXI_AWCACHE),
        .M00_AXI_awid(axi_clock_converter_0_M_AXI_AWID),
        .M00_AXI_awlen(axi_clock_converter_0_M_AXI_AWLEN),
        .M00_AXI_awlock(axi_clock_converter_0_M_AXI_AWLOCK),
        .M00_AXI_awprot(axi_clock_converter_0_M_AXI_AWPROT),
        .M00_AXI_awqos(axi_clock_converter_0_M_AXI_AWQOS),
        .M00_AXI_awready(axi_clock_converter_0_M_AXI_AWREADY),
        .M00_AXI_awregion(axi_clock_converter_0_M_AXI_AWREGION),
        .M00_AXI_awsize(axi_clock_converter_0_M_AXI_AWSIZE),
        .M00_AXI_awuser(axi_clock_converter_0_M_AXI_AWUSER),
        .M00_AXI_awvalid(axi_clock_converter_0_M_AXI_AWVALID),
        .M00_AXI_bid(axi_clock_converter_0_M_AXI_BID),
        .M00_AXI_bready(axi_clock_converter_0_M_AXI_BREADY),
        .M00_AXI_bresp(axi_clock_converter_0_M_AXI_BRESP),
        .M00_AXI_buser(axi_clock_converter_0_M_AXI_BUSER),
        .M00_AXI_bvalid(axi_clock_converter_0_M_AXI_BVALID),
        .M00_AXI_rdata(axi_clock_converter_0_M_AXI_RDATA),
        .M00_AXI_rid(axi_clock_converter_0_M_AXI_RID),
        .M00_AXI_rlast(axi_clock_converter_0_M_AXI_RLAST),
        .M00_AXI_rready(axi_clock_converter_0_M_AXI_RREADY),
        .M00_AXI_rresp(axi_clock_converter_0_M_AXI_RRESP),
        .M00_AXI_ruser(axi_clock_converter_0_M_AXI_RUSER),
        .M00_AXI_rvalid(axi_clock_converter_0_M_AXI_RVALID),
        .M00_AXI_wdata(axi_clock_converter_0_M_AXI_WDATA),
        .M00_AXI_wlast(axi_clock_converter_0_M_AXI_WLAST),
        .M00_AXI_wready(axi_clock_converter_0_M_AXI_WREADY),
        .M00_AXI_wstrb(axi_clock_converter_0_M_AXI_WSTRB),
        .M00_AXI_wvalid(axi_clock_converter_0_M_AXI_WVALID),
        .S00_ACLK(coreclk_1),
        .S00_ARESETN(c_shift_ram_0_Q),
        .S00_AXI_araddr(NutShell_0_io_mem_ARADDR),
        .S00_AXI_arburst(NutShell_0_io_mem_ARBURST),
        .S00_AXI_arcache(NutShell_0_io_mem_ARCACHE),
        .S00_AXI_arid(NutShell_0_io_mem_ARID),
        .S00_AXI_arlen(NutShell_0_io_mem_ARLEN),
        .S00_AXI_arlock(NutShell_0_io_mem_ARLOCK),
        .S00_AXI_arprot(NutShell_0_io_mem_ARPROT),
        .S00_AXI_arqos(NutShell_0_io_mem_ARQOS),
        .S00_AXI_arready(NutShell_0_io_mem_ARREADY),
        .S00_AXI_arsize(NutShell_0_io_mem_ARSIZE),
        .S00_AXI_aruser(NutShell_0_io_mem_ARUSER),
        .S00_AXI_arvalid(NutShell_0_io_mem_ARVALID),
        .S00_AXI_awaddr(NutShell_0_io_mem_AWADDR),
        .S00_AXI_awburst(NutShell_0_io_mem_AWBURST),
        .S00_AXI_awcache(NutShell_0_io_mem_AWCACHE),
        .S00_AXI_awid(NutShell_0_io_mem_AWID),
        .S00_AXI_awlen(NutShell_0_io_mem_AWLEN),
        .S00_AXI_awlock(NutShell_0_io_mem_AWLOCK),
        .S00_AXI_awprot(NutShell_0_io_mem_AWPROT),
        .S00_AXI_awqos(NutShell_0_io_mem_AWQOS),
        .S00_AXI_awready(NutShell_0_io_mem_AWREADY),
        .S00_AXI_awsize(NutShell_0_io_mem_AWSIZE),
        .S00_AXI_awuser(NutShell_0_io_mem_AWUSER),
        .S00_AXI_awvalid(NutShell_0_io_mem_AWVALID),
        .S00_AXI_bid(NutShell_0_io_mem_BID),
        .S00_AXI_bready(NutShell_0_io_mem_BREADY),
        .S00_AXI_bresp(NutShell_0_io_mem_BRESP),
        .S00_AXI_buser(NutShell_0_io_mem_BUSER),
        .S00_AXI_bvalid(NutShell_0_io_mem_BVALID),
        .S00_AXI_rdata(NutShell_0_io_mem_RDATA),
        .S00_AXI_rid(NutShell_0_io_mem_RID),
        .S00_AXI_rlast(NutShell_0_io_mem_RLAST),
        .S00_AXI_rready(NutShell_0_io_mem_RREADY),
        .S00_AXI_rresp(NutShell_0_io_mem_RRESP),
        .S00_AXI_ruser(NutShell_0_io_mem_RUSER),
        .S00_AXI_rvalid(NutShell_0_io_mem_RVALID),
        .S00_AXI_wdata(NutShell_0_io_mem_WDATA),
        .S00_AXI_wlast(NutShell_0_io_mem_WLAST),
        .S00_AXI_wready(NutShell_0_io_mem_WREADY),
        .S00_AXI_wstrb(NutShell_0_io_mem_WSTRB),
        .S00_AXI_wvalid(NutShell_0_io_mem_WVALID));
  nutshell_axi_protocol_convert_0_0 axi_protocol_convert_0
       (.aclk(uncoreclk_1),
        .aresetn(uncorerstn_2),
        .m_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .m_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .m_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .m_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .m_axi_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .m_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .s_axi_araddr(M_AXI_DMA_1_ARADDR),
        .s_axi_arburst(M_AXI_DMA_1_ARBURST),
        .s_axi_arcache(M_AXI_DMA_1_ARCACHE),
        .s_axi_arid(M_AXI_DMA_1_ARID),
        .s_axi_arlen(M_AXI_DMA_1_ARLEN),
        .s_axi_arlock(M_AXI_DMA_1_ARLOCK),
        .s_axi_arprot(M_AXI_DMA_1_ARPROT),
        .s_axi_arqos(M_AXI_DMA_1_ARQOS),
        .s_axi_arready(M_AXI_DMA_1_ARREADY),
        .s_axi_arregion(M_AXI_DMA_1_ARREGION),
        .s_axi_arsize(M_AXI_DMA_1_ARSIZE),
        .s_axi_arvalid(M_AXI_DMA_1_ARVALID),
        .s_axi_awaddr(M_AXI_DMA_1_AWADDR),
        .s_axi_awburst(M_AXI_DMA_1_AWBURST),
        .s_axi_awcache(M_AXI_DMA_1_AWCACHE),
        .s_axi_awid(M_AXI_DMA_1_AWID),
        .s_axi_awlen(M_AXI_DMA_1_AWLEN),
        .s_axi_awlock(M_AXI_DMA_1_AWLOCK),
        .s_axi_awprot(M_AXI_DMA_1_AWPROT),
        .s_axi_awqos(M_AXI_DMA_1_AWQOS),
        .s_axi_awready(M_AXI_DMA_1_AWREADY),
        .s_axi_awregion(M_AXI_DMA_1_AWREGION),
        .s_axi_awsize(M_AXI_DMA_1_AWSIZE),
        .s_axi_awvalid(M_AXI_DMA_1_AWVALID),
        .s_axi_bid(M_AXI_DMA_1_BID),
        .s_axi_bready(M_AXI_DMA_1_BREADY),
        .s_axi_bresp(M_AXI_DMA_1_BRESP),
        .s_axi_bvalid(M_AXI_DMA_1_BVALID),
        .s_axi_rdata(M_AXI_DMA_1_RDATA),
        .s_axi_rid(M_AXI_DMA_1_RID),
        .s_axi_rlast(M_AXI_DMA_1_RLAST),
        .s_axi_rready(M_AXI_DMA_1_RREADY),
        .s_axi_rresp(M_AXI_DMA_1_RRESP),
        .s_axi_rvalid(M_AXI_DMA_1_RVALID),
        .s_axi_wdata(M_AXI_DMA_1_WDATA),
        .s_axi_wlast(M_AXI_DMA_1_WLAST),
        .s_axi_wready(M_AXI_DMA_1_WREADY),
        .s_axi_wstrb(M_AXI_DMA_1_WSTRB),
        .s_axi_wvalid(M_AXI_DMA_1_WVALID));
  nutshell_axi_protocol_convert_1_0 axi_protocol_convert_1
       (.aclk(uncoreclk_1),
        .aresetn(uncorerstn_2),
        .m_axi_araddr(S00_AXI_2_ARADDR),
        .m_axi_arburst(S00_AXI_2_ARBURST),
        .m_axi_arcache(S00_AXI_2_ARCACHE),
        .m_axi_arlen(S00_AXI_2_ARLEN),
        .m_axi_arlock(S00_AXI_2_ARLOCK),
        .m_axi_arprot(S00_AXI_2_ARPROT),
        .m_axi_arqos(S00_AXI_2_ARQOS),
        .m_axi_arready(S00_AXI_2_ARREADY),
        .m_axi_arregion(S00_AXI_2_ARREGION),
        .m_axi_arsize(S00_AXI_2_ARSIZE),
        .m_axi_arvalid(S00_AXI_2_ARVALID),
        .m_axi_awaddr(S00_AXI_2_AWADDR),
        .m_axi_awburst(S00_AXI_2_AWBURST),
        .m_axi_awcache(S00_AXI_2_AWCACHE),
        .m_axi_awlen(S00_AXI_2_AWLEN),
        .m_axi_awlock(S00_AXI_2_AWLOCK),
        .m_axi_awprot(S00_AXI_2_AWPROT),
        .m_axi_awqos(S00_AXI_2_AWQOS),
        .m_axi_awready(S00_AXI_2_AWREADY),
        .m_axi_awregion(S00_AXI_2_AWREGION),
        .m_axi_awsize(S00_AXI_2_AWSIZE),
        .m_axi_awvalid(S00_AXI_2_AWVALID),
        .m_axi_bready(S00_AXI_2_BREADY),
        .m_axi_bresp(S00_AXI_2_BRESP),
        .m_axi_bvalid(S00_AXI_2_BVALID),
        .m_axi_rdata(S00_AXI_2_RDATA),
        .m_axi_rlast(S00_AXI_2_RLAST),
        .m_axi_rready(S00_AXI_2_RREADY),
        .m_axi_rresp(S00_AXI_2_RRESP),
        .m_axi_rvalid(S00_AXI_2_RVALID),
        .m_axi_wdata(S00_AXI_2_WDATA),
        .m_axi_wlast(S00_AXI_2_WLAST),
        .m_axi_wready(S00_AXI_2_WREADY),
        .m_axi_wstrb(S00_AXI_2_WSTRB),
        .m_axi_wvalid(S00_AXI_2_WVALID),
        .s_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .s_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .s_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .s_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .s_axi_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .s_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .s_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .s_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .s_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .s_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .s_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .s_axi_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .s_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .s_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID));
  nutshell_system_ila_0_0 system_ila_0
       (.clk(coreclk_1),
        .probe0(NutShell_0_io_ila_WBUpc),
        .probe1(NutShell_0_io_ila_WBUvalid),
        .probe2(NutShell_0_io_ila_WBUrfWen),
        .probe3(NutShell_0_io_ila_WBUrfDest),
        .probe4(NutShell_0_io_ila_WBUrfData),
        .probe5(NutShell_0_io_ila_InstrCnt));
  nutshell_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(c_shift_ram_0_Q),
        .Res(util_vector_logic_0_Res));
endmodule

module nutshell_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [7:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]s00_couplers_to_axi_interconnect_0_ARLEN;
  wire s00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARQOS;
  wire s00_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARSIZE;
  wire s00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]s00_couplers_to_axi_interconnect_0_AWLEN;
  wire s00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWQOS;
  wire s00_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWSIZE;
  wire s00_couplers_to_axi_interconnect_0_AWVALID;
  wire s00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_BRESP;
  wire s00_couplers_to_axi_interconnect_0_BVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_0_RDATA;
  wire s00_couplers_to_axi_interconnect_0_RLAST;
  wire s00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_RRESP;
  wire s00_couplers_to_axi_interconnect_0_RVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_0_WDATA;
  wire s00_couplers_to_axi_interconnect_0_WLAST;
  wire s00_couplers_to_axi_interconnect_0_WREADY;
  wire [7:0]s00_couplers_to_axi_interconnect_0_WSTRB;
  wire s00_couplers_to_axi_interconnect_0_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock = s00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock = s00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = M00_ACLK;
  assign axi_interconnect_0_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[63:0];
  assign s00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  s00_couplers_imp_9Z0I4V s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
endmodule

module nutshell_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_buser,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_ruser,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [0:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_buser;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [0:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_ruser;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awuser;
  input S00_AXI_awvalid;
  output S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_buser;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_ruser;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_1_ACLK_net;
  wire axi_interconnect_1_ARESETN_net;
  wire [31:0]axi_interconnect_1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARCACHE;
  wire axi_interconnect_1_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_1_to_s00_couplers_ARLEN;
  wire axi_interconnect_1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARQOS;
  wire axi_interconnect_1_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARSIZE;
  wire axi_interconnect_1_to_s00_couplers_ARUSER;
  wire axi_interconnect_1_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWCACHE;
  wire axi_interconnect_1_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_1_to_s00_couplers_AWLEN;
  wire axi_interconnect_1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWQOS;
  wire axi_interconnect_1_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWSIZE;
  wire axi_interconnect_1_to_s00_couplers_AWUSER;
  wire axi_interconnect_1_to_s00_couplers_AWVALID;
  wire axi_interconnect_1_to_s00_couplers_BID;
  wire axi_interconnect_1_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_BRESP;
  wire axi_interconnect_1_to_s00_couplers_BUSER;
  wire axi_interconnect_1_to_s00_couplers_BVALID;
  wire [63:0]axi_interconnect_1_to_s00_couplers_RDATA;
  wire axi_interconnect_1_to_s00_couplers_RID;
  wire axi_interconnect_1_to_s00_couplers_RLAST;
  wire axi_interconnect_1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_RRESP;
  wire axi_interconnect_1_to_s00_couplers_RUSER;
  wire axi_interconnect_1_to_s00_couplers_RVALID;
  wire [63:0]axi_interconnect_1_to_s00_couplers_WDATA;
  wire axi_interconnect_1_to_s00_couplers_WLAST;
  wire axi_interconnect_1_to_s00_couplers_WREADY;
  wire [7:0]axi_interconnect_1_to_s00_couplers_WSTRB;
  wire axi_interconnect_1_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_1_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_1_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_1_ARCACHE;
  wire [0:0]s00_couplers_to_axi_interconnect_1_ARID;
  wire [7:0]s00_couplers_to_axi_interconnect_1_ARLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_1_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_1_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_1_ARQOS;
  wire s00_couplers_to_axi_interconnect_1_ARREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_1_ARREGION;
  wire [2:0]s00_couplers_to_axi_interconnect_1_ARSIZE;
  wire [0:0]s00_couplers_to_axi_interconnect_1_ARUSER;
  wire s00_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_1_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_1_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_1_AWCACHE;
  wire [0:0]s00_couplers_to_axi_interconnect_1_AWID;
  wire [7:0]s00_couplers_to_axi_interconnect_1_AWLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_1_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_1_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_1_AWQOS;
  wire s00_couplers_to_axi_interconnect_1_AWREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_1_AWREGION;
  wire [2:0]s00_couplers_to_axi_interconnect_1_AWSIZE;
  wire [0:0]s00_couplers_to_axi_interconnect_1_AWUSER;
  wire s00_couplers_to_axi_interconnect_1_AWVALID;
  wire [0:0]s00_couplers_to_axi_interconnect_1_BID;
  wire s00_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_1_BRESP;
  wire [0:0]s00_couplers_to_axi_interconnect_1_BUSER;
  wire s00_couplers_to_axi_interconnect_1_BVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_1_RDATA;
  wire [0:0]s00_couplers_to_axi_interconnect_1_RID;
  wire s00_couplers_to_axi_interconnect_1_RLAST;
  wire s00_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_1_RRESP;
  wire [0:0]s00_couplers_to_axi_interconnect_1_RUSER;
  wire s00_couplers_to_axi_interconnect_1_RVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_1_WDATA;
  wire s00_couplers_to_axi_interconnect_1_WLAST;
  wire s00_couplers_to_axi_interconnect_1_WREADY;
  wire [7:0]s00_couplers_to_axi_interconnect_1_WSTRB;
  wire s00_couplers_to_axi_interconnect_1_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_1_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_1_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_1_ARCACHE;
  assign M00_AXI_arid[0] = s00_couplers_to_axi_interconnect_1_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_1_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_interconnect_1_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_1_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_1_ARQOS;
  assign M00_AXI_arregion[3:0] = s00_couplers_to_axi_interconnect_1_ARREGION;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_1_ARSIZE;
  assign M00_AXI_aruser[0] = s00_couplers_to_axi_interconnect_1_ARUSER;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_1_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_1_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_1_AWCACHE;
  assign M00_AXI_awid[0] = s00_couplers_to_axi_interconnect_1_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_1_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_interconnect_1_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_1_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_1_AWQOS;
  assign M00_AXI_awregion[3:0] = s00_couplers_to_axi_interconnect_1_AWREGION;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_1_AWSIZE;
  assign M00_AXI_awuser[0] = s00_couplers_to_axi_interconnect_1_AWUSER;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_1_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_1_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_1_RREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_interconnect_1_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_1_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_interconnect_1_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid = axi_interconnect_1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_1_to_s00_couplers_BRESP;
  assign S00_AXI_buser = axi_interconnect_1_to_s00_couplers_BUSER;
  assign S00_AXI_bvalid = axi_interconnect_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_interconnect_1_to_s00_couplers_RDATA;
  assign S00_AXI_rid = axi_interconnect_1_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_1_to_s00_couplers_RRESP;
  assign S00_AXI_ruser = axi_interconnect_1_to_s00_couplers_RUSER;
  assign S00_AXI_rvalid = axi_interconnect_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_1_to_s00_couplers_WREADY;
  assign axi_interconnect_1_ACLK_net = M00_ACLK;
  assign axi_interconnect_1_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARID = S00_AXI_arid;
  assign axi_interconnect_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARUSER = S00_AXI_aruser;
  assign axi_interconnect_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWID = S00_AXI_awid;
  assign axi_interconnect_1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWUSER = S00_AXI_awuser;
  assign axi_interconnect_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_1_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_interconnect_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_interconnect_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_1_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_1_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_1_BID = M00_AXI_bid[0];
  assign s00_couplers_to_axi_interconnect_1_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_1_BUSER = M00_AXI_buser[0];
  assign s00_couplers_to_axi_interconnect_1_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_1_RDATA = M00_AXI_rdata[63:0];
  assign s00_couplers_to_axi_interconnect_1_RID = M00_AXI_rid[0];
  assign s00_couplers_to_axi_interconnect_1_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_1_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_1_RUSER = M00_AXI_ruser[0];
  assign s00_couplers_to_axi_interconnect_1_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_1_WREADY = M00_AXI_wready;
  s00_couplers_imp_ENW2Z3 s00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_1_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_1_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_interconnect_1_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_1_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_1_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_1_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_1_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arregion(s00_couplers_to_axi_interconnect_1_ARREGION),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_1_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_axi_interconnect_1_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_1_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_1_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_interconnect_1_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_1_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_1_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_1_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_1_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awregion(s00_couplers_to_axi_interconnect_1_AWREGION),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_1_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_axi_interconnect_1_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_interconnect_1_BID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_buser(s00_couplers_to_axi_interconnect_1_BUSER),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_interconnect_1_RID),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_1_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_ruser(s00_couplers_to_axi_interconnect_1_RUSER),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_1_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_1_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_1_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(axi_interconnect_1_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(axi_interconnect_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_1_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_1_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(axi_interconnect_1_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(axi_interconnect_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_1_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s00_couplers_BRESP),
        .S_AXI_buser(axi_interconnect_1_to_s00_couplers_BUSER),
        .S_AXI_bvalid(axi_interconnect_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_1_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s00_couplers_RRESP),
        .S_AXI_ruser(axi_interconnect_1_to_s00_couplers_RUSER),
        .S_AXI_rvalid(axi_interconnect_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s00_couplers_WVALID));
endmodule

module nutshell_axi_interconnect_2_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_buser,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_ruser,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [0:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_buser;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [0:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_ruser;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awuser;
  input S00_AXI_awvalid;
  output S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_buser;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_ruser;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_2_ACLK_net;
  wire axi_interconnect_2_ARESETN_net;
  wire [31:0]axi_interconnect_2_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_2_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_2_to_s00_couplers_ARCACHE;
  wire axi_interconnect_2_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_2_to_s00_couplers_ARLEN;
  wire axi_interconnect_2_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_2_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_2_to_s00_couplers_ARQOS;
  wire axi_interconnect_2_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_2_to_s00_couplers_ARSIZE;
  wire axi_interconnect_2_to_s00_couplers_ARUSER;
  wire axi_interconnect_2_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_2_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_2_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_2_to_s00_couplers_AWCACHE;
  wire axi_interconnect_2_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_2_to_s00_couplers_AWLEN;
  wire axi_interconnect_2_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_2_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_2_to_s00_couplers_AWQOS;
  wire axi_interconnect_2_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_2_to_s00_couplers_AWSIZE;
  wire axi_interconnect_2_to_s00_couplers_AWUSER;
  wire axi_interconnect_2_to_s00_couplers_AWVALID;
  wire axi_interconnect_2_to_s00_couplers_BID;
  wire axi_interconnect_2_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_2_to_s00_couplers_BRESP;
  wire axi_interconnect_2_to_s00_couplers_BUSER;
  wire axi_interconnect_2_to_s00_couplers_BVALID;
  wire [63:0]axi_interconnect_2_to_s00_couplers_RDATA;
  wire axi_interconnect_2_to_s00_couplers_RID;
  wire axi_interconnect_2_to_s00_couplers_RLAST;
  wire axi_interconnect_2_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_2_to_s00_couplers_RRESP;
  wire axi_interconnect_2_to_s00_couplers_RUSER;
  wire axi_interconnect_2_to_s00_couplers_RVALID;
  wire [63:0]axi_interconnect_2_to_s00_couplers_WDATA;
  wire axi_interconnect_2_to_s00_couplers_WLAST;
  wire axi_interconnect_2_to_s00_couplers_WREADY;
  wire [7:0]axi_interconnect_2_to_s00_couplers_WSTRB;
  wire axi_interconnect_2_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_2_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_2_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_2_ARCACHE;
  wire [0:0]s00_couplers_to_axi_interconnect_2_ARID;
  wire [7:0]s00_couplers_to_axi_interconnect_2_ARLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_2_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_2_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_2_ARQOS;
  wire s00_couplers_to_axi_interconnect_2_ARREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_2_ARREGION;
  wire [2:0]s00_couplers_to_axi_interconnect_2_ARSIZE;
  wire [0:0]s00_couplers_to_axi_interconnect_2_ARUSER;
  wire s00_couplers_to_axi_interconnect_2_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_2_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_2_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_2_AWCACHE;
  wire [0:0]s00_couplers_to_axi_interconnect_2_AWID;
  wire [7:0]s00_couplers_to_axi_interconnect_2_AWLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_2_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_2_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_2_AWQOS;
  wire s00_couplers_to_axi_interconnect_2_AWREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_2_AWREGION;
  wire [2:0]s00_couplers_to_axi_interconnect_2_AWSIZE;
  wire [0:0]s00_couplers_to_axi_interconnect_2_AWUSER;
  wire s00_couplers_to_axi_interconnect_2_AWVALID;
  wire [0:0]s00_couplers_to_axi_interconnect_2_BID;
  wire s00_couplers_to_axi_interconnect_2_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_2_BRESP;
  wire [0:0]s00_couplers_to_axi_interconnect_2_BUSER;
  wire s00_couplers_to_axi_interconnect_2_BVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_2_RDATA;
  wire [0:0]s00_couplers_to_axi_interconnect_2_RID;
  wire s00_couplers_to_axi_interconnect_2_RLAST;
  wire s00_couplers_to_axi_interconnect_2_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_2_RRESP;
  wire [0:0]s00_couplers_to_axi_interconnect_2_RUSER;
  wire s00_couplers_to_axi_interconnect_2_RVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_2_WDATA;
  wire s00_couplers_to_axi_interconnect_2_WLAST;
  wire s00_couplers_to_axi_interconnect_2_WREADY;
  wire [7:0]s00_couplers_to_axi_interconnect_2_WSTRB;
  wire s00_couplers_to_axi_interconnect_2_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_2_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_2_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_2_ARCACHE;
  assign M00_AXI_arid[0] = s00_couplers_to_axi_interconnect_2_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_2_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_interconnect_2_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_2_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_2_ARQOS;
  assign M00_AXI_arregion[3:0] = s00_couplers_to_axi_interconnect_2_ARREGION;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_2_ARSIZE;
  assign M00_AXI_aruser[0] = s00_couplers_to_axi_interconnect_2_ARUSER;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_2_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_2_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_2_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_2_AWCACHE;
  assign M00_AXI_awid[0] = s00_couplers_to_axi_interconnect_2_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_2_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_interconnect_2_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_2_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_2_AWQOS;
  assign M00_AXI_awregion[3:0] = s00_couplers_to_axi_interconnect_2_AWREGION;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_2_AWSIZE;
  assign M00_AXI_awuser[0] = s00_couplers_to_axi_interconnect_2_AWUSER;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_2_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_2_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_2_RREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_interconnect_2_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_2_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_interconnect_2_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_2_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_2_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_2_to_s00_couplers_AWREADY;
  assign S00_AXI_bid = axi_interconnect_2_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_2_to_s00_couplers_BRESP;
  assign S00_AXI_buser = axi_interconnect_2_to_s00_couplers_BUSER;
  assign S00_AXI_bvalid = axi_interconnect_2_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_interconnect_2_to_s00_couplers_RDATA;
  assign S00_AXI_rid = axi_interconnect_2_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_2_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_2_to_s00_couplers_RRESP;
  assign S00_AXI_ruser = axi_interconnect_2_to_s00_couplers_RUSER;
  assign S00_AXI_rvalid = axi_interconnect_2_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_2_to_s00_couplers_WREADY;
  assign axi_interconnect_2_ACLK_net = M00_ACLK;
  assign axi_interconnect_2_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_2_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_2_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_2_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_2_to_s00_couplers_ARID = S00_AXI_arid;
  assign axi_interconnect_2_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_2_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_2_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_2_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_2_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_2_to_s00_couplers_ARUSER = S00_AXI_aruser;
  assign axi_interconnect_2_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_2_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_2_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_2_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_2_to_s00_couplers_AWID = S00_AXI_awid;
  assign axi_interconnect_2_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_2_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_2_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_2_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_2_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_2_to_s00_couplers_AWUSER = S00_AXI_awuser;
  assign axi_interconnect_2_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_2_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_2_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_2_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_interconnect_2_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_2_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_interconnect_2_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_2_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_2_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_2_BID = M00_AXI_bid[0];
  assign s00_couplers_to_axi_interconnect_2_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_2_BUSER = M00_AXI_buser[0];
  assign s00_couplers_to_axi_interconnect_2_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_2_RDATA = M00_AXI_rdata[63:0];
  assign s00_couplers_to_axi_interconnect_2_RID = M00_AXI_rid[0];
  assign s00_couplers_to_axi_interconnect_2_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_2_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_2_RUSER = M00_AXI_ruser[0];
  assign s00_couplers_to_axi_interconnect_2_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_2_WREADY = M00_AXI_wready;
  s00_couplers_imp_3S65VZ s00_couplers
       (.M_ACLK(axi_interconnect_2_ACLK_net),
        .M_ARESETN(axi_interconnect_2_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_2_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_2_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_2_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_interconnect_2_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_2_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_2_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_2_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_2_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_2_ARREADY),
        .M_AXI_arregion(s00_couplers_to_axi_interconnect_2_ARREGION),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_2_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_axi_interconnect_2_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_2_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_2_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_2_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_2_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_interconnect_2_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_2_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_2_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_2_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_2_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_2_AWREADY),
        .M_AXI_awregion(s00_couplers_to_axi_interconnect_2_AWREGION),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_2_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_axi_interconnect_2_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_2_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_interconnect_2_BID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_2_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_2_BRESP),
        .M_AXI_buser(s00_couplers_to_axi_interconnect_2_BUSER),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_2_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_2_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_interconnect_2_RID),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_2_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_2_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_2_RRESP),
        .M_AXI_ruser(s00_couplers_to_axi_interconnect_2_RUSER),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_2_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_2_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_2_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_2_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_2_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_2_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_2_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_2_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_2_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_2_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_2_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_2_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_2_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_2_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_2_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_2_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(axi_interconnect_2_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(axi_interconnect_2_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_2_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_2_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_2_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_2_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_2_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_2_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_2_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_2_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_2_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_2_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(axi_interconnect_2_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(axi_interconnect_2_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_2_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_2_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_2_to_s00_couplers_BRESP),
        .S_AXI_buser(axi_interconnect_2_to_s00_couplers_BUSER),
        .S_AXI_bvalid(axi_interconnect_2_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_2_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_2_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_2_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_2_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_2_to_s00_couplers_RRESP),
        .S_AXI_ruser(axi_interconnect_2_to_s00_couplers_RUSER),
        .S_AXI_rvalid(axi_interconnect_2_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_2_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_2_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_2_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_2_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_2_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_3S65VZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_buser,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_ruser,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_buser,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [0:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_buser;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [0:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_ruser;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_aruser;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awuser;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_buser;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_ruser;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [0:0]auto_cc_to_s00_couplers_ARID;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [3:0]auto_cc_to_s00_couplers_ARREGION;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire [0:0]auto_cc_to_s00_couplers_ARUSER;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [31:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [0:0]auto_cc_to_s00_couplers_AWID;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [3:0]auto_cc_to_s00_couplers_AWREGION;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire [0:0]auto_cc_to_s00_couplers_AWUSER;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire [0:0]auto_cc_to_s00_couplers_BID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire [0:0]auto_cc_to_s00_couplers_BUSER;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [63:0]auto_cc_to_s00_couplers_RDATA;
  wire [0:0]auto_cc_to_s00_couplers_RID;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire [0:0]auto_cc_to_s00_couplers_RUSER;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [63:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [7:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_cc_ARADDR;
  wire [1:0]s00_couplers_to_auto_cc_ARBURST;
  wire [3:0]s00_couplers_to_auto_cc_ARCACHE;
  wire s00_couplers_to_auto_cc_ARID;
  wire [7:0]s00_couplers_to_auto_cc_ARLEN;
  wire s00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire [3:0]s00_couplers_to_auto_cc_ARQOS;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [2:0]s00_couplers_to_auto_cc_ARSIZE;
  wire s00_couplers_to_auto_cc_ARUSER;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [31:0]s00_couplers_to_auto_cc_AWADDR;
  wire [1:0]s00_couplers_to_auto_cc_AWBURST;
  wire [3:0]s00_couplers_to_auto_cc_AWCACHE;
  wire s00_couplers_to_auto_cc_AWID;
  wire [7:0]s00_couplers_to_auto_cc_AWLEN;
  wire s00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire [3:0]s00_couplers_to_auto_cc_AWQOS;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [2:0]s00_couplers_to_auto_cc_AWSIZE;
  wire s00_couplers_to_auto_cc_AWUSER;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire [0:0]s00_couplers_to_auto_cc_BID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire [0:0]s00_couplers_to_auto_cc_BUSER;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [63:0]s00_couplers_to_auto_cc_RDATA;
  wire [0:0]s00_couplers_to_auto_cc_RID;
  wire s00_couplers_to_auto_cc_RLAST;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire [0:0]s00_couplers_to_auto_cc_RUSER;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [63:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WLAST;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [7:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[0] = auto_cc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = auto_cc_to_s00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[0] = auto_cc_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_cc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = auto_cc_to_s00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[0] = auto_cc_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid = s00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_buser = s00_couplers_to_auto_cc_BUSER;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid = s00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_ruser = s00_couplers_to_auto_cc_RUSER;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BID = M_AXI_bid[0];
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BUSER = M_AXI_buser[0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_cc_to_s00_couplers_RID = M_AXI_rid[0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RUSER = M_AXI_ruser[0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_cc_ARID = S_AXI_arid;
  assign s00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_cc_ARUSER = S_AXI_aruser;
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_cc_AWID = S_AXI_awid;
  assign s00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_cc_AWUSER = S_AXI_awuser;
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  nutshell_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arregion(auto_cc_to_s00_couplers_ARREGION),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_aruser(auto_cc_to_s00_couplers_ARUSER),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awregion(auto_cc_to_s00_couplers_AWREGION),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awuser(auto_cc_to_s00_couplers_AWUSER),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_s00_couplers_BID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_buser(auto_cc_to_s00_couplers_BUSER),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_s00_couplers_RID),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_ruser(auto_cc_to_s00_couplers_RUSER),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(s00_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(s00_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_cc_BID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_buser(s00_couplers_to_auto_cc_BUSER),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_cc_RID),
        .s_axi_rlast(s00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_ruser(s00_couplers_to_auto_cc_RUSER),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_9Z0I4V
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [31:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [63:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [63:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [7:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_cc_ARADDR;
  wire [1:0]s00_couplers_to_auto_cc_ARBURST;
  wire [3:0]s00_couplers_to_auto_cc_ARCACHE;
  wire [7:0]s00_couplers_to_auto_cc_ARLEN;
  wire [0:0]s00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire [3:0]s00_couplers_to_auto_cc_ARQOS;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [3:0]s00_couplers_to_auto_cc_ARREGION;
  wire [2:0]s00_couplers_to_auto_cc_ARSIZE;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [31:0]s00_couplers_to_auto_cc_AWADDR;
  wire [1:0]s00_couplers_to_auto_cc_AWBURST;
  wire [3:0]s00_couplers_to_auto_cc_AWCACHE;
  wire [7:0]s00_couplers_to_auto_cc_AWLEN;
  wire [0:0]s00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire [3:0]s00_couplers_to_auto_cc_AWQOS;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [3:0]s00_couplers_to_auto_cc_AWREGION;
  wire [2:0]s00_couplers_to_auto_cc_AWSIZE;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [63:0]s00_couplers_to_auto_cc_RDATA;
  wire s00_couplers_to_auto_cc_RLAST;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [63:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WLAST;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [7:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  nutshell_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_ENW2Z3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_buser,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_ruser,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_buser,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [0:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_buser;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [0:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_ruser;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_aruser;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awuser;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_buser;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_ruser;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [0:0]auto_cc_to_s00_couplers_ARID;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [3:0]auto_cc_to_s00_couplers_ARREGION;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire [0:0]auto_cc_to_s00_couplers_ARUSER;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [31:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [0:0]auto_cc_to_s00_couplers_AWID;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [3:0]auto_cc_to_s00_couplers_AWREGION;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire [0:0]auto_cc_to_s00_couplers_AWUSER;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire [0:0]auto_cc_to_s00_couplers_BID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire [0:0]auto_cc_to_s00_couplers_BUSER;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [63:0]auto_cc_to_s00_couplers_RDATA;
  wire [0:0]auto_cc_to_s00_couplers_RID;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire [0:0]auto_cc_to_s00_couplers_RUSER;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [63:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [7:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_cc_ARADDR;
  wire [1:0]s00_couplers_to_auto_cc_ARBURST;
  wire [3:0]s00_couplers_to_auto_cc_ARCACHE;
  wire s00_couplers_to_auto_cc_ARID;
  wire [7:0]s00_couplers_to_auto_cc_ARLEN;
  wire s00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire [3:0]s00_couplers_to_auto_cc_ARQOS;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [2:0]s00_couplers_to_auto_cc_ARSIZE;
  wire s00_couplers_to_auto_cc_ARUSER;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [31:0]s00_couplers_to_auto_cc_AWADDR;
  wire [1:0]s00_couplers_to_auto_cc_AWBURST;
  wire [3:0]s00_couplers_to_auto_cc_AWCACHE;
  wire s00_couplers_to_auto_cc_AWID;
  wire [7:0]s00_couplers_to_auto_cc_AWLEN;
  wire s00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire [3:0]s00_couplers_to_auto_cc_AWQOS;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [2:0]s00_couplers_to_auto_cc_AWSIZE;
  wire s00_couplers_to_auto_cc_AWUSER;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire [0:0]s00_couplers_to_auto_cc_BID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire [0:0]s00_couplers_to_auto_cc_BUSER;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [63:0]s00_couplers_to_auto_cc_RDATA;
  wire [0:0]s00_couplers_to_auto_cc_RID;
  wire s00_couplers_to_auto_cc_RLAST;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire [0:0]s00_couplers_to_auto_cc_RUSER;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [63:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WLAST;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [7:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[0] = auto_cc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = auto_cc_to_s00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[0] = auto_cc_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_cc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = auto_cc_to_s00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[0] = auto_cc_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid = s00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_buser = s00_couplers_to_auto_cc_BUSER;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid = s00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_ruser = s00_couplers_to_auto_cc_RUSER;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BID = M_AXI_bid[0];
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BUSER = M_AXI_buser[0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_cc_to_s00_couplers_RID = M_AXI_rid[0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RUSER = M_AXI_ruser[0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_cc_ARID = S_AXI_arid;
  assign s00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_cc_ARUSER = S_AXI_aruser;
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_cc_AWID = S_AXI_awid;
  assign s00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_cc_AWUSER = S_AXI_awuser;
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  nutshell_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arregion(auto_cc_to_s00_couplers_ARREGION),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_aruser(auto_cc_to_s00_couplers_ARUSER),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awregion(auto_cc_to_s00_couplers_AWREGION),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awuser(auto_cc_to_s00_couplers_AWUSER),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_s00_couplers_BID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_buser(auto_cc_to_s00_couplers_BUSER),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_s00_couplers_RID),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_ruser(auto_cc_to_s00_couplers_RUSER),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(s00_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(s00_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_cc_BID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_buser(s00_couplers_to_auto_cc_BUSER),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_cc_RID),
        .s_axi_rlast(s00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_ruser(s00_couplers_to_auto_cc_RUSER),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule
