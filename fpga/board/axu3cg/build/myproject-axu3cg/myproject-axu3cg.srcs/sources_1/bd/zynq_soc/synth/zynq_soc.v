//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Tue Aug 16 10:30:30 2022
//Host        : stu running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target zynq_soc.bd
//Design      : zynq_soc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hier_arm_peripheral_imp_14HN6AJ
   (M00_AXI1_araddr,
    M00_AXI1_arburst,
    M00_AXI1_arcache,
    M00_AXI1_arid,
    M00_AXI1_arlen,
    M00_AXI1_arlock,
    M00_AXI1_arprot,
    M00_AXI1_arqos,
    M00_AXI1_arready,
    M00_AXI1_arsize,
    M00_AXI1_aruser,
    M00_AXI1_arvalid,
    M00_AXI1_awaddr,
    M00_AXI1_awburst,
    M00_AXI1_awcache,
    M00_AXI1_awid,
    M00_AXI1_awlen,
    M00_AXI1_awlock,
    M00_AXI1_awprot,
    M00_AXI1_awqos,
    M00_AXI1_awready,
    M00_AXI1_awsize,
    M00_AXI1_awuser,
    M00_AXI1_awvalid,
    M00_AXI1_bid,
    M00_AXI1_bready,
    M00_AXI1_bresp,
    M00_AXI1_bvalid,
    M00_AXI1_rdata,
    M00_AXI1_rid,
    M00_AXI1_rlast,
    M00_AXI1_rready,
    M00_AXI1_rresp,
    M00_AXI1_rvalid,
    M00_AXI1_wdata,
    M00_AXI1_wlast,
    M00_AXI1_wready,
    M00_AXI1_wstrb,
    M00_AXI1_wvalid,
    M_AXIS_MM2S_tdata,
    M_AXIS_MM2S_tkeep,
    M_AXIS_MM2S_tlast,
    M_AXIS_MM2S_tready,
    M_AXIS_MM2S_tvalid,
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
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S_AXIS_S2MM_tdata,
    S_AXIS_S2MM_tkeep,
    S_AXIS_S2MM_tlast,
    S_AXIS_S2MM_tready,
    S_AXIS_S2MM_tvalid,
    S_AXI_MEM_araddr,
    S_AXI_MEM_arburst,
    S_AXI_MEM_arcache,
    S_AXI_MEM_arid,
    S_AXI_MEM_arlen,
    S_AXI_MEM_arlock,
    S_AXI_MEM_arprot,
    S_AXI_MEM_arqos,
    S_AXI_MEM_arready,
    S_AXI_MEM_arsize,
    S_AXI_MEM_aruser,
    S_AXI_MEM_arvalid,
    S_AXI_MEM_awaddr,
    S_AXI_MEM_awburst,
    S_AXI_MEM_awcache,
    S_AXI_MEM_awid,
    S_AXI_MEM_awlen,
    S_AXI_MEM_awlock,
    S_AXI_MEM_awprot,
    S_AXI_MEM_awqos,
    S_AXI_MEM_awready,
    S_AXI_MEM_awsize,
    S_AXI_MEM_awuser,
    S_AXI_MEM_awvalid,
    S_AXI_MEM_bid,
    S_AXI_MEM_bready,
    S_AXI_MEM_bresp,
    S_AXI_MEM_bvalid,
    S_AXI_MEM_rdata,
    S_AXI_MEM_rid,
    S_AXI_MEM_rlast,
    S_AXI_MEM_rready,
    S_AXI_MEM_rresp,
    S_AXI_MEM_rvalid,
    S_AXI_MEM_wdata,
    S_AXI_MEM_wlast,
    S_AXI_MEM_wready,
    S_AXI_MEM_wstrb,
    S_AXI_MEM_wvalid,
    corerstn,
    interrupt,
    mm2s_introut,
    rx,
    s2mm_introut,
    tx,
    uncoreclk,
    uncorerstn);
  output [39:0]M00_AXI1_araddr;
  output [1:0]M00_AXI1_arburst;
  output [3:0]M00_AXI1_arcache;
  output [5:0]M00_AXI1_arid;
  output [7:0]M00_AXI1_arlen;
  output M00_AXI1_arlock;
  output [2:0]M00_AXI1_arprot;
  output [3:0]M00_AXI1_arqos;
  input M00_AXI1_arready;
  output [2:0]M00_AXI1_arsize;
  output M00_AXI1_aruser;
  output M00_AXI1_arvalid;
  output [39:0]M00_AXI1_awaddr;
  output [1:0]M00_AXI1_awburst;
  output [3:0]M00_AXI1_awcache;
  output [5:0]M00_AXI1_awid;
  output [7:0]M00_AXI1_awlen;
  output M00_AXI1_awlock;
  output [2:0]M00_AXI1_awprot;
  output [3:0]M00_AXI1_awqos;
  input M00_AXI1_awready;
  output [2:0]M00_AXI1_awsize;
  output M00_AXI1_awuser;
  output M00_AXI1_awvalid;
  input [5:0]M00_AXI1_bid;
  output M00_AXI1_bready;
  input [1:0]M00_AXI1_bresp;
  input M00_AXI1_bvalid;
  input [63:0]M00_AXI1_rdata;
  input [5:0]M00_AXI1_rid;
  input M00_AXI1_rlast;
  output M00_AXI1_rready;
  input [1:0]M00_AXI1_rresp;
  input M00_AXI1_rvalid;
  output [63:0]M00_AXI1_wdata;
  output M00_AXI1_wlast;
  input M00_AXI1_wready;
  output [7:0]M00_AXI1_wstrb;
  output M00_AXI1_wvalid;
  output [31:0]M_AXIS_MM2S_tdata;
  output [3:0]M_AXIS_MM2S_tkeep;
  output M_AXIS_MM2S_tlast;
  input M_AXIS_MM2S_tready;
  output M_AXIS_MM2S_tvalid;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input [31:0]S_AXIS_S2MM_tdata;
  input [3:0]S_AXIS_S2MM_tkeep;
  input S_AXIS_S2MM_tlast;
  output S_AXIS_S2MM_tready;
  input S_AXIS_S2MM_tvalid;
  input [39:0]S_AXI_MEM_araddr;
  input [1:0]S_AXI_MEM_arburst;
  input [3:0]S_AXI_MEM_arcache;
  input [3:0]S_AXI_MEM_arid;
  input [7:0]S_AXI_MEM_arlen;
  input [0:0]S_AXI_MEM_arlock;
  input [2:0]S_AXI_MEM_arprot;
  input [3:0]S_AXI_MEM_arqos;
  output S_AXI_MEM_arready;
  input [2:0]S_AXI_MEM_arsize;
  input [0:0]S_AXI_MEM_aruser;
  input S_AXI_MEM_arvalid;
  input [39:0]S_AXI_MEM_awaddr;
  input [1:0]S_AXI_MEM_awburst;
  input [3:0]S_AXI_MEM_awcache;
  input [3:0]S_AXI_MEM_awid;
  input [7:0]S_AXI_MEM_awlen;
  input [0:0]S_AXI_MEM_awlock;
  input [2:0]S_AXI_MEM_awprot;
  input [3:0]S_AXI_MEM_awqos;
  output S_AXI_MEM_awready;
  input [2:0]S_AXI_MEM_awsize;
  input [0:0]S_AXI_MEM_awuser;
  input S_AXI_MEM_awvalid;
  output [3:0]S_AXI_MEM_bid;
  input S_AXI_MEM_bready;
  output [1:0]S_AXI_MEM_bresp;
  output S_AXI_MEM_bvalid;
  output [63:0]S_AXI_MEM_rdata;
  output [3:0]S_AXI_MEM_rid;
  output S_AXI_MEM_rlast;
  input S_AXI_MEM_rready;
  output [1:0]S_AXI_MEM_rresp;
  output S_AXI_MEM_rvalid;
  input [63:0]S_AXI_MEM_wdata;
  input S_AXI_MEM_wlast;
  output S_AXI_MEM_wready;
  input [7:0]S_AXI_MEM_wstrb;
  input S_AXI_MEM_wvalid;
  output [0:0]corerstn;
  output interrupt;
  output mm2s_introut;
  input rx;
  output s2mm_introut;
  output tx;
  input uncoreclk;
  input uncorerstn;

  wire [39:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [5:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARUSER;
  wire Conn2_ARVALID;
  wire [39:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [5:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWUSER;
  wire Conn2_AWVALID;
  wire [5:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [63:0]Conn2_RDATA;
  wire [5:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [63:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [7:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [39:0]S00_AXI_2_ARADDR;
  wire [1:0]S00_AXI_2_ARBURST;
  wire [3:0]S00_AXI_2_ARCACHE;
  wire [15:0]S00_AXI_2_ARID;
  wire [7:0]S00_AXI_2_ARLEN;
  wire S00_AXI_2_ARLOCK;
  wire [2:0]S00_AXI_2_ARPROT;
  wire [3:0]S00_AXI_2_ARQOS;
  wire S00_AXI_2_ARREADY;
  wire [2:0]S00_AXI_2_ARSIZE;
  wire S00_AXI_2_ARVALID;
  wire [39:0]S00_AXI_2_AWADDR;
  wire [1:0]S00_AXI_2_AWBURST;
  wire [3:0]S00_AXI_2_AWCACHE;
  wire [15:0]S00_AXI_2_AWID;
  wire [7:0]S00_AXI_2_AWLEN;
  wire S00_AXI_2_AWLOCK;
  wire [2:0]S00_AXI_2_AWPROT;
  wire [3:0]S00_AXI_2_AWQOS;
  wire S00_AXI_2_AWREADY;
  wire [2:0]S00_AXI_2_AWSIZE;
  wire S00_AXI_2_AWVALID;
  wire [15:0]S00_AXI_2_BID;
  wire S00_AXI_2_BREADY;
  wire [1:0]S00_AXI_2_BRESP;
  wire S00_AXI_2_BVALID;
  wire [31:0]S00_AXI_2_RDATA;
  wire [15:0]S00_AXI_2_RID;
  wire S00_AXI_2_RLAST;
  wire S00_AXI_2_RREADY;
  wire [1:0]S00_AXI_2_RRESP;
  wire S00_AXI_2_RVALID;
  wire [31:0]S00_AXI_2_WDATA;
  wire S00_AXI_2_WLAST;
  wire S00_AXI_2_WREADY;
  wire [3:0]S00_AXI_2_WSTRB;
  wire S00_AXI_2_WVALID;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [2:0]S01_AXI_1_ARPROT;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [31:0]S02_AXI_1_AWADDR;
  wire [1:0]S02_AXI_1_AWBURST;
  wire [3:0]S02_AXI_1_AWCACHE;
  wire [7:0]S02_AXI_1_AWLEN;
  wire [2:0]S02_AXI_1_AWPROT;
  wire S02_AXI_1_AWREADY;
  wire [2:0]S02_AXI_1_AWSIZE;
  wire S02_AXI_1_AWVALID;
  wire S02_AXI_1_BREADY;
  wire [1:0]S02_AXI_1_BRESP;
  wire S02_AXI_1_BVALID;
  wire [31:0]S02_AXI_1_WDATA;
  wire S02_AXI_1_WLAST;
  wire S02_AXI_1_WREADY;
  wire [3:0]S02_AXI_1_WSTRB;
  wire S02_AXI_1_WVALID;
  wire [31:0]S_AXIS_S2MM_1_TDATA;
  wire [3:0]S_AXIS_S2MM_1_TKEEP;
  wire S_AXIS_S2MM_1_TLAST;
  wire S_AXIS_S2MM_1_TREADY;
  wire S_AXIS_S2MM_1_TVALID;
  wire [39:0]S_AXI_MEM_1_ARADDR;
  wire [1:0]S_AXI_MEM_1_ARBURST;
  wire [3:0]S_AXI_MEM_1_ARCACHE;
  wire [3:0]S_AXI_MEM_1_ARID;
  wire [7:0]S_AXI_MEM_1_ARLEN;
  wire [0:0]S_AXI_MEM_1_ARLOCK;
  wire [2:0]S_AXI_MEM_1_ARPROT;
  wire [3:0]S_AXI_MEM_1_ARQOS;
  wire S_AXI_MEM_1_ARREADY;
  wire [2:0]S_AXI_MEM_1_ARSIZE;
  wire [0:0]S_AXI_MEM_1_ARUSER;
  wire S_AXI_MEM_1_ARVALID;
  wire [39:0]S_AXI_MEM_1_AWADDR;
  wire [1:0]S_AXI_MEM_1_AWBURST;
  wire [3:0]S_AXI_MEM_1_AWCACHE;
  wire [3:0]S_AXI_MEM_1_AWID;
  wire [7:0]S_AXI_MEM_1_AWLEN;
  wire [0:0]S_AXI_MEM_1_AWLOCK;
  wire [2:0]S_AXI_MEM_1_AWPROT;
  wire [3:0]S_AXI_MEM_1_AWQOS;
  wire S_AXI_MEM_1_AWREADY;
  wire [2:0]S_AXI_MEM_1_AWSIZE;
  wire [0:0]S_AXI_MEM_1_AWUSER;
  wire S_AXI_MEM_1_AWVALID;
  wire [3:0]S_AXI_MEM_1_BID;
  wire S_AXI_MEM_1_BREADY;
  wire [1:0]S_AXI_MEM_1_BRESP;
  wire S_AXI_MEM_1_BVALID;
  wire [63:0]S_AXI_MEM_1_RDATA;
  wire [3:0]S_AXI_MEM_1_RID;
  wire S_AXI_MEM_1_RLAST;
  wire S_AXI_MEM_1_RREADY;
  wire [1:0]S_AXI_MEM_1_RRESP;
  wire S_AXI_MEM_1_RVALID;
  wire [63:0]S_AXI_MEM_1_WDATA;
  wire S_AXI_MEM_1_WLAST;
  wire S_AXI_MEM_1_WREADY;
  wire [7:0]S_AXI_MEM_1_WSTRB;
  wire S_AXI_MEM_1_WVALID;
  wire [31:0]axi_dma_arm_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_arm_M_AXIS_MM2S_TKEEP;
  wire axi_dma_arm_M_AXIS_MM2S_TLAST;
  wire axi_dma_arm_M_AXIS_MM2S_TREADY;
  wire axi_dma_arm_M_AXIS_MM2S_TVALID;
  wire axi_dma_arm_mm2s_introut;
  wire axi_dma_arm_s2mm_introut;
  wire [0:0]axi_gpio_0_gpio_io_o;
  wire [39:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire axi_interconnect_1_M00_AXI_ARREADY;
  wire axi_interconnect_1_M00_AXI_ARVALID;
  wire [39:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire axi_interconnect_1_M00_AXI_AWREADY;
  wire axi_interconnect_1_M00_AXI_AWVALID;
  wire axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire axi_interconnect_1_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_RDATA;
  wire axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire axi_interconnect_1_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_WDATA;
  wire axi_interconnect_1_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M00_AXI_WSTRB;
  wire axi_interconnect_1_M00_AXI_WVALID;
  wire [39:0]axi_interconnect_1_M01_AXI_ARADDR;
  wire axi_interconnect_1_M01_AXI_ARREADY;
  wire axi_interconnect_1_M01_AXI_ARVALID;
  wire [39:0]axi_interconnect_1_M01_AXI_AWADDR;
  wire axi_interconnect_1_M01_AXI_AWREADY;
  wire axi_interconnect_1_M01_AXI_AWVALID;
  wire axi_interconnect_1_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_BRESP;
  wire axi_interconnect_1_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_RDATA;
  wire axi_interconnect_1_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_RRESP;
  wire axi_interconnect_1_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_WDATA;
  wire axi_interconnect_1_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M01_AXI_WSTRB;
  wire axi_interconnect_1_M01_AXI_WVALID;
  wire [39:0]axi_interconnect_1_M02_AXI_ARADDR;
  wire axi_interconnect_1_M02_AXI_ARREADY;
  wire [0:0]axi_interconnect_1_M02_AXI_ARVALID;
  wire [39:0]axi_interconnect_1_M02_AXI_AWADDR;
  wire axi_interconnect_1_M02_AXI_AWREADY;
  wire [0:0]axi_interconnect_1_M02_AXI_AWVALID;
  wire [0:0]axi_interconnect_1_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M02_AXI_BRESP;
  wire axi_interconnect_1_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M02_AXI_RDATA;
  wire [0:0]axi_interconnect_1_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M02_AXI_RRESP;
  wire axi_interconnect_1_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M02_AXI_WDATA;
  wire axi_interconnect_1_M02_AXI_WREADY;
  wire [0:0]axi_interconnect_1_M02_AXI_WVALID;
  wire axi_uartlite_0_interrupt;
  wire axi_uartlite_0_tx;
  wire clk_wiz_0_clk_out1;
  wire proc_sys_reset_1_peripheral_aresetn;
  wire rvcore_uncorerst_interconnect_aresetn;
  wire rx_1;

  assign Conn2_ARREADY = M00_AXI1_arready;
  assign Conn2_AWREADY = M00_AXI1_awready;
  assign Conn2_BID = M00_AXI1_bid[5:0];
  assign Conn2_BRESP = M00_AXI1_bresp[1:0];
  assign Conn2_BVALID = M00_AXI1_bvalid;
  assign Conn2_RDATA = M00_AXI1_rdata[63:0];
  assign Conn2_RID = M00_AXI1_rid[5:0];
  assign Conn2_RLAST = M00_AXI1_rlast;
  assign Conn2_RRESP = M00_AXI1_rresp[1:0];
  assign Conn2_RVALID = M00_AXI1_rvalid;
  assign Conn2_WREADY = M00_AXI1_wready;
  assign M00_AXI1_araddr[39:0] = Conn2_ARADDR;
  assign M00_AXI1_arburst[1:0] = Conn2_ARBURST;
  assign M00_AXI1_arcache[3:0] = Conn2_ARCACHE;
  assign M00_AXI1_arid[5:0] = Conn2_ARID;
  assign M00_AXI1_arlen[7:0] = Conn2_ARLEN;
  assign M00_AXI1_arlock = Conn2_ARLOCK;
  assign M00_AXI1_arprot[2:0] = Conn2_ARPROT;
  assign M00_AXI1_arqos[3:0] = Conn2_ARQOS;
  assign M00_AXI1_arsize[2:0] = Conn2_ARSIZE;
  assign M00_AXI1_aruser = Conn2_ARUSER;
  assign M00_AXI1_arvalid = Conn2_ARVALID;
  assign M00_AXI1_awaddr[39:0] = Conn2_AWADDR;
  assign M00_AXI1_awburst[1:0] = Conn2_AWBURST;
  assign M00_AXI1_awcache[3:0] = Conn2_AWCACHE;
  assign M00_AXI1_awid[5:0] = Conn2_AWID;
  assign M00_AXI1_awlen[7:0] = Conn2_AWLEN;
  assign M00_AXI1_awlock = Conn2_AWLOCK;
  assign M00_AXI1_awprot[2:0] = Conn2_AWPROT;
  assign M00_AXI1_awqos[3:0] = Conn2_AWQOS;
  assign M00_AXI1_awsize[2:0] = Conn2_AWSIZE;
  assign M00_AXI1_awuser = Conn2_AWUSER;
  assign M00_AXI1_awvalid = Conn2_AWVALID;
  assign M00_AXI1_bready = Conn2_BREADY;
  assign M00_AXI1_rready = Conn2_RREADY;
  assign M00_AXI1_wdata[63:0] = Conn2_WDATA;
  assign M00_AXI1_wlast = Conn2_WLAST;
  assign M00_AXI1_wstrb[7:0] = Conn2_WSTRB;
  assign M00_AXI1_wvalid = Conn2_WVALID;
  assign M_AXIS_MM2S_tdata[31:0] = axi_dma_arm_M_AXIS_MM2S_TDATA;
  assign M_AXIS_MM2S_tkeep[3:0] = axi_dma_arm_M_AXIS_MM2S_TKEEP;
  assign M_AXIS_MM2S_tlast = axi_dma_arm_M_AXIS_MM2S_TLAST;
  assign M_AXIS_MM2S_tvalid = axi_dma_arm_M_AXIS_MM2S_TVALID;
  assign S00_AXI_2_ARADDR = S00_AXI_araddr[39:0];
  assign S00_AXI_2_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_2_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_2_ARID = S00_AXI_arid[15:0];
  assign S00_AXI_2_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_2_ARLOCK = S00_AXI_arlock;
  assign S00_AXI_2_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_2_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_2_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_2_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_2_AWADDR = S00_AXI_awaddr[39:0];
  assign S00_AXI_2_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_2_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_2_AWID = S00_AXI_awid[15:0];
  assign S00_AXI_2_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_2_AWLOCK = S00_AXI_awlock;
  assign S00_AXI_2_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_2_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_2_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_2_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_2_BREADY = S00_AXI_bready;
  assign S00_AXI_2_RREADY = S00_AXI_rready;
  assign S00_AXI_2_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_2_WLAST = S00_AXI_wlast;
  assign S00_AXI_2_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_2_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_2_ARREADY;
  assign S00_AXI_awready = S00_AXI_2_AWREADY;
  assign S00_AXI_bid[15:0] = S00_AXI_2_BID;
  assign S00_AXI_bresp[1:0] = S00_AXI_2_BRESP;
  assign S00_AXI_bvalid = S00_AXI_2_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_2_RDATA;
  assign S00_AXI_rid[15:0] = S00_AXI_2_RID;
  assign S00_AXI_rlast = S00_AXI_2_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_2_RRESP;
  assign S00_AXI_rvalid = S00_AXI_2_RVALID;
  assign S00_AXI_wready = S00_AXI_2_WREADY;
  assign S_AXIS_S2MM_1_TDATA = S_AXIS_S2MM_tdata[31:0];
  assign S_AXIS_S2MM_1_TKEEP = S_AXIS_S2MM_tkeep[3:0];
  assign S_AXIS_S2MM_1_TLAST = S_AXIS_S2MM_tlast;
  assign S_AXIS_S2MM_1_TVALID = S_AXIS_S2MM_tvalid;
  assign S_AXIS_S2MM_tready = S_AXIS_S2MM_1_TREADY;
  assign S_AXI_MEM_1_ARADDR = S_AXI_MEM_araddr[39:0];
  assign S_AXI_MEM_1_ARBURST = S_AXI_MEM_arburst[1:0];
  assign S_AXI_MEM_1_ARCACHE = S_AXI_MEM_arcache[3:0];
  assign S_AXI_MEM_1_ARID = S_AXI_MEM_arid[3:0];
  assign S_AXI_MEM_1_ARLEN = S_AXI_MEM_arlen[7:0];
  assign S_AXI_MEM_1_ARLOCK = S_AXI_MEM_arlock[0];
  assign S_AXI_MEM_1_ARPROT = S_AXI_MEM_arprot[2:0];
  assign S_AXI_MEM_1_ARQOS = S_AXI_MEM_arqos[3:0];
  assign S_AXI_MEM_1_ARSIZE = S_AXI_MEM_arsize[2:0];
  assign S_AXI_MEM_1_ARUSER = S_AXI_MEM_aruser[0];
  assign S_AXI_MEM_1_ARVALID = S_AXI_MEM_arvalid;
  assign S_AXI_MEM_1_AWADDR = S_AXI_MEM_awaddr[39:0];
  assign S_AXI_MEM_1_AWBURST = S_AXI_MEM_awburst[1:0];
  assign S_AXI_MEM_1_AWCACHE = S_AXI_MEM_awcache[3:0];
  assign S_AXI_MEM_1_AWID = S_AXI_MEM_awid[3:0];
  assign S_AXI_MEM_1_AWLEN = S_AXI_MEM_awlen[7:0];
  assign S_AXI_MEM_1_AWLOCK = S_AXI_MEM_awlock[0];
  assign S_AXI_MEM_1_AWPROT = S_AXI_MEM_awprot[2:0];
  assign S_AXI_MEM_1_AWQOS = S_AXI_MEM_awqos[3:0];
  assign S_AXI_MEM_1_AWSIZE = S_AXI_MEM_awsize[2:0];
  assign S_AXI_MEM_1_AWUSER = S_AXI_MEM_awuser[0];
  assign S_AXI_MEM_1_AWVALID = S_AXI_MEM_awvalid;
  assign S_AXI_MEM_1_BREADY = S_AXI_MEM_bready;
  assign S_AXI_MEM_1_RREADY = S_AXI_MEM_rready;
  assign S_AXI_MEM_1_WDATA = S_AXI_MEM_wdata[63:0];
  assign S_AXI_MEM_1_WLAST = S_AXI_MEM_wlast;
  assign S_AXI_MEM_1_WSTRB = S_AXI_MEM_wstrb[7:0];
  assign S_AXI_MEM_1_WVALID = S_AXI_MEM_wvalid;
  assign S_AXI_MEM_arready = S_AXI_MEM_1_ARREADY;
  assign S_AXI_MEM_awready = S_AXI_MEM_1_AWREADY;
  assign S_AXI_MEM_bid[3:0] = S_AXI_MEM_1_BID;
  assign S_AXI_MEM_bresp[1:0] = S_AXI_MEM_1_BRESP;
  assign S_AXI_MEM_bvalid = S_AXI_MEM_1_BVALID;
  assign S_AXI_MEM_rdata[63:0] = S_AXI_MEM_1_RDATA;
  assign S_AXI_MEM_rid[3:0] = S_AXI_MEM_1_RID;
  assign S_AXI_MEM_rlast = S_AXI_MEM_1_RLAST;
  assign S_AXI_MEM_rresp[1:0] = S_AXI_MEM_1_RRESP;
  assign S_AXI_MEM_rvalid = S_AXI_MEM_1_RVALID;
  assign S_AXI_MEM_wready = S_AXI_MEM_1_WREADY;
  assign axi_dma_arm_M_AXIS_MM2S_TREADY = M_AXIS_MM2S_tready;
  assign clk_wiz_0_clk_out1 = uncoreclk;
  assign corerstn[0] = axi_gpio_0_gpio_io_o;
  assign interrupt = axi_uartlite_0_interrupt;
  assign mm2s_introut = axi_dma_arm_mm2s_introut;
  assign proc_sys_reset_1_peripheral_aresetn = uncorerstn;
  assign rvcore_uncorerst_interconnect_aresetn = S00_ARESETN;
  assign rx_1 = rx;
  assign s2mm_introut = axi_dma_arm_s2mm_introut;
  assign tx = axi_uartlite_0_tx;
  zynq_soc_axi_dma_arm_0 axi_dma_arm
       (.axi_resetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axi_mm2s_aclk(clk_wiz_0_clk_out1),
        .m_axi_mm2s_araddr(S01_AXI_1_ARADDR),
        .m_axi_mm2s_arburst(S01_AXI_1_ARBURST),
        .m_axi_mm2s_arcache(S01_AXI_1_ARCACHE),
        .m_axi_mm2s_arlen(S01_AXI_1_ARLEN),
        .m_axi_mm2s_arprot(S01_AXI_1_ARPROT),
        .m_axi_mm2s_arready(S01_AXI_1_ARREADY),
        .m_axi_mm2s_arsize(S01_AXI_1_ARSIZE),
        .m_axi_mm2s_arvalid(S01_AXI_1_ARVALID),
        .m_axi_mm2s_rdata(S01_AXI_1_RDATA),
        .m_axi_mm2s_rlast(S01_AXI_1_RLAST),
        .m_axi_mm2s_rready(S01_AXI_1_RREADY),
        .m_axi_mm2s_rresp(S01_AXI_1_RRESP),
        .m_axi_mm2s_rvalid(S01_AXI_1_RVALID),
        .m_axi_s2mm_aclk(clk_wiz_0_clk_out1),
        .m_axi_s2mm_awaddr(S02_AXI_1_AWADDR),
        .m_axi_s2mm_awburst(S02_AXI_1_AWBURST),
        .m_axi_s2mm_awcache(S02_AXI_1_AWCACHE),
        .m_axi_s2mm_awlen(S02_AXI_1_AWLEN),
        .m_axi_s2mm_awprot(S02_AXI_1_AWPROT),
        .m_axi_s2mm_awready(S02_AXI_1_AWREADY),
        .m_axi_s2mm_awsize(S02_AXI_1_AWSIZE),
        .m_axi_s2mm_awvalid(S02_AXI_1_AWVALID),
        .m_axi_s2mm_bready(S02_AXI_1_BREADY),
        .m_axi_s2mm_bresp(S02_AXI_1_BRESP),
        .m_axi_s2mm_bvalid(S02_AXI_1_BVALID),
        .m_axi_s2mm_wdata(S02_AXI_1_WDATA),
        .m_axi_s2mm_wlast(S02_AXI_1_WLAST),
        .m_axi_s2mm_wready(S02_AXI_1_WREADY),
        .m_axi_s2mm_wstrb(S02_AXI_1_WSTRB),
        .m_axi_s2mm_wvalid(S02_AXI_1_WVALID),
        .m_axi_sg_aclk(clk_wiz_0_clk_out1),
        .m_axi_sg_araddr(S00_AXI_1_ARADDR),
        .m_axi_sg_arburst(S00_AXI_1_ARBURST),
        .m_axi_sg_arcache(S00_AXI_1_ARCACHE),
        .m_axi_sg_arlen(S00_AXI_1_ARLEN),
        .m_axi_sg_arprot(S00_AXI_1_ARPROT),
        .m_axi_sg_arready(S00_AXI_1_ARREADY),
        .m_axi_sg_arsize(S00_AXI_1_ARSIZE),
        .m_axi_sg_arvalid(S00_AXI_1_ARVALID),
        .m_axi_sg_awaddr(S00_AXI_1_AWADDR),
        .m_axi_sg_awburst(S00_AXI_1_AWBURST),
        .m_axi_sg_awcache(S00_AXI_1_AWCACHE),
        .m_axi_sg_awlen(S00_AXI_1_AWLEN),
        .m_axi_sg_awprot(S00_AXI_1_AWPROT),
        .m_axi_sg_awready(S00_AXI_1_AWREADY),
        .m_axi_sg_awsize(S00_AXI_1_AWSIZE),
        .m_axi_sg_awvalid(S00_AXI_1_AWVALID),
        .m_axi_sg_bready(S00_AXI_1_BREADY),
        .m_axi_sg_bresp(S00_AXI_1_BRESP),
        .m_axi_sg_bvalid(S00_AXI_1_BVALID),
        .m_axi_sg_rdata(S00_AXI_1_RDATA),
        .m_axi_sg_rlast(S00_AXI_1_RLAST),
        .m_axi_sg_rready(S00_AXI_1_RREADY),
        .m_axi_sg_rresp(S00_AXI_1_RRESP),
        .m_axi_sg_rvalid(S00_AXI_1_RVALID),
        .m_axi_sg_wdata(S00_AXI_1_WDATA),
        .m_axi_sg_wlast(S00_AXI_1_WLAST),
        .m_axi_sg_wready(S00_AXI_1_WREADY),
        .m_axi_sg_wstrb(S00_AXI_1_WSTRB),
        .m_axi_sg_wvalid(S00_AXI_1_WVALID),
        .m_axis_mm2s_tdata(axi_dma_arm_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_arm_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_arm_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_arm_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_arm_M_AXIS_MM2S_TVALID),
        .mm2s_introut(axi_dma_arm_mm2s_introut),
        .s2mm_introut(axi_dma_arm_s2mm_introut),
        .s_axi_lite_aclk(clk_wiz_0_clk_out1),
        .s_axi_lite_araddr(axi_interconnect_1_M02_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(axi_interconnect_1_M02_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_1_M02_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_1_M02_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(axi_interconnect_1_M02_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_1_M02_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_1_M02_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_1_M02_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_1_M02_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_1_M02_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_1_M02_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_1_M02_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_1_M02_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_1_M02_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_1_M02_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_1_M02_AXI_WVALID),
        .s_axis_s2mm_tdata(S_AXIS_S2MM_1_TDATA),
        .s_axis_s2mm_tkeep(S_AXIS_S2MM_1_TKEEP),
        .s_axis_s2mm_tlast(S_AXIS_S2MM_1_TLAST),
        .s_axis_s2mm_tready(S_AXIS_S2MM_1_TREADY),
        .s_axis_s2mm_tvalid(S_AXIS_S2MM_1_TVALID));
  zynq_soc_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M00_AXI_araddr(Conn2_ARADDR),
        .M00_AXI_arburst(Conn2_ARBURST),
        .M00_AXI_arcache(Conn2_ARCACHE),
        .M00_AXI_arid(Conn2_ARID),
        .M00_AXI_arlen(Conn2_ARLEN),
        .M00_AXI_arlock(Conn2_ARLOCK),
        .M00_AXI_arprot(Conn2_ARPROT),
        .M00_AXI_arqos(Conn2_ARQOS),
        .M00_AXI_arready(Conn2_ARREADY),
        .M00_AXI_arsize(Conn2_ARSIZE),
        .M00_AXI_aruser(Conn2_ARUSER),
        .M00_AXI_arvalid(Conn2_ARVALID),
        .M00_AXI_awaddr(Conn2_AWADDR),
        .M00_AXI_awburst(Conn2_AWBURST),
        .M00_AXI_awcache(Conn2_AWCACHE),
        .M00_AXI_awid(Conn2_AWID),
        .M00_AXI_awlen(Conn2_AWLEN),
        .M00_AXI_awlock(Conn2_AWLOCK),
        .M00_AXI_awprot(Conn2_AWPROT),
        .M00_AXI_awqos(Conn2_AWQOS),
        .M00_AXI_awready(Conn2_AWREADY),
        .M00_AXI_awsize(Conn2_AWSIZE),
        .M00_AXI_awuser(Conn2_AWUSER),
        .M00_AXI_awvalid(Conn2_AWVALID),
        .M00_AXI_bid(Conn2_BID),
        .M00_AXI_bready(Conn2_BREADY),
        .M00_AXI_bresp(Conn2_BRESP),
        .M00_AXI_bvalid(Conn2_BVALID),
        .M00_AXI_rdata(Conn2_RDATA),
        .M00_AXI_rid(Conn2_RID),
        .M00_AXI_rlast(Conn2_RLAST),
        .M00_AXI_rready(Conn2_RREADY),
        .M00_AXI_rresp(Conn2_RRESP),
        .M00_AXI_rvalid(Conn2_RVALID),
        .M00_AXI_wdata(Conn2_WDATA),
        .M00_AXI_wlast(Conn2_WLAST),
        .M00_AXI_wready(Conn2_WREADY),
        .M00_AXI_wstrb(Conn2_WSTRB),
        .M00_AXI_wvalid(Conn2_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .S01_ACLK(clk_wiz_0_clk_out1),
        .S01_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .S01_AXI_araddr(S01_AXI_1_ARADDR),
        .S01_AXI_arburst(S01_AXI_1_ARBURST),
        .S01_AXI_arcache(S01_AXI_1_ARCACHE),
        .S01_AXI_arlen(S01_AXI_1_ARLEN),
        .S01_AXI_arprot(S01_AXI_1_ARPROT),
        .S01_AXI_arready(S01_AXI_1_ARREADY),
        .S01_AXI_arsize(S01_AXI_1_ARSIZE),
        .S01_AXI_arvalid(S01_AXI_1_ARVALID),
        .S01_AXI_rdata(S01_AXI_1_RDATA),
        .S01_AXI_rlast(S01_AXI_1_RLAST),
        .S01_AXI_rready(S01_AXI_1_RREADY),
        .S01_AXI_rresp(S01_AXI_1_RRESP),
        .S01_AXI_rvalid(S01_AXI_1_RVALID),
        .S02_ACLK(clk_wiz_0_clk_out1),
        .S02_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .S02_AXI_awaddr(S02_AXI_1_AWADDR),
        .S02_AXI_awburst(S02_AXI_1_AWBURST),
        .S02_AXI_awcache(S02_AXI_1_AWCACHE),
        .S02_AXI_awlen(S02_AXI_1_AWLEN),
        .S02_AXI_awprot(S02_AXI_1_AWPROT),
        .S02_AXI_awready(S02_AXI_1_AWREADY),
        .S02_AXI_awsize(S02_AXI_1_AWSIZE),
        .S02_AXI_awvalid(S02_AXI_1_AWVALID),
        .S02_AXI_bready(S02_AXI_1_BREADY),
        .S02_AXI_bresp(S02_AXI_1_BRESP),
        .S02_AXI_bvalid(S02_AXI_1_BVALID),
        .S02_AXI_wdata(S02_AXI_1_WDATA),
        .S02_AXI_wlast(S02_AXI_1_WLAST),
        .S02_AXI_wready(S02_AXI_1_WREADY),
        .S02_AXI_wstrb(S02_AXI_1_WSTRB),
        .S02_AXI_wvalid(S02_AXI_1_WVALID),
        .S03_ACLK(clk_wiz_0_clk_out1),
        .S03_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .S03_AXI_araddr(S_AXI_MEM_1_ARADDR),
        .S03_AXI_arburst(S_AXI_MEM_1_ARBURST),
        .S03_AXI_arcache(S_AXI_MEM_1_ARCACHE),
        .S03_AXI_arid(S_AXI_MEM_1_ARID),
        .S03_AXI_arlen(S_AXI_MEM_1_ARLEN),
        .S03_AXI_arlock(S_AXI_MEM_1_ARLOCK),
        .S03_AXI_arprot(S_AXI_MEM_1_ARPROT),
        .S03_AXI_arqos(S_AXI_MEM_1_ARQOS),
        .S03_AXI_arready(S_AXI_MEM_1_ARREADY),
        .S03_AXI_arsize(S_AXI_MEM_1_ARSIZE),
        .S03_AXI_aruser(S_AXI_MEM_1_ARUSER),
        .S03_AXI_arvalid(S_AXI_MEM_1_ARVALID),
        .S03_AXI_awaddr(S_AXI_MEM_1_AWADDR),
        .S03_AXI_awburst(S_AXI_MEM_1_AWBURST),
        .S03_AXI_awcache(S_AXI_MEM_1_AWCACHE),
        .S03_AXI_awid(S_AXI_MEM_1_AWID),
        .S03_AXI_awlen(S_AXI_MEM_1_AWLEN),
        .S03_AXI_awlock(S_AXI_MEM_1_AWLOCK),
        .S03_AXI_awprot(S_AXI_MEM_1_AWPROT),
        .S03_AXI_awqos(S_AXI_MEM_1_AWQOS),
        .S03_AXI_awready(S_AXI_MEM_1_AWREADY),
        .S03_AXI_awsize(S_AXI_MEM_1_AWSIZE),
        .S03_AXI_awuser(S_AXI_MEM_1_AWUSER),
        .S03_AXI_awvalid(S_AXI_MEM_1_AWVALID),
        .S03_AXI_bid(S_AXI_MEM_1_BID),
        .S03_AXI_bready(S_AXI_MEM_1_BREADY),
        .S03_AXI_bresp(S_AXI_MEM_1_BRESP),
        .S03_AXI_bvalid(S_AXI_MEM_1_BVALID),
        .S03_AXI_rdata(S_AXI_MEM_1_RDATA),
        .S03_AXI_rid(S_AXI_MEM_1_RID),
        .S03_AXI_rlast(S_AXI_MEM_1_RLAST),
        .S03_AXI_rready(S_AXI_MEM_1_RREADY),
        .S03_AXI_rresp(S_AXI_MEM_1_RRESP),
        .S03_AXI_rvalid(S_AXI_MEM_1_RVALID),
        .S03_AXI_wdata(S_AXI_MEM_1_WDATA),
        .S03_AXI_wlast(S_AXI_MEM_1_WLAST),
        .S03_AXI_wready(S_AXI_MEM_1_WREADY),
        .S03_AXI_wstrb(S_AXI_MEM_1_WSTRB),
        .S03_AXI_wvalid(S_AXI_MEM_1_WVALID));
  zynq_soc_axi_interconnect_1_0 axi_interconnect_1
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_0_clk_out1),
        .M01_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M01_AXI_araddr(axi_interconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_1_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_0_clk_out1),
        .M02_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M02_AXI_araddr(axi_interconnect_1_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_1_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_1_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_1_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_1_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_1_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_1_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_1_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_1_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_1_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_1_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_1_M02_AXI_WREADY),
        .M02_AXI_wvalid(axi_interconnect_1_M02_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .S00_AXI_araddr(S00_AXI_2_ARADDR),
        .S00_AXI_arburst(S00_AXI_2_ARBURST),
        .S00_AXI_arcache(S00_AXI_2_ARCACHE),
        .S00_AXI_arid(S00_AXI_2_ARID),
        .S00_AXI_arlen(S00_AXI_2_ARLEN),
        .S00_AXI_arlock(S00_AXI_2_ARLOCK),
        .S00_AXI_arprot(S00_AXI_2_ARPROT),
        .S00_AXI_arqos(S00_AXI_2_ARQOS),
        .S00_AXI_arready(S00_AXI_2_ARREADY),
        .S00_AXI_arsize(S00_AXI_2_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_2_ARVALID),
        .S00_AXI_awaddr(S00_AXI_2_AWADDR),
        .S00_AXI_awburst(S00_AXI_2_AWBURST),
        .S00_AXI_awcache(S00_AXI_2_AWCACHE),
        .S00_AXI_awid(S00_AXI_2_AWID),
        .S00_AXI_awlen(S00_AXI_2_AWLEN),
        .S00_AXI_awlock(S00_AXI_2_AWLOCK),
        .S00_AXI_awprot(S00_AXI_2_AWPROT),
        .S00_AXI_awqos(S00_AXI_2_AWQOS),
        .S00_AXI_awready(S00_AXI_2_AWREADY),
        .S00_AXI_awsize(S00_AXI_2_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_2_AWVALID),
        .S00_AXI_bid(S00_AXI_2_BID),
        .S00_AXI_bready(S00_AXI_2_BREADY),
        .S00_AXI_bresp(S00_AXI_2_BRESP),
        .S00_AXI_bvalid(S00_AXI_2_BVALID),
        .S00_AXI_rdata(S00_AXI_2_RDATA),
        .S00_AXI_rid(S00_AXI_2_RID),
        .S00_AXI_rlast(S00_AXI_2_RLAST),
        .S00_AXI_rready(S00_AXI_2_RREADY),
        .S00_AXI_rresp(S00_AXI_2_RRESP),
        .S00_AXI_rvalid(S00_AXI_2_RVALID),
        .S00_AXI_wdata(S00_AXI_2_WDATA),
        .S00_AXI_wlast(S00_AXI_2_WLAST),
        .S00_AXI_wready(S00_AXI_2_WREADY),
        .S00_AXI_wstrb(S00_AXI_2_WSTRB),
        .S00_AXI_wvalid(S00_AXI_2_WVALID));
  zynq_soc_axi_uartlite_0_1 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(rx_1),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_1_M00_AXI_ARADDR[3:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M00_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_1_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .tx(axi_uartlite_0_tx));
  zynq_soc_corerst_0 corerst
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_1_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_1_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .s_axi_rready(axi_interconnect_1_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .s_axi_wready(axi_interconnect_1_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M01_AXI_WVALID));
endmodule

module hier_clkrst_imp_YBF9LJ
   (clk27,
    clk40,
    clk_in1,
    coreclk,
    interconnect_aresetn,
    interconnect_aresetn1,
    locked,
    peripheral_aresetn,
    peripheral_reset,
    resetn,
    uncoreclk,
    uncorerstn);
  output clk27;
  output clk40;
  input clk_in1;
  output coreclk;
  output [0:0]interconnect_aresetn;
  output [0:0]interconnect_aresetn1;
  output locked;
  output [0:0]peripheral_aresetn;
  output [0:0]peripheral_reset;
  input resetn;
  output uncoreclk;
  output [0:0]uncorerstn;

  wire [0:0]clk50rst_interconnect_aresetn;
  wire [0:0]clk50rst_peripheral_reset;
  wire clk_wiz_0_clk27;
  wire clk_wiz_0_clk40;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_coreclk;
  wire clk_wiz_0_locked;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [0:0]rvcore_uncorerst_interconnect_aresetn;
  wire zynq_ultra_ps_e_0_pl_clk1;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign clk27 = clk_wiz_0_clk27;
  assign clk40 = clk_wiz_0_clk40;
  assign coreclk = clk_wiz_0_coreclk;
  assign interconnect_aresetn[0] = rvcore_uncorerst_interconnect_aresetn;
  assign interconnect_aresetn1[0] = clk50rst_interconnect_aresetn;
  assign locked = clk_wiz_0_locked;
  assign peripheral_reset[0] = clk50rst_peripheral_reset;
  assign uncoreclk = clk_wiz_0_clk_out1;
  assign uncorerstn[0] = proc_sys_reset_1_peripheral_aresetn;
  assign zynq_ultra_ps_e_0_pl_clk1 = clk_in1;
  assign zynq_ultra_ps_e_0_pl_resetn0 = resetn;
  zynq_soc_clk50rst_0 clk50rst
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(clk50rst_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(clk50rst_peripheral_reset),
        .slowest_sync_clk(clk_wiz_0_clk40));
  zynq_soc_clk_wiz_0_0 clk_wiz_0
       (.clk27(clk_wiz_0_clk27),
        .clk40(clk_wiz_0_clk40),
        .clk_in1(zynq_ultra_ps_e_0_pl_clk1),
        .coreclk(clk_wiz_0_coreclk),
        .locked(clk_wiz_0_locked),
        .resetn(zynq_ultra_ps_e_0_pl_resetn0),
        .uncoreclk(clk_wiz_0_clk_out1));
  zynq_soc_uncorerst_0 uncorerst
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(rvcore_uncorerst_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
endmodule

module hier_rvcore_peripheral_imp_8D23AV
   (ARESETN,
    M03_ARESETN,
    M_AXIS_MM2S_tdata,
    M_AXIS_MM2S_tkeep,
    M_AXIS_MM2S_tlast,
    M_AXIS_MM2S_tready,
    M_AXIS_MM2S_tvalid,
    M_AXI_DMA_araddr,
    M_AXI_DMA_arburst,
    M_AXI_DMA_arcache,
    M_AXI_DMA_arid,
    M_AXI_DMA_arlen,
    M_AXI_DMA_arlock,
    M_AXI_DMA_arprot,
    M_AXI_DMA_arqos,
    M_AXI_DMA_arready,
    M_AXI_DMA_arregion,
    M_AXI_DMA_arsize,
    M_AXI_DMA_arvalid,
    M_AXI_DMA_awaddr,
    M_AXI_DMA_awburst,
    M_AXI_DMA_awcache,
    M_AXI_DMA_awid,
    M_AXI_DMA_awlen,
    M_AXI_DMA_awlock,
    M_AXI_DMA_awprot,
    M_AXI_DMA_awqos,
    M_AXI_DMA_awready,
    M_AXI_DMA_awregion,
    M_AXI_DMA_awsize,
    M_AXI_DMA_awvalid,
    M_AXI_DMA_bid,
    M_AXI_DMA_bready,
    M_AXI_DMA_bresp,
    M_AXI_DMA_bvalid,
    M_AXI_DMA_rdata,
    M_AXI_DMA_rid,
    M_AXI_DMA_rlast,
    M_AXI_DMA_rready,
    M_AXI_DMA_rresp,
    M_AXI_DMA_rvalid,
    M_AXI_DMA_wdata,
    M_AXI_DMA_wlast,
    M_AXI_DMA_wready,
    M_AXI_DMA_wstrb,
    M_AXI_DMA_wvalid,
    S_AXILITE_MMIO_araddr,
    S_AXILITE_MMIO_arburst,
    S_AXILITE_MMIO_arcache,
    S_AXILITE_MMIO_arid,
    S_AXILITE_MMIO_arlen,
    S_AXILITE_MMIO_arlock,
    S_AXILITE_MMIO_arprot,
    S_AXILITE_MMIO_arqos,
    S_AXILITE_MMIO_arready,
    S_AXILITE_MMIO_arregion,
    S_AXILITE_MMIO_arsize,
    S_AXILITE_MMIO_arvalid,
    S_AXILITE_MMIO_awaddr,
    S_AXILITE_MMIO_awburst,
    S_AXILITE_MMIO_awcache,
    S_AXILITE_MMIO_awid,
    S_AXILITE_MMIO_awlen,
    S_AXILITE_MMIO_awlock,
    S_AXILITE_MMIO_awprot,
    S_AXILITE_MMIO_awqos,
    S_AXILITE_MMIO_awready,
    S_AXILITE_MMIO_awregion,
    S_AXILITE_MMIO_awsize,
    S_AXILITE_MMIO_awvalid,
    S_AXILITE_MMIO_bid,
    S_AXILITE_MMIO_bready,
    S_AXILITE_MMIO_bresp,
    S_AXILITE_MMIO_bvalid,
    S_AXILITE_MMIO_rdata,
    S_AXILITE_MMIO_rid,
    S_AXILITE_MMIO_rlast,
    S_AXILITE_MMIO_rready,
    S_AXILITE_MMIO_rresp,
    S_AXILITE_MMIO_rvalid,
    S_AXILITE_MMIO_wdata,
    S_AXILITE_MMIO_wlast,
    S_AXILITE_MMIO_wready,
    S_AXILITE_MMIO_wstrb,
    S_AXILITE_MMIO_wvalid,
    S_AXIS_S2MM_tdata,
    S_AXIS_S2MM_tkeep,
    S_AXIS_S2MM_tlast,
    S_AXIS_S2MM_tready,
    S_AXIS_S2MM_tvalid,
    clock,
    intrs,
    io_vga_vsync,
    reset,
    rx,
    tx,
    uncoreclk,
    uncorerstn,
    vga_hsync,
    vga_rgb,
    vga_valid);
  input ARESETN;
  input [0:0]M03_ARESETN;
  output [31:0]M_AXIS_MM2S_tdata;
  output [3:0]M_AXIS_MM2S_tkeep;
  output M_AXIS_MM2S_tlast;
  input M_AXIS_MM2S_tready;
  output M_AXIS_MM2S_tvalid;
  output [39:0]M_AXI_DMA_araddr;
  output [1:0]M_AXI_DMA_arburst;
  output [3:0]M_AXI_DMA_arcache;
  output [1:0]M_AXI_DMA_arid;
  output [7:0]M_AXI_DMA_arlen;
  output [0:0]M_AXI_DMA_arlock;
  output [2:0]M_AXI_DMA_arprot;
  output [3:0]M_AXI_DMA_arqos;
  input [0:0]M_AXI_DMA_arready;
  output [3:0]M_AXI_DMA_arregion;
  output [2:0]M_AXI_DMA_arsize;
  output [0:0]M_AXI_DMA_arvalid;
  output [39:0]M_AXI_DMA_awaddr;
  output [1:0]M_AXI_DMA_awburst;
  output [3:0]M_AXI_DMA_awcache;
  output [1:0]M_AXI_DMA_awid;
  output [7:0]M_AXI_DMA_awlen;
  output [0:0]M_AXI_DMA_awlock;
  output [2:0]M_AXI_DMA_awprot;
  output [3:0]M_AXI_DMA_awqos;
  input [0:0]M_AXI_DMA_awready;
  output [3:0]M_AXI_DMA_awregion;
  output [2:0]M_AXI_DMA_awsize;
  output [0:0]M_AXI_DMA_awvalid;
  input [1:0]M_AXI_DMA_bid;
  output [0:0]M_AXI_DMA_bready;
  input [1:0]M_AXI_DMA_bresp;
  input [0:0]M_AXI_DMA_bvalid;
  input [63:0]M_AXI_DMA_rdata;
  input [1:0]M_AXI_DMA_rid;
  input [0:0]M_AXI_DMA_rlast;
  output [0:0]M_AXI_DMA_rready;
  input [1:0]M_AXI_DMA_rresp;
  input [0:0]M_AXI_DMA_rvalid;
  output [63:0]M_AXI_DMA_wdata;
  output [0:0]M_AXI_DMA_wlast;
  input [0:0]M_AXI_DMA_wready;
  output [7:0]M_AXI_DMA_wstrb;
  output [0:0]M_AXI_DMA_wvalid;
  input [39:0]S_AXILITE_MMIO_araddr;
  input [1:0]S_AXILITE_MMIO_arburst;
  input [3:0]S_AXILITE_MMIO_arcache;
  input [7:0]S_AXILITE_MMIO_arid;
  input [7:0]S_AXILITE_MMIO_arlen;
  input [0:0]S_AXILITE_MMIO_arlock;
  input [2:0]S_AXILITE_MMIO_arprot;
  input [3:0]S_AXILITE_MMIO_arqos;
  output S_AXILITE_MMIO_arready;
  input [3:0]S_AXILITE_MMIO_arregion;
  input [2:0]S_AXILITE_MMIO_arsize;
  input S_AXILITE_MMIO_arvalid;
  input [39:0]S_AXILITE_MMIO_awaddr;
  input [1:0]S_AXILITE_MMIO_awburst;
  input [3:0]S_AXILITE_MMIO_awcache;
  input [7:0]S_AXILITE_MMIO_awid;
  input [7:0]S_AXILITE_MMIO_awlen;
  input [0:0]S_AXILITE_MMIO_awlock;
  input [2:0]S_AXILITE_MMIO_awprot;
  input [3:0]S_AXILITE_MMIO_awqos;
  output S_AXILITE_MMIO_awready;
  input [3:0]S_AXILITE_MMIO_awregion;
  input [2:0]S_AXILITE_MMIO_awsize;
  input S_AXILITE_MMIO_awvalid;
  output [7:0]S_AXILITE_MMIO_bid;
  input S_AXILITE_MMIO_bready;
  output [1:0]S_AXILITE_MMIO_bresp;
  output S_AXILITE_MMIO_bvalid;
  output [63:0]S_AXILITE_MMIO_rdata;
  output [7:0]S_AXILITE_MMIO_rid;
  output S_AXILITE_MMIO_rlast;
  input S_AXILITE_MMIO_rready;
  output [1:0]S_AXILITE_MMIO_rresp;
  output S_AXILITE_MMIO_rvalid;
  input [63:0]S_AXILITE_MMIO_wdata;
  input S_AXILITE_MMIO_wlast;
  output S_AXILITE_MMIO_wready;
  input [7:0]S_AXILITE_MMIO_wstrb;
  input S_AXILITE_MMIO_wvalid;
  input [31:0]S_AXIS_S2MM_tdata;
  input [3:0]S_AXIS_S2MM_tkeep;
  input S_AXIS_S2MM_tlast;
  output S_AXIS_S2MM_tready;
  input S_AXIS_S2MM_tvalid;
  input clock;
  output [4:0]intrs;
  output io_vga_vsync;
  input [0:0]reset;
  input rx;
  output tx;
  input uncoreclk;
  input uncorerstn;
  output vga_hsync;
  output [23:0]vga_rgb;
  output vga_valid;

  wire AXI4VGA_0_io_vga_hsync;
  wire [23:0]AXI4VGA_0_io_vga_rgb;
  wire AXI4VGA_0_io_vga_valid;
  wire AXI4VGA_0_io_vga_vsync;
  wire [31:0]Conn1_TDATA;
  wire [3:0]Conn1_TKEEP;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [31:0]Conn2_TDATA;
  wire [3:0]Conn2_TKEEP;
  wire Conn2_TLAST;
  wire Conn2_TREADY;
  wire Conn2_TVALID;
  wire [0:0]M03_ARESETN_1;
  wire [39:0]S_AXILITE_MMIO_1_ARADDR;
  wire [1:0]S_AXILITE_MMIO_1_ARBURST;
  wire [3:0]S_AXILITE_MMIO_1_ARCACHE;
  wire [7:0]S_AXILITE_MMIO_1_ARID;
  wire [7:0]S_AXILITE_MMIO_1_ARLEN;
  wire [0:0]S_AXILITE_MMIO_1_ARLOCK;
  wire [2:0]S_AXILITE_MMIO_1_ARPROT;
  wire [3:0]S_AXILITE_MMIO_1_ARQOS;
  wire S_AXILITE_MMIO_1_ARREADY;
  wire [3:0]S_AXILITE_MMIO_1_ARREGION;
  wire [2:0]S_AXILITE_MMIO_1_ARSIZE;
  wire S_AXILITE_MMIO_1_ARVALID;
  wire [39:0]S_AXILITE_MMIO_1_AWADDR;
  wire [1:0]S_AXILITE_MMIO_1_AWBURST;
  wire [3:0]S_AXILITE_MMIO_1_AWCACHE;
  wire [7:0]S_AXILITE_MMIO_1_AWID;
  wire [7:0]S_AXILITE_MMIO_1_AWLEN;
  wire [0:0]S_AXILITE_MMIO_1_AWLOCK;
  wire [2:0]S_AXILITE_MMIO_1_AWPROT;
  wire [3:0]S_AXILITE_MMIO_1_AWQOS;
  wire S_AXILITE_MMIO_1_AWREADY;
  wire [3:0]S_AXILITE_MMIO_1_AWREGION;
  wire [2:0]S_AXILITE_MMIO_1_AWSIZE;
  wire S_AXILITE_MMIO_1_AWVALID;
  wire [7:0]S_AXILITE_MMIO_1_BID;
  wire S_AXILITE_MMIO_1_BREADY;
  wire [1:0]S_AXILITE_MMIO_1_BRESP;
  wire S_AXILITE_MMIO_1_BVALID;
  wire [63:0]S_AXILITE_MMIO_1_RDATA;
  wire [7:0]S_AXILITE_MMIO_1_RID;
  wire S_AXILITE_MMIO_1_RLAST;
  wire S_AXILITE_MMIO_1_RREADY;
  wire [1:0]S_AXILITE_MMIO_1_RRESP;
  wire S_AXILITE_MMIO_1_RVALID;
  wire [63:0]S_AXILITE_MMIO_1_WDATA;
  wire S_AXILITE_MMIO_1_WLAST;
  wire S_AXILITE_MMIO_1_WREADY;
  wire [7:0]S_AXILITE_MMIO_1_WSTRB;
  wire S_AXILITE_MMIO_1_WVALID;
  wire [39:0]axi_dma_rvcore_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_rvcore_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_rvcore_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_rvcore_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_rvcore_M_AXI_MM2S_ARPROT;
  wire axi_dma_rvcore_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_rvcore_M_AXI_MM2S_ARSIZE;
  wire axi_dma_rvcore_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_rvcore_M_AXI_MM2S_RDATA;
  wire axi_dma_rvcore_M_AXI_MM2S_RLAST;
  wire axi_dma_rvcore_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_rvcore_M_AXI_MM2S_RRESP;
  wire axi_dma_rvcore_M_AXI_MM2S_RVALID;
  wire [39:0]axi_dma_rvcore_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_rvcore_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_rvcore_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_rvcore_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_rvcore_M_AXI_S2MM_AWPROT;
  wire axi_dma_rvcore_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_rvcore_M_AXI_S2MM_AWSIZE;
  wire axi_dma_rvcore_M_AXI_S2MM_AWVALID;
  wire axi_dma_rvcore_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_rvcore_M_AXI_S2MM_BRESP;
  wire axi_dma_rvcore_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_rvcore_M_AXI_S2MM_WDATA;
  wire axi_dma_rvcore_M_AXI_S2MM_WLAST;
  wire axi_dma_rvcore_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_rvcore_M_AXI_S2MM_WSTRB;
  wire axi_dma_rvcore_M_AXI_S2MM_WVALID;
  wire [39:0]axi_dma_rvcore_M_AXI_SG_ARADDR;
  wire [1:0]axi_dma_rvcore_M_AXI_SG_ARBURST;
  wire [3:0]axi_dma_rvcore_M_AXI_SG_ARCACHE;
  wire [7:0]axi_dma_rvcore_M_AXI_SG_ARLEN;
  wire [2:0]axi_dma_rvcore_M_AXI_SG_ARPROT;
  wire axi_dma_rvcore_M_AXI_SG_ARREADY;
  wire [2:0]axi_dma_rvcore_M_AXI_SG_ARSIZE;
  wire axi_dma_rvcore_M_AXI_SG_ARVALID;
  wire [39:0]axi_dma_rvcore_M_AXI_SG_AWADDR;
  wire [1:0]axi_dma_rvcore_M_AXI_SG_AWBURST;
  wire [3:0]axi_dma_rvcore_M_AXI_SG_AWCACHE;
  wire [7:0]axi_dma_rvcore_M_AXI_SG_AWLEN;
  wire [2:0]axi_dma_rvcore_M_AXI_SG_AWPROT;
  wire axi_dma_rvcore_M_AXI_SG_AWREADY;
  wire [2:0]axi_dma_rvcore_M_AXI_SG_AWSIZE;
  wire axi_dma_rvcore_M_AXI_SG_AWVALID;
  wire axi_dma_rvcore_M_AXI_SG_BREADY;
  wire [1:0]axi_dma_rvcore_M_AXI_SG_BRESP;
  wire axi_dma_rvcore_M_AXI_SG_BVALID;
  wire [31:0]axi_dma_rvcore_M_AXI_SG_RDATA;
  wire axi_dma_rvcore_M_AXI_SG_RLAST;
  wire axi_dma_rvcore_M_AXI_SG_RREADY;
  wire [1:0]axi_dma_rvcore_M_AXI_SG_RRESP;
  wire axi_dma_rvcore_M_AXI_SG_RVALID;
  wire [31:0]axi_dma_rvcore_M_AXI_SG_WDATA;
  wire axi_dma_rvcore_M_AXI_SG_WLAST;
  wire axi_dma_rvcore_M_AXI_SG_WREADY;
  wire [3:0]axi_dma_rvcore_M_AXI_SG_WSTRB;
  wire axi_dma_rvcore_M_AXI_SG_WVALID;
  wire axi_dma_rvcore_mm2s_introut;
  wire axi_dma_rvcore_s2mm_introut;
  wire [39:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_ARCACHE;
  wire [1:0]axi_interconnect_1_M00_AXI_ARID;
  wire [7:0]axi_interconnect_1_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_ARQOS;
  wire [0:0]axi_interconnect_1_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_1_M00_AXI_ARREGION;
  wire [2:0]axi_interconnect_1_M00_AXI_ARSIZE;
  wire [0:0]axi_interconnect_1_M00_AXI_ARVALID;
  wire [39:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_AWCACHE;
  wire [1:0]axi_interconnect_1_M00_AXI_AWID;
  wire [7:0]axi_interconnect_1_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_AWQOS;
  wire [0:0]axi_interconnect_1_M00_AXI_AWREADY;
  wire [3:0]axi_interconnect_1_M00_AXI_AWREGION;
  wire [2:0]axi_interconnect_1_M00_AXI_AWSIZE;
  wire [0:0]axi_interconnect_1_M00_AXI_AWVALID;
  wire [1:0]axi_interconnect_1_M00_AXI_BID;
  wire [0:0]axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire [0:0]axi_interconnect_1_M00_AXI_BVALID;
  wire [63:0]axi_interconnect_1_M00_AXI_RDATA;
  wire [1:0]axi_interconnect_1_M00_AXI_RID;
  wire [0:0]axi_interconnect_1_M00_AXI_RLAST;
  wire [0:0]axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire [0:0]axi_interconnect_1_M00_AXI_RVALID;
  wire [63:0]axi_interconnect_1_M00_AXI_WDATA;
  wire [0:0]axi_interconnect_1_M00_AXI_WLAST;
  wire [0:0]axi_interconnect_1_M00_AXI_WREADY;
  wire [7:0]axi_interconnect_1_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_1_M00_AXI_WVALID;
  wire [39:0]axi_interconnect_rvcore_mmio_M00_AXI_ARADDR;
  wire axi_interconnect_rvcore_mmio_M00_AXI_ARREADY;
  wire axi_interconnect_rvcore_mmio_M00_AXI_ARVALID;
  wire [39:0]axi_interconnect_rvcore_mmio_M00_AXI_AWADDR;
  wire axi_interconnect_rvcore_mmio_M00_AXI_AWREADY;
  wire axi_interconnect_rvcore_mmio_M00_AXI_AWVALID;
  wire axi_interconnect_rvcore_mmio_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_rvcore_mmio_M00_AXI_BRESP;
  wire axi_interconnect_rvcore_mmio_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_rvcore_mmio_M00_AXI_RDATA;
  wire axi_interconnect_rvcore_mmio_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_rvcore_mmio_M00_AXI_RRESP;
  wire axi_interconnect_rvcore_mmio_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_rvcore_mmio_M00_AXI_WDATA;
  wire axi_interconnect_rvcore_mmio_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_rvcore_mmio_M00_AXI_WSTRB;
  wire axi_interconnect_rvcore_mmio_M00_AXI_WVALID;
  wire [39:0]axi_interconnect_rvcore_mmio_M01_AXI_ARADDR;
  wire axi_interconnect_rvcore_mmio_M01_AXI_ARREADY;
  wire axi_interconnect_rvcore_mmio_M01_AXI_ARVALID;
  wire [39:0]axi_interconnect_rvcore_mmio_M01_AXI_AWADDR;
  wire axi_interconnect_rvcore_mmio_M01_AXI_AWREADY;
  wire axi_interconnect_rvcore_mmio_M01_AXI_AWVALID;
  wire axi_interconnect_rvcore_mmio_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_rvcore_mmio_M01_AXI_BRESP;
  wire axi_interconnect_rvcore_mmio_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_rvcore_mmio_M01_AXI_RDATA;
  wire axi_interconnect_rvcore_mmio_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_rvcore_mmio_M01_AXI_RRESP;
  wire axi_interconnect_rvcore_mmio_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_rvcore_mmio_M01_AXI_WDATA;
  wire axi_interconnect_rvcore_mmio_M01_AXI_WREADY;
  wire axi_interconnect_rvcore_mmio_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_rvcore_mmio_M02_AXI_ARADDR;
  wire [2:0]axi_interconnect_rvcore_mmio_M02_AXI_ARPROT;
  wire axi_interconnect_rvcore_mmio_M02_AXI_ARREADY;
  wire axi_interconnect_rvcore_mmio_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_rvcore_mmio_M02_AXI_AWADDR;
  wire [2:0]axi_interconnect_rvcore_mmio_M02_AXI_AWPROT;
  wire axi_interconnect_rvcore_mmio_M02_AXI_AWREADY;
  wire axi_interconnect_rvcore_mmio_M02_AXI_AWVALID;
  wire axi_interconnect_rvcore_mmio_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_rvcore_mmio_M02_AXI_BRESP;
  wire axi_interconnect_rvcore_mmio_M02_AXI_BVALID;
  wire [63:0]axi_interconnect_rvcore_mmio_M02_AXI_RDATA;
  wire axi_interconnect_rvcore_mmio_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_rvcore_mmio_M02_AXI_RRESP;
  wire axi_interconnect_rvcore_mmio_M02_AXI_RVALID;
  wire [63:0]axi_interconnect_rvcore_mmio_M02_AXI_WDATA;
  wire axi_interconnect_rvcore_mmio_M02_AXI_WREADY;
  wire [7:0]axi_interconnect_rvcore_mmio_M02_AXI_WSTRB;
  wire axi_interconnect_rvcore_mmio_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_rvcore_mmio_M03_AXI_ARADDR;
  wire [2:0]axi_interconnect_rvcore_mmio_M03_AXI_ARPROT;
  wire axi_interconnect_rvcore_mmio_M03_AXI_ARREADY;
  wire axi_interconnect_rvcore_mmio_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_rvcore_mmio_M03_AXI_AWADDR;
  wire [2:0]axi_interconnect_rvcore_mmio_M03_AXI_AWPROT;
  wire axi_interconnect_rvcore_mmio_M03_AXI_AWREADY;
  wire axi_interconnect_rvcore_mmio_M03_AXI_AWVALID;
  wire axi_interconnect_rvcore_mmio_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_rvcore_mmio_M03_AXI_BRESP;
  wire axi_interconnect_rvcore_mmio_M03_AXI_BVALID;
  wire [63:0]axi_interconnect_rvcore_mmio_M03_AXI_RDATA;
  wire axi_interconnect_rvcore_mmio_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_rvcore_mmio_M03_AXI_RRESP;
  wire axi_interconnect_rvcore_mmio_M03_AXI_RVALID;
  wire [63:0]axi_interconnect_rvcore_mmio_M03_AXI_WDATA;
  wire axi_interconnect_rvcore_mmio_M03_AXI_WREADY;
  wire [7:0]axi_interconnect_rvcore_mmio_M03_AXI_WSTRB;
  wire axi_interconnect_rvcore_mmio_M03_AXI_WVALID;
  wire axi_resetn_1;
  wire axi_uartlite_0_tx;
  wire clk_wiz_0_clk_out1;
  wire clock_1;
  wire [0:0]reset_1;
  wire rvcore_uncorerst_interconnect_aresetn;
  wire rx_1;
  wire [4:0]xlconcat_0_dout;

  assign Conn1_TDATA = S_AXIS_S2MM_tdata[31:0];
  assign Conn1_TKEEP = S_AXIS_S2MM_tkeep[3:0];
  assign Conn1_TLAST = S_AXIS_S2MM_tlast;
  assign Conn1_TVALID = S_AXIS_S2MM_tvalid;
  assign Conn2_TREADY = M_AXIS_MM2S_tready;
  assign M03_ARESETN_1 = M03_ARESETN[0];
  assign M_AXIS_MM2S_tdata[31:0] = Conn2_TDATA;
  assign M_AXIS_MM2S_tkeep[3:0] = Conn2_TKEEP;
  assign M_AXIS_MM2S_tlast = Conn2_TLAST;
  assign M_AXIS_MM2S_tvalid = Conn2_TVALID;
  assign M_AXI_DMA_araddr[39:0] = axi_interconnect_1_M00_AXI_ARADDR;
  assign M_AXI_DMA_arburst[1:0] = axi_interconnect_1_M00_AXI_ARBURST;
  assign M_AXI_DMA_arcache[3:0] = axi_interconnect_1_M00_AXI_ARCACHE;
  assign M_AXI_DMA_arid[1:0] = axi_interconnect_1_M00_AXI_ARID;
  assign M_AXI_DMA_arlen[7:0] = axi_interconnect_1_M00_AXI_ARLEN;
  assign M_AXI_DMA_arlock[0] = axi_interconnect_1_M00_AXI_ARLOCK;
  assign M_AXI_DMA_arprot[2:0] = axi_interconnect_1_M00_AXI_ARPROT;
  assign M_AXI_DMA_arqos[3:0] = axi_interconnect_1_M00_AXI_ARQOS;
  assign M_AXI_DMA_arregion[3:0] = axi_interconnect_1_M00_AXI_ARREGION;
  assign M_AXI_DMA_arsize[2:0] = axi_interconnect_1_M00_AXI_ARSIZE;
  assign M_AXI_DMA_arvalid[0] = axi_interconnect_1_M00_AXI_ARVALID;
  assign M_AXI_DMA_awaddr[39:0] = axi_interconnect_1_M00_AXI_AWADDR;
  assign M_AXI_DMA_awburst[1:0] = axi_interconnect_1_M00_AXI_AWBURST;
  assign M_AXI_DMA_awcache[3:0] = axi_interconnect_1_M00_AXI_AWCACHE;
  assign M_AXI_DMA_awid[1:0] = axi_interconnect_1_M00_AXI_AWID;
  assign M_AXI_DMA_awlen[7:0] = axi_interconnect_1_M00_AXI_AWLEN;
  assign M_AXI_DMA_awlock[0] = axi_interconnect_1_M00_AXI_AWLOCK;
  assign M_AXI_DMA_awprot[2:0] = axi_interconnect_1_M00_AXI_AWPROT;
  assign M_AXI_DMA_awqos[3:0] = axi_interconnect_1_M00_AXI_AWQOS;
  assign M_AXI_DMA_awregion[3:0] = axi_interconnect_1_M00_AXI_AWREGION;
  assign M_AXI_DMA_awsize[2:0] = axi_interconnect_1_M00_AXI_AWSIZE;
  assign M_AXI_DMA_awvalid[0] = axi_interconnect_1_M00_AXI_AWVALID;
  assign M_AXI_DMA_bready[0] = axi_interconnect_1_M00_AXI_BREADY;
  assign M_AXI_DMA_rready[0] = axi_interconnect_1_M00_AXI_RREADY;
  assign M_AXI_DMA_wdata[63:0] = axi_interconnect_1_M00_AXI_WDATA;
  assign M_AXI_DMA_wlast[0] = axi_interconnect_1_M00_AXI_WLAST;
  assign M_AXI_DMA_wstrb[7:0] = axi_interconnect_1_M00_AXI_WSTRB;
  assign M_AXI_DMA_wvalid[0] = axi_interconnect_1_M00_AXI_WVALID;
  assign S_AXILITE_MMIO_1_ARADDR = S_AXILITE_MMIO_araddr[39:0];
  assign S_AXILITE_MMIO_1_ARBURST = S_AXILITE_MMIO_arburst[1:0];
  assign S_AXILITE_MMIO_1_ARCACHE = S_AXILITE_MMIO_arcache[3:0];
  assign S_AXILITE_MMIO_1_ARID = S_AXILITE_MMIO_arid[7:0];
  assign S_AXILITE_MMIO_1_ARLEN = S_AXILITE_MMIO_arlen[7:0];
  assign S_AXILITE_MMIO_1_ARLOCK = S_AXILITE_MMIO_arlock[0];
  assign S_AXILITE_MMIO_1_ARPROT = S_AXILITE_MMIO_arprot[2:0];
  assign S_AXILITE_MMIO_1_ARQOS = S_AXILITE_MMIO_arqos[3:0];
  assign S_AXILITE_MMIO_1_ARREGION = S_AXILITE_MMIO_arregion[3:0];
  assign S_AXILITE_MMIO_1_ARSIZE = S_AXILITE_MMIO_arsize[2:0];
  assign S_AXILITE_MMIO_1_ARVALID = S_AXILITE_MMIO_arvalid;
  assign S_AXILITE_MMIO_1_AWADDR = S_AXILITE_MMIO_awaddr[39:0];
  assign S_AXILITE_MMIO_1_AWBURST = S_AXILITE_MMIO_awburst[1:0];
  assign S_AXILITE_MMIO_1_AWCACHE = S_AXILITE_MMIO_awcache[3:0];
  assign S_AXILITE_MMIO_1_AWID = S_AXILITE_MMIO_awid[7:0];
  assign S_AXILITE_MMIO_1_AWLEN = S_AXILITE_MMIO_awlen[7:0];
  assign S_AXILITE_MMIO_1_AWLOCK = S_AXILITE_MMIO_awlock[0];
  assign S_AXILITE_MMIO_1_AWPROT = S_AXILITE_MMIO_awprot[2:0];
  assign S_AXILITE_MMIO_1_AWQOS = S_AXILITE_MMIO_awqos[3:0];
  assign S_AXILITE_MMIO_1_AWREGION = S_AXILITE_MMIO_awregion[3:0];
  assign S_AXILITE_MMIO_1_AWSIZE = S_AXILITE_MMIO_awsize[2:0];
  assign S_AXILITE_MMIO_1_AWVALID = S_AXILITE_MMIO_awvalid;
  assign S_AXILITE_MMIO_1_BREADY = S_AXILITE_MMIO_bready;
  assign S_AXILITE_MMIO_1_RREADY = S_AXILITE_MMIO_rready;
  assign S_AXILITE_MMIO_1_WDATA = S_AXILITE_MMIO_wdata[63:0];
  assign S_AXILITE_MMIO_1_WLAST = S_AXILITE_MMIO_wlast;
  assign S_AXILITE_MMIO_1_WSTRB = S_AXILITE_MMIO_wstrb[7:0];
  assign S_AXILITE_MMIO_1_WVALID = S_AXILITE_MMIO_wvalid;
  assign S_AXILITE_MMIO_arready = S_AXILITE_MMIO_1_ARREADY;
  assign S_AXILITE_MMIO_awready = S_AXILITE_MMIO_1_AWREADY;
  assign S_AXILITE_MMIO_bid[7:0] = S_AXILITE_MMIO_1_BID;
  assign S_AXILITE_MMIO_bresp[1:0] = S_AXILITE_MMIO_1_BRESP;
  assign S_AXILITE_MMIO_bvalid = S_AXILITE_MMIO_1_BVALID;
  assign S_AXILITE_MMIO_rdata[63:0] = S_AXILITE_MMIO_1_RDATA;
  assign S_AXILITE_MMIO_rid[7:0] = S_AXILITE_MMIO_1_RID;
  assign S_AXILITE_MMIO_rlast = S_AXILITE_MMIO_1_RLAST;
  assign S_AXILITE_MMIO_rresp[1:0] = S_AXILITE_MMIO_1_RRESP;
  assign S_AXILITE_MMIO_rvalid = S_AXILITE_MMIO_1_RVALID;
  assign S_AXILITE_MMIO_wready = S_AXILITE_MMIO_1_WREADY;
  assign S_AXIS_S2MM_tready = Conn1_TREADY;
  assign axi_interconnect_1_M00_AXI_ARREADY = M_AXI_DMA_arready[0];
  assign axi_interconnect_1_M00_AXI_AWREADY = M_AXI_DMA_awready[0];
  assign axi_interconnect_1_M00_AXI_BID = M_AXI_DMA_bid[1:0];
  assign axi_interconnect_1_M00_AXI_BRESP = M_AXI_DMA_bresp[1:0];
  assign axi_interconnect_1_M00_AXI_BVALID = M_AXI_DMA_bvalid[0];
  assign axi_interconnect_1_M00_AXI_RDATA = M_AXI_DMA_rdata[63:0];
  assign axi_interconnect_1_M00_AXI_RID = M_AXI_DMA_rid[1:0];
  assign axi_interconnect_1_M00_AXI_RLAST = M_AXI_DMA_rlast[0];
  assign axi_interconnect_1_M00_AXI_RRESP = M_AXI_DMA_rresp[1:0];
  assign axi_interconnect_1_M00_AXI_RVALID = M_AXI_DMA_rvalid[0];
  assign axi_interconnect_1_M00_AXI_WREADY = M_AXI_DMA_wready[0];
  assign axi_resetn_1 = uncorerstn;
  assign clk_wiz_0_clk_out1 = uncoreclk;
  assign clock_1 = clock;
  assign intrs[4:0] = xlconcat_0_dout;
  assign io_vga_vsync = AXI4VGA_0_io_vga_vsync;
  assign reset_1 = reset[0];
  assign rvcore_uncorerst_interconnect_aresetn = ARESETN;
  assign rx_1 = rx;
  assign tx = axi_uartlite_0_tx;
  assign vga_hsync = AXI4VGA_0_io_vga_hsync;
  assign vga_rgb[23:0] = AXI4VGA_0_io_vga_rgb;
  assign vga_valid = AXI4VGA_0_io_vga_valid;
  zynq_soc_AXI4VGA_0_0 AXI4VGA_0
       (.clock(clock_1),
        .io_in_ctrl_araddr(axi_interconnect_rvcore_mmio_M02_AXI_ARADDR),
        .io_in_ctrl_arprot(axi_interconnect_rvcore_mmio_M02_AXI_ARPROT),
        .io_in_ctrl_arready(axi_interconnect_rvcore_mmio_M02_AXI_ARREADY),
        .io_in_ctrl_arvalid(axi_interconnect_rvcore_mmio_M02_AXI_ARVALID),
        .io_in_ctrl_awaddr(axi_interconnect_rvcore_mmio_M02_AXI_AWADDR),
        .io_in_ctrl_awprot(axi_interconnect_rvcore_mmio_M02_AXI_AWPROT),
        .io_in_ctrl_awready(axi_interconnect_rvcore_mmio_M02_AXI_AWREADY),
        .io_in_ctrl_awvalid(axi_interconnect_rvcore_mmio_M02_AXI_AWVALID),
        .io_in_ctrl_bready(axi_interconnect_rvcore_mmio_M02_AXI_BREADY),
        .io_in_ctrl_bresp(axi_interconnect_rvcore_mmio_M02_AXI_BRESP),
        .io_in_ctrl_bvalid(axi_interconnect_rvcore_mmio_M02_AXI_BVALID),
        .io_in_ctrl_rdata(axi_interconnect_rvcore_mmio_M02_AXI_RDATA),
        .io_in_ctrl_rready(axi_interconnect_rvcore_mmio_M02_AXI_RREADY),
        .io_in_ctrl_rresp(axi_interconnect_rvcore_mmio_M02_AXI_RRESP),
        .io_in_ctrl_rvalid(axi_interconnect_rvcore_mmio_M02_AXI_RVALID),
        .io_in_ctrl_wdata(axi_interconnect_rvcore_mmio_M02_AXI_WDATA),
        .io_in_ctrl_wready(axi_interconnect_rvcore_mmio_M02_AXI_WREADY),
        .io_in_ctrl_wstrb(axi_interconnect_rvcore_mmio_M02_AXI_WSTRB),
        .io_in_ctrl_wvalid(axi_interconnect_rvcore_mmio_M02_AXI_WVALID),
        .io_in_fb_araddr(axi_interconnect_rvcore_mmio_M03_AXI_ARADDR),
        .io_in_fb_arprot(axi_interconnect_rvcore_mmio_M03_AXI_ARPROT),
        .io_in_fb_arready(axi_interconnect_rvcore_mmio_M03_AXI_ARREADY),
        .io_in_fb_arvalid(axi_interconnect_rvcore_mmio_M03_AXI_ARVALID),
        .io_in_fb_awaddr(axi_interconnect_rvcore_mmio_M03_AXI_AWADDR),
        .io_in_fb_awprot(axi_interconnect_rvcore_mmio_M03_AXI_AWPROT),
        .io_in_fb_awready(axi_interconnect_rvcore_mmio_M03_AXI_AWREADY),
        .io_in_fb_awvalid(axi_interconnect_rvcore_mmio_M03_AXI_AWVALID),
        .io_in_fb_bready(axi_interconnect_rvcore_mmio_M03_AXI_BREADY),
        .io_in_fb_bresp(axi_interconnect_rvcore_mmio_M03_AXI_BRESP),
        .io_in_fb_bvalid(axi_interconnect_rvcore_mmio_M03_AXI_BVALID),
        .io_in_fb_rdata(axi_interconnect_rvcore_mmio_M03_AXI_RDATA),
        .io_in_fb_rready(axi_interconnect_rvcore_mmio_M03_AXI_RREADY),
        .io_in_fb_rresp(axi_interconnect_rvcore_mmio_M03_AXI_RRESP),
        .io_in_fb_rvalid(axi_interconnect_rvcore_mmio_M03_AXI_RVALID),
        .io_in_fb_wdata(axi_interconnect_rvcore_mmio_M03_AXI_WDATA),
        .io_in_fb_wready(axi_interconnect_rvcore_mmio_M03_AXI_WREADY),
        .io_in_fb_wstrb(axi_interconnect_rvcore_mmio_M03_AXI_WSTRB),
        .io_in_fb_wvalid(axi_interconnect_rvcore_mmio_M03_AXI_WVALID),
        .io_vga_hsync(AXI4VGA_0_io_vga_hsync),
        .io_vga_rgb(AXI4VGA_0_io_vga_rgb),
        .io_vga_valid(AXI4VGA_0_io_vga_valid),
        .io_vga_vsync(AXI4VGA_0_io_vga_vsync),
        .reset(reset_1));
  zynq_soc_axi_dma_rvcore_0 axi_dma_rvcore
       (.axi_resetn(axi_resetn_1),
        .m_axi_mm2s_aclk(clk_wiz_0_clk_out1),
        .m_axi_mm2s_araddr(axi_dma_rvcore_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_rvcore_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_rvcore_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_rvcore_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_rvcore_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_rvcore_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_rvcore_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_rvcore_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_rvcore_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_rvcore_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_rvcore_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_rvcore_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_rvcore_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(clk_wiz_0_clk_out1),
        .m_axi_s2mm_awaddr(axi_dma_rvcore_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_rvcore_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_rvcore_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_rvcore_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_rvcore_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_rvcore_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_rvcore_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_rvcore_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_rvcore_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_rvcore_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_rvcore_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_rvcore_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_rvcore_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_rvcore_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_rvcore_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_rvcore_M_AXI_S2MM_WVALID),
        .m_axi_sg_aclk(clk_wiz_0_clk_out1),
        .m_axi_sg_araddr(axi_dma_rvcore_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_dma_rvcore_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_dma_rvcore_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_dma_rvcore_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_dma_rvcore_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_dma_rvcore_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_dma_rvcore_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(axi_dma_rvcore_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_dma_rvcore_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_dma_rvcore_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_dma_rvcore_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_dma_rvcore_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_dma_rvcore_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_dma_rvcore_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_dma_rvcore_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(axi_dma_rvcore_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_dma_rvcore_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_dma_rvcore_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_dma_rvcore_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_dma_rvcore_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_dma_rvcore_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_dma_rvcore_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_dma_rvcore_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_dma_rvcore_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_dma_rvcore_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_dma_rvcore_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_dma_rvcore_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_dma_rvcore_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_dma_rvcore_M_AXI_SG_WVALID),
        .m_axis_mm2s_tdata(Conn2_TDATA),
        .m_axis_mm2s_tkeep(Conn2_TKEEP),
        .m_axis_mm2s_tlast(Conn2_TLAST),
        .m_axis_mm2s_tready(Conn2_TREADY),
        .m_axis_mm2s_tvalid(Conn2_TVALID),
        .mm2s_introut(axi_dma_rvcore_mm2s_introut),
        .s2mm_introut(axi_dma_rvcore_s2mm_introut),
        .s_axi_lite_aclk(clk_wiz_0_clk_out1),
        .s_axi_lite_araddr(axi_interconnect_rvcore_mmio_M01_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(axi_interconnect_rvcore_mmio_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_rvcore_mmio_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_rvcore_mmio_M01_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(axi_interconnect_rvcore_mmio_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_rvcore_mmio_M01_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_rvcore_mmio_M01_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_rvcore_mmio_M01_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_rvcore_mmio_M01_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_rvcore_mmio_M01_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_rvcore_mmio_M01_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_rvcore_mmio_M01_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_rvcore_mmio_M01_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_rvcore_mmio_M01_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_rvcore_mmio_M01_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_rvcore_mmio_M01_AXI_WVALID),
        .s_axis_s2mm_tdata(Conn1_TDATA),
        .s_axis_s2mm_tkeep(Conn1_TKEEP),
        .s_axis_s2mm_tlast(Conn1_TLAST),
        .s_axis_s2mm_tready(Conn1_TREADY),
        .s_axis_s2mm_tvalid(Conn1_TVALID));
  zynq_soc_axi_interconnect_rvcore_dma_0 axi_interconnect_rvcore_dma
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(rvcore_uncorerst_interconnect_aresetn),
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
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_1_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_1_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .S00_AXI_araddr(axi_dma_rvcore_M_AXI_SG_ARADDR),
        .S00_AXI_arburst(axi_dma_rvcore_M_AXI_SG_ARBURST),
        .S00_AXI_arcache(axi_dma_rvcore_M_AXI_SG_ARCACHE),
        .S00_AXI_arlen(axi_dma_rvcore_M_AXI_SG_ARLEN),
        .S00_AXI_arprot(axi_dma_rvcore_M_AXI_SG_ARPROT),
        .S00_AXI_arready(axi_dma_rvcore_M_AXI_SG_ARREADY),
        .S00_AXI_arsize(axi_dma_rvcore_M_AXI_SG_ARSIZE),
        .S00_AXI_arvalid(axi_dma_rvcore_M_AXI_SG_ARVALID),
        .S00_AXI_awaddr(axi_dma_rvcore_M_AXI_SG_AWADDR),
        .S00_AXI_awburst(axi_dma_rvcore_M_AXI_SG_AWBURST),
        .S00_AXI_awcache(axi_dma_rvcore_M_AXI_SG_AWCACHE),
        .S00_AXI_awlen(axi_dma_rvcore_M_AXI_SG_AWLEN),
        .S00_AXI_awprot(axi_dma_rvcore_M_AXI_SG_AWPROT),
        .S00_AXI_awready(axi_dma_rvcore_M_AXI_SG_AWREADY),
        .S00_AXI_awsize(axi_dma_rvcore_M_AXI_SG_AWSIZE),
        .S00_AXI_awvalid(axi_dma_rvcore_M_AXI_SG_AWVALID),
        .S00_AXI_bready(axi_dma_rvcore_M_AXI_SG_BREADY),
        .S00_AXI_bresp(axi_dma_rvcore_M_AXI_SG_BRESP),
        .S00_AXI_bvalid(axi_dma_rvcore_M_AXI_SG_BVALID),
        .S00_AXI_rdata(axi_dma_rvcore_M_AXI_SG_RDATA),
        .S00_AXI_rlast(axi_dma_rvcore_M_AXI_SG_RLAST),
        .S00_AXI_rready(axi_dma_rvcore_M_AXI_SG_RREADY),
        .S00_AXI_rresp(axi_dma_rvcore_M_AXI_SG_RRESP),
        .S00_AXI_rvalid(axi_dma_rvcore_M_AXI_SG_RVALID),
        .S00_AXI_wdata(axi_dma_rvcore_M_AXI_SG_WDATA),
        .S00_AXI_wlast(axi_dma_rvcore_M_AXI_SG_WLAST),
        .S00_AXI_wready(axi_dma_rvcore_M_AXI_SG_WREADY),
        .S00_AXI_wstrb(axi_dma_rvcore_M_AXI_SG_WSTRB),
        .S00_AXI_wvalid(axi_dma_rvcore_M_AXI_SG_WVALID),
        .S01_ACLK(clk_wiz_0_clk_out1),
        .S01_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .S01_AXI_araddr(axi_dma_rvcore_M_AXI_MM2S_ARADDR),
        .S01_AXI_arburst(axi_dma_rvcore_M_AXI_MM2S_ARBURST),
        .S01_AXI_arcache(axi_dma_rvcore_M_AXI_MM2S_ARCACHE),
        .S01_AXI_arlen(axi_dma_rvcore_M_AXI_MM2S_ARLEN),
        .S01_AXI_arprot(axi_dma_rvcore_M_AXI_MM2S_ARPROT),
        .S01_AXI_arready(axi_dma_rvcore_M_AXI_MM2S_ARREADY),
        .S01_AXI_arsize(axi_dma_rvcore_M_AXI_MM2S_ARSIZE),
        .S01_AXI_arvalid(axi_dma_rvcore_M_AXI_MM2S_ARVALID),
        .S01_AXI_rdata(axi_dma_rvcore_M_AXI_MM2S_RDATA),
        .S01_AXI_rlast(axi_dma_rvcore_M_AXI_MM2S_RLAST),
        .S01_AXI_rready(axi_dma_rvcore_M_AXI_MM2S_RREADY),
        .S01_AXI_rresp(axi_dma_rvcore_M_AXI_MM2S_RRESP),
        .S01_AXI_rvalid(axi_dma_rvcore_M_AXI_MM2S_RVALID),
        .S02_ACLK(clk_wiz_0_clk_out1),
        .S02_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .S02_AXI_awaddr(axi_dma_rvcore_M_AXI_S2MM_AWADDR),
        .S02_AXI_awburst(axi_dma_rvcore_M_AXI_S2MM_AWBURST),
        .S02_AXI_awcache(axi_dma_rvcore_M_AXI_S2MM_AWCACHE),
        .S02_AXI_awlen(axi_dma_rvcore_M_AXI_S2MM_AWLEN),
        .S02_AXI_awprot(axi_dma_rvcore_M_AXI_S2MM_AWPROT),
        .S02_AXI_awready(axi_dma_rvcore_M_AXI_S2MM_AWREADY),
        .S02_AXI_awsize(axi_dma_rvcore_M_AXI_S2MM_AWSIZE),
        .S02_AXI_awvalid(axi_dma_rvcore_M_AXI_S2MM_AWVALID),
        .S02_AXI_bready(axi_dma_rvcore_M_AXI_S2MM_BREADY),
        .S02_AXI_bresp(axi_dma_rvcore_M_AXI_S2MM_BRESP),
        .S02_AXI_bvalid(axi_dma_rvcore_M_AXI_S2MM_BVALID),
        .S02_AXI_wdata(axi_dma_rvcore_M_AXI_S2MM_WDATA),
        .S02_AXI_wlast(axi_dma_rvcore_M_AXI_S2MM_WLAST),
        .S02_AXI_wready(axi_dma_rvcore_M_AXI_S2MM_WREADY),
        .S02_AXI_wstrb(axi_dma_rvcore_M_AXI_S2MM_WSTRB),
        .S02_AXI_wvalid(axi_dma_rvcore_M_AXI_S2MM_WVALID));
  zynq_soc_axi_interconnect_rvcore_mmio_0 axi_interconnect_rvcore_mmio
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_rvcore_mmio_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_rvcore_mmio_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_rvcore_mmio_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_rvcore_mmio_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_rvcore_mmio_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_rvcore_mmio_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_rvcore_mmio_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_rvcore_mmio_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_rvcore_mmio_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_rvcore_mmio_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_rvcore_mmio_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_rvcore_mmio_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_rvcore_mmio_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_rvcore_mmio_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_rvcore_mmio_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_rvcore_mmio_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_rvcore_mmio_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_0_clk_out1),
        .M01_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M01_AXI_araddr(axi_interconnect_rvcore_mmio_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_rvcore_mmio_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_rvcore_mmio_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_rvcore_mmio_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_rvcore_mmio_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_rvcore_mmio_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_rvcore_mmio_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_rvcore_mmio_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_rvcore_mmio_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_rvcore_mmio_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_rvcore_mmio_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_rvcore_mmio_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_rvcore_mmio_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_rvcore_mmio_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_rvcore_mmio_M01_AXI_WREADY),
        .M01_AXI_wvalid(axi_interconnect_rvcore_mmio_M01_AXI_WVALID),
        .M02_ACLK(clock_1),
        .M02_ARESETN(M03_ARESETN_1),
        .M02_AXI_araddr(axi_interconnect_rvcore_mmio_M02_AXI_ARADDR),
        .M02_AXI_arprot(axi_interconnect_rvcore_mmio_M02_AXI_ARPROT),
        .M02_AXI_arready(axi_interconnect_rvcore_mmio_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_rvcore_mmio_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_rvcore_mmio_M02_AXI_AWADDR),
        .M02_AXI_awprot(axi_interconnect_rvcore_mmio_M02_AXI_AWPROT),
        .M02_AXI_awready(axi_interconnect_rvcore_mmio_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_rvcore_mmio_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_rvcore_mmio_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_rvcore_mmio_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_rvcore_mmio_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_rvcore_mmio_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_rvcore_mmio_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_rvcore_mmio_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_rvcore_mmio_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_rvcore_mmio_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_rvcore_mmio_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_rvcore_mmio_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_rvcore_mmio_M02_AXI_WVALID),
        .M03_ACLK(clock_1),
        .M03_ARESETN(M03_ARESETN_1),
        .M03_AXI_araddr(axi_interconnect_rvcore_mmio_M03_AXI_ARADDR),
        .M03_AXI_arprot(axi_interconnect_rvcore_mmio_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_interconnect_rvcore_mmio_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_rvcore_mmio_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_rvcore_mmio_M03_AXI_AWADDR),
        .M03_AXI_awprot(axi_interconnect_rvcore_mmio_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_interconnect_rvcore_mmio_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_rvcore_mmio_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_rvcore_mmio_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_rvcore_mmio_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_rvcore_mmio_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_rvcore_mmio_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_rvcore_mmio_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_rvcore_mmio_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_rvcore_mmio_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_rvcore_mmio_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_rvcore_mmio_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_rvcore_mmio_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_rvcore_mmio_M03_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .S00_AXI_araddr(S_AXILITE_MMIO_1_ARADDR),
        .S00_AXI_arburst(S_AXILITE_MMIO_1_ARBURST),
        .S00_AXI_arcache(S_AXILITE_MMIO_1_ARCACHE),
        .S00_AXI_arid(S_AXILITE_MMIO_1_ARID),
        .S00_AXI_arlen(S_AXILITE_MMIO_1_ARLEN),
        .S00_AXI_arlock(S_AXILITE_MMIO_1_ARLOCK),
        .S00_AXI_arprot(S_AXILITE_MMIO_1_ARPROT),
        .S00_AXI_arqos(S_AXILITE_MMIO_1_ARQOS),
        .S00_AXI_arready(S_AXILITE_MMIO_1_ARREADY),
        .S00_AXI_arregion(S_AXILITE_MMIO_1_ARREGION),
        .S00_AXI_arsize(S_AXILITE_MMIO_1_ARSIZE),
        .S00_AXI_arvalid(S_AXILITE_MMIO_1_ARVALID),
        .S00_AXI_awaddr(S_AXILITE_MMIO_1_AWADDR),
        .S00_AXI_awburst(S_AXILITE_MMIO_1_AWBURST),
        .S00_AXI_awcache(S_AXILITE_MMIO_1_AWCACHE),
        .S00_AXI_awid(S_AXILITE_MMIO_1_AWID),
        .S00_AXI_awlen(S_AXILITE_MMIO_1_AWLEN),
        .S00_AXI_awlock(S_AXILITE_MMIO_1_AWLOCK),
        .S00_AXI_awprot(S_AXILITE_MMIO_1_AWPROT),
        .S00_AXI_awqos(S_AXILITE_MMIO_1_AWQOS),
        .S00_AXI_awready(S_AXILITE_MMIO_1_AWREADY),
        .S00_AXI_awregion(S_AXILITE_MMIO_1_AWREGION),
        .S00_AXI_awsize(S_AXILITE_MMIO_1_AWSIZE),
        .S00_AXI_awvalid(S_AXILITE_MMIO_1_AWVALID),
        .S00_AXI_bid(S_AXILITE_MMIO_1_BID),
        .S00_AXI_bready(S_AXILITE_MMIO_1_BREADY),
        .S00_AXI_bresp(S_AXILITE_MMIO_1_BRESP),
        .S00_AXI_bvalid(S_AXILITE_MMIO_1_BVALID),
        .S00_AXI_rdata(S_AXILITE_MMIO_1_RDATA),
        .S00_AXI_rid(S_AXILITE_MMIO_1_RID),
        .S00_AXI_rlast(S_AXILITE_MMIO_1_RLAST),
        .S00_AXI_rready(S_AXILITE_MMIO_1_RREADY),
        .S00_AXI_rresp(S_AXILITE_MMIO_1_RRESP),
        .S00_AXI_rvalid(S_AXILITE_MMIO_1_RVALID),
        .S00_AXI_wdata(S_AXILITE_MMIO_1_WDATA),
        .S00_AXI_wlast(S_AXILITE_MMIO_1_WLAST),
        .S00_AXI_wready(S_AXILITE_MMIO_1_WREADY),
        .S00_AXI_wstrb(S_AXILITE_MMIO_1_WSTRB),
        .S00_AXI_wvalid(S_AXILITE_MMIO_1_WVALID));
  zynq_soc_axi_uartlite_0_0 axi_uartlite_0
       (.rx(rx_1),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_rvcore_mmio_M00_AXI_ARADDR[3:0]),
        .s_axi_aresetn(axi_resetn_1),
        .s_axi_arready(axi_interconnect_rvcore_mmio_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_rvcore_mmio_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_rvcore_mmio_M00_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_interconnect_rvcore_mmio_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_rvcore_mmio_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_rvcore_mmio_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_rvcore_mmio_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_rvcore_mmio_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_rvcore_mmio_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_rvcore_mmio_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_rvcore_mmio_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_rvcore_mmio_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_rvcore_mmio_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_rvcore_mmio_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_rvcore_mmio_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_rvcore_mmio_M00_AXI_WVALID),
        .tx(axi_uartlite_0_tx));
  zynq_soc_xlconcat_0_0 xlconcat_0
       (.In0(axi_dma_rvcore_mm2s_introut),
        .In1(axi_dma_rvcore_s2mm_introut),
        .In2(1'b0),
        .In3(1'b0),
        .In4(1'b0),
        .dout(xlconcat_0_dout));
endmodule

module m00_couplers_imp_1B62G5Z
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
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
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
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
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
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awuser;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
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
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awuser;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [5:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARUSER;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [5:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWUSER;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire [5:0]m00_couplers_to_m00_couplers_BID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [63:0]m00_couplers_to_m00_couplers_RDATA;
  wire [5:0]m00_couplers_to_m00_couplers_RID;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [63:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [7:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_aruser = m00_couplers_to_m00_couplers_ARUSER;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awuser = m00_couplers_to_m00_couplers_AWUSER;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[5:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[5:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[5:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock;
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARUSER = S_AXI_aruser;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[5:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock;
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWUSER = S_AXI_awuser;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_1GY9XNB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_PWPM2P
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
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
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
    S_AXI_arid,
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
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
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
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [3:0]m00_couplers_to_m00_couplers_ARREGION;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [3:0]m00_couplers_to_m00_couplers_AWREGION;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [1:0]m00_couplers_to_m00_couplers_BID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [63:0]m00_couplers_to_m00_couplers_RDATA;
  wire [1:0]m00_couplers_to_m00_couplers_RID;
  wire [0:0]m00_couplers_to_m00_couplers_RLAST;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [63:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WLAST;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [7:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast[0] = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast[0] = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[1:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[1:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast[0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast[0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_XD3PL6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_m00_couplers_ARADDR;
  wire auto_ds_to_m00_couplers_ARREADY;
  wire auto_ds_to_m00_couplers_ARVALID;
  wire [39:0]auto_ds_to_m00_couplers_AWADDR;
  wire auto_ds_to_m00_couplers_AWREADY;
  wire auto_ds_to_m00_couplers_AWVALID;
  wire auto_ds_to_m00_couplers_BREADY;
  wire [1:0]auto_ds_to_m00_couplers_BRESP;
  wire auto_ds_to_m00_couplers_BVALID;
  wire [31:0]auto_ds_to_m00_couplers_RDATA;
  wire auto_ds_to_m00_couplers_RREADY;
  wire [1:0]auto_ds_to_m00_couplers_RRESP;
  wire auto_ds_to_m00_couplers_RVALID;
  wire [31:0]auto_ds_to_m00_couplers_WDATA;
  wire auto_ds_to_m00_couplers_WREADY;
  wire [3:0]auto_ds_to_m00_couplers_WSTRB;
  wire auto_ds_to_m00_couplers_WVALID;
  wire [39:0]m00_couplers_to_auto_ds_ARADDR;
  wire [2:0]m00_couplers_to_auto_ds_ARPROT;
  wire m00_couplers_to_auto_ds_ARREADY;
  wire m00_couplers_to_auto_ds_ARVALID;
  wire [39:0]m00_couplers_to_auto_ds_AWADDR;
  wire [2:0]m00_couplers_to_auto_ds_AWPROT;
  wire m00_couplers_to_auto_ds_AWREADY;
  wire m00_couplers_to_auto_ds_AWVALID;
  wire m00_couplers_to_auto_ds_BREADY;
  wire [1:0]m00_couplers_to_auto_ds_BRESP;
  wire m00_couplers_to_auto_ds_BVALID;
  wire [63:0]m00_couplers_to_auto_ds_RDATA;
  wire m00_couplers_to_auto_ds_RREADY;
  wire [1:0]m00_couplers_to_auto_ds_RRESP;
  wire m00_couplers_to_auto_ds_RVALID;
  wire [63:0]m00_couplers_to_auto_ds_WDATA;
  wire m00_couplers_to_auto_ds_WREADY;
  wire [7:0]m00_couplers_to_auto_ds_WSTRB;
  wire m00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_ds_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_ds_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_ds_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_ds_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  zynq_soc_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_m00_couplers_ARADDR),
        .m_axi_arready(auto_ds_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_ds_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_ds_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_ds_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m00_couplers_RDATA),
        .m_axi_rready(auto_ds_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m00_couplers_WDATA),
        .m_axi_wready(auto_ds_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_ds_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_ds_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_ds_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_ds_AWADDR),
        .s_axi_awprot(m00_couplers_to_auto_ds_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_ds_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_ds_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_ds_RDATA),
        .s_axi_rready(m00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_ds_WDATA),
        .s_axi_wready(m00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_ds_WVALID));
endmodule

module m01_couplers_imp_160IRHN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_m01_couplers_ARADDR;
  wire auto_ds_to_m01_couplers_ARREADY;
  wire auto_ds_to_m01_couplers_ARVALID;
  wire [39:0]auto_ds_to_m01_couplers_AWADDR;
  wire auto_ds_to_m01_couplers_AWREADY;
  wire auto_ds_to_m01_couplers_AWVALID;
  wire auto_ds_to_m01_couplers_BREADY;
  wire [1:0]auto_ds_to_m01_couplers_BRESP;
  wire auto_ds_to_m01_couplers_BVALID;
  wire [31:0]auto_ds_to_m01_couplers_RDATA;
  wire auto_ds_to_m01_couplers_RREADY;
  wire [1:0]auto_ds_to_m01_couplers_RRESP;
  wire auto_ds_to_m01_couplers_RVALID;
  wire [31:0]auto_ds_to_m01_couplers_WDATA;
  wire auto_ds_to_m01_couplers_WREADY;
  wire auto_ds_to_m01_couplers_WVALID;
  wire [39:0]m01_couplers_to_auto_ds_ARADDR;
  wire [2:0]m01_couplers_to_auto_ds_ARPROT;
  wire m01_couplers_to_auto_ds_ARREADY;
  wire m01_couplers_to_auto_ds_ARVALID;
  wire [39:0]m01_couplers_to_auto_ds_AWADDR;
  wire [2:0]m01_couplers_to_auto_ds_AWPROT;
  wire m01_couplers_to_auto_ds_AWREADY;
  wire m01_couplers_to_auto_ds_AWVALID;
  wire m01_couplers_to_auto_ds_BREADY;
  wire [1:0]m01_couplers_to_auto_ds_BRESP;
  wire m01_couplers_to_auto_ds_BVALID;
  wire [63:0]m01_couplers_to_auto_ds_RDATA;
  wire m01_couplers_to_auto_ds_RREADY;
  wire [1:0]m01_couplers_to_auto_ds_RRESP;
  wire m01_couplers_to_auto_ds_RVALID;
  wire [63:0]m01_couplers_to_auto_ds_WDATA;
  wire m01_couplers_to_auto_ds_WREADY;
  wire [7:0]m01_couplers_to_auto_ds_WSTRB;
  wire m01_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_ds_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_ds_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_ds_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_ds_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m01_couplers_WDATA;
  assign M_AXI_wvalid = auto_ds_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = m01_couplers_to_auto_ds_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign m01_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign m01_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  zynq_soc_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_m01_couplers_ARADDR),
        .m_axi_arready(auto_ds_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_ds_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_ds_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_ds_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m01_couplers_RDATA),
        .m_axi_rready(auto_ds_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m01_couplers_WDATA),
        .m_axi_wready(auto_ds_to_m01_couplers_WREADY),
        .m_axi_wvalid(auto_ds_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_ds_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_ds_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_ds_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_ds_AWADDR),
        .s_axi_awprot(m01_couplers_to_auto_ds_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_ds_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_ds_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_ds_RDATA),
        .s_axi_rready(m01_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_ds_WDATA),
        .s_axi_wready(m01_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_ds_WVALID));
endmodule

module m01_couplers_imp_MMAK52
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [39:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1FW18US
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_YXQT3D
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m02_couplers_ARADDR;
  wire [2:0]auto_cc_to_m02_couplers_ARPROT;
  wire auto_cc_to_m02_couplers_ARREADY;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [31:0]auto_cc_to_m02_couplers_AWADDR;
  wire [2:0]auto_cc_to_m02_couplers_AWPROT;
  wire auto_cc_to_m02_couplers_AWREADY;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire auto_cc_to_m02_couplers_BVALID;
  wire [63:0]auto_cc_to_m02_couplers_RDATA;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire auto_cc_to_m02_couplers_RVALID;
  wire [63:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WREADY;
  wire [7:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [39:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [39:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [63:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [63:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [7:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[7:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  zynq_soc_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m02_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m02_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module m03_couplers_imp_14PJEAW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m03_couplers_ARADDR;
  wire [2:0]auto_cc_to_m03_couplers_ARPROT;
  wire auto_cc_to_m03_couplers_ARREADY;
  wire auto_cc_to_m03_couplers_ARVALID;
  wire [31:0]auto_cc_to_m03_couplers_AWADDR;
  wire [2:0]auto_cc_to_m03_couplers_AWPROT;
  wire auto_cc_to_m03_couplers_AWREADY;
  wire auto_cc_to_m03_couplers_AWVALID;
  wire auto_cc_to_m03_couplers_BREADY;
  wire [1:0]auto_cc_to_m03_couplers_BRESP;
  wire auto_cc_to_m03_couplers_BVALID;
  wire [63:0]auto_cc_to_m03_couplers_RDATA;
  wire auto_cc_to_m03_couplers_RREADY;
  wire [1:0]auto_cc_to_m03_couplers_RRESP;
  wire auto_cc_to_m03_couplers_RVALID;
  wire [63:0]auto_cc_to_m03_couplers_WDATA;
  wire auto_cc_to_m03_couplers_WREADY;
  wire [7:0]auto_cc_to_m03_couplers_WSTRB;
  wire auto_cc_to_m03_couplers_WVALID;
  wire [39:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [39:0]m03_couplers_to_auto_cc_AWADDR;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [63:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [63:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [7:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_cc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[7:0] = auto_cc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m03_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_cc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  zynq_soc_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m03_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m03_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_19LU5HF
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
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
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
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
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
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_us_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_to_s00_couplers_ARQOS;
  wire auto_us_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_to_s00_couplers_ARSIZE;
  wire auto_us_to_s00_couplers_ARVALID;
  wire [39:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [63:0]auto_us_to_s00_couplers_RDATA;
  wire auto_us_to_s00_couplers_RLAST;
  wire auto_us_to_s00_couplers_RREADY;
  wire [1:0]auto_us_to_s00_couplers_RRESP;
  wire auto_us_to_s00_couplers_RVALID;
  wire [63:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [7:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_us_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_ARLEN;
  wire [2:0]s00_couplers_to_auto_us_ARPROT;
  wire s00_couplers_to_auto_us_ARREADY;
  wire [2:0]s00_couplers_to_auto_us_ARSIZE;
  wire s00_couplers_to_auto_us_ARVALID;
  wire [39:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_RDATA;
  wire s00_couplers_to_auto_us_RLAST;
  wire s00_couplers_to_auto_us_RREADY;
  wire [1:0]s00_couplers_to_auto_us_RRESP;
  wire s00_couplers_to_auto_us_RVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_AXI_araddr[39:0] = auto_us_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_us_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  zynq_soc_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s00_couplers_to_auto_us_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_JYANRP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
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
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
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
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [15:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [15:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  zynq_soc_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_MEMYVP
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
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
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
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_to_s00_couplers_ARQOS;
  wire auto_us_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_to_s00_couplers_ARSIZE;
  wire auto_us_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [63:0]auto_us_to_s00_couplers_RDATA;
  wire auto_us_to_s00_couplers_RLAST;
  wire auto_us_to_s00_couplers_RREADY;
  wire [1:0]auto_us_to_s00_couplers_RRESP;
  wire auto_us_to_s00_couplers_RVALID;
  wire [63:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [7:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_us_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_ARLEN;
  wire [0:0]s00_couplers_to_auto_us_ARLOCK;
  wire [2:0]s00_couplers_to_auto_us_ARPROT;
  wire [3:0]s00_couplers_to_auto_us_ARQOS;
  wire s00_couplers_to_auto_us_ARREADY;
  wire [2:0]s00_couplers_to_auto_us_ARSIZE;
  wire s00_couplers_to_auto_us_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire [0:0]s00_couplers_to_auto_us_AWLOCK;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire [3:0]s00_couplers_to_auto_us_AWQOS;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_RDATA;
  wire s00_couplers_to_auto_us_RLAST;
  wire s00_couplers_to_auto_us_RREADY;
  wire [1:0]s00_couplers_to_auto_us_RRESP;
  wire s00_couplers_to_auto_us_RVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_us_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  zynq_soc_auto_us_3 auto_us
       (.m_axi_araddr(auto_us_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_ZSJQIW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
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
    S_AXI_arregion,
    S_AXI_arsize,
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
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
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
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [7:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [7:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [63:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [63:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [7:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [3:0]s00_couplers_to_auto_pc_ARREGION;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [7:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [63:0]s00_couplers_to_auto_pc_RDATA;
  wire [7:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [63:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [7:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[7:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[7:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[7:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[7:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[7:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  zynq_soc_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_1H5MAD0
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
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
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
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
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
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_to_s01_couplers_ARQOS;
  wire auto_us_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_to_s01_couplers_ARSIZE;
  wire auto_us_to_s01_couplers_ARVALID;
  wire [63:0]auto_us_to_s01_couplers_RDATA;
  wire auto_us_to_s01_couplers_RLAST;
  wire auto_us_to_s01_couplers_RREADY;
  wire [1:0]auto_us_to_s01_couplers_RRESP;
  wire auto_us_to_s01_couplers_RVALID;
  wire [31:0]s01_couplers_to_auto_us_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_ARCACHE;
  wire [7:0]s01_couplers_to_auto_us_ARLEN;
  wire [0:0]s01_couplers_to_auto_us_ARLOCK;
  wire [2:0]s01_couplers_to_auto_us_ARPROT;
  wire [3:0]s01_couplers_to_auto_us_ARQOS;
  wire s01_couplers_to_auto_us_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_ARSIZE;
  wire s01_couplers_to_auto_us_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_RDATA;
  wire s01_couplers_to_auto_us_RLAST;
  wire s01_couplers_to_auto_us_RREADY;
  wire [1:0]s01_couplers_to_auto_us_RRESP;
  wire s01_couplers_to_auto_us_RVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s01_couplers_ARVALID;
  assign M_AXI_rready = auto_us_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_us_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_RVALID;
  assign auto_us_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_RREADY = S_AXI_rready;
  zynq_soc_auto_us_4 auto_us
       (.m_axi_araddr(auto_us_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s01_couplers_ARVALID),
        .m_axi_rdata(auto_us_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s01_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_ARVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_us_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_RVALID));
endmodule

module s01_couplers_imp_KTMPB6
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
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_us_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_to_s01_couplers_ARQOS;
  wire auto_us_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_to_s01_couplers_ARSIZE;
  wire auto_us_to_s01_couplers_ARVALID;
  wire [63:0]auto_us_to_s01_couplers_RDATA;
  wire auto_us_to_s01_couplers_RLAST;
  wire auto_us_to_s01_couplers_RREADY;
  wire [1:0]auto_us_to_s01_couplers_RRESP;
  wire auto_us_to_s01_couplers_RVALID;
  wire [39:0]s01_couplers_to_auto_us_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_ARCACHE;
  wire [7:0]s01_couplers_to_auto_us_ARLEN;
  wire [2:0]s01_couplers_to_auto_us_ARPROT;
  wire s01_couplers_to_auto_us_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_ARSIZE;
  wire s01_couplers_to_auto_us_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_RDATA;
  wire s01_couplers_to_auto_us_RLAST;
  wire s01_couplers_to_auto_us_RREADY;
  wire [1:0]s01_couplers_to_auto_us_RRESP;
  wire s01_couplers_to_auto_us_RVALID;

  assign M_AXI_araddr[39:0] = auto_us_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s01_couplers_ARVALID;
  assign M_AXI_rready = auto_us_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_us_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_RVALID;
  assign auto_us_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_couplers_to_auto_us_ARADDR = S_AXI_araddr[39:0];
  assign s01_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_RREADY = S_AXI_rready;
  zynq_soc_auto_us_1 auto_us
       (.m_axi_araddr(auto_us_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s01_couplers_ARVALID),
        .m_axi_rdata(auto_us_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s01_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s01_couplers_to_auto_us_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s01_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_ARVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_us_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_RVALID));
endmodule

module s02_couplers_imp_18TLRK0
   (M_ACLK,
    M_ARESETN,
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
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_us_to_s02_couplers_AWADDR;
  wire [1:0]auto_us_to_s02_couplers_AWBURST;
  wire [3:0]auto_us_to_s02_couplers_AWCACHE;
  wire [7:0]auto_us_to_s02_couplers_AWLEN;
  wire [0:0]auto_us_to_s02_couplers_AWLOCK;
  wire [2:0]auto_us_to_s02_couplers_AWPROT;
  wire [3:0]auto_us_to_s02_couplers_AWQOS;
  wire auto_us_to_s02_couplers_AWREADY;
  wire [2:0]auto_us_to_s02_couplers_AWSIZE;
  wire auto_us_to_s02_couplers_AWVALID;
  wire auto_us_to_s02_couplers_BREADY;
  wire [1:0]auto_us_to_s02_couplers_BRESP;
  wire auto_us_to_s02_couplers_BVALID;
  wire [63:0]auto_us_to_s02_couplers_WDATA;
  wire auto_us_to_s02_couplers_WLAST;
  wire auto_us_to_s02_couplers_WREADY;
  wire [7:0]auto_us_to_s02_couplers_WSTRB;
  wire auto_us_to_s02_couplers_WVALID;
  wire [39:0]s02_couplers_to_auto_us_AWADDR;
  wire [1:0]s02_couplers_to_auto_us_AWBURST;
  wire [3:0]s02_couplers_to_auto_us_AWCACHE;
  wire [7:0]s02_couplers_to_auto_us_AWLEN;
  wire [2:0]s02_couplers_to_auto_us_AWPROT;
  wire s02_couplers_to_auto_us_AWREADY;
  wire [2:0]s02_couplers_to_auto_us_AWSIZE;
  wire s02_couplers_to_auto_us_AWVALID;
  wire s02_couplers_to_auto_us_BREADY;
  wire [1:0]s02_couplers_to_auto_us_BRESP;
  wire s02_couplers_to_auto_us_BVALID;
  wire [31:0]s02_couplers_to_auto_us_WDATA;
  wire s02_couplers_to_auto_us_WLAST;
  wire s02_couplers_to_auto_us_WREADY;
  wire [3:0]s02_couplers_to_auto_us_WSTRB;
  wire s02_couplers_to_auto_us_WVALID;

  assign M_AXI_awaddr[39:0] = auto_us_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s02_couplers_BREADY;
  assign M_AXI_wdata[63:0] = auto_us_to_s02_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s02_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_auto_us_BVALID;
  assign S_AXI_wready = s02_couplers_to_auto_us_WREADY;
  assign auto_us_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_auto_us_AWADDR = S_AXI_awaddr[39:0];
  assign s02_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s02_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s02_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  zynq_soc_auto_us_2 auto_us
       (.m_axi_awaddr(auto_us_to_s02_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s02_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s02_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s02_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s02_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s02_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s02_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s02_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s02_couplers_BVALID),
        .m_axi_wdata(auto_us_to_s02_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s02_couplers_WLAST),
        .m_axi_wready(auto_us_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s02_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s02_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s02_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s02_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s02_couplers_to_auto_us_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s02_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s02_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s02_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s02_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s02_couplers_to_auto_us_BVALID),
        .s_axi_wdata(s02_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s02_couplers_to_auto_us_WLAST),
        .s_axi_wready(s02_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s02_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s02_couplers_to_auto_us_WVALID));
endmodule

module s02_couplers_imp_NLV82E
   (M_ACLK,
    M_ARESETN,
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
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s02_couplers_AWADDR;
  wire [1:0]auto_us_to_s02_couplers_AWBURST;
  wire [3:0]auto_us_to_s02_couplers_AWCACHE;
  wire [7:0]auto_us_to_s02_couplers_AWLEN;
  wire [0:0]auto_us_to_s02_couplers_AWLOCK;
  wire [2:0]auto_us_to_s02_couplers_AWPROT;
  wire [3:0]auto_us_to_s02_couplers_AWQOS;
  wire auto_us_to_s02_couplers_AWREADY;
  wire [2:0]auto_us_to_s02_couplers_AWSIZE;
  wire auto_us_to_s02_couplers_AWVALID;
  wire auto_us_to_s02_couplers_BREADY;
  wire [1:0]auto_us_to_s02_couplers_BRESP;
  wire auto_us_to_s02_couplers_BVALID;
  wire [63:0]auto_us_to_s02_couplers_WDATA;
  wire auto_us_to_s02_couplers_WLAST;
  wire auto_us_to_s02_couplers_WREADY;
  wire [7:0]auto_us_to_s02_couplers_WSTRB;
  wire auto_us_to_s02_couplers_WVALID;
  wire [31:0]s02_couplers_to_auto_us_AWADDR;
  wire [1:0]s02_couplers_to_auto_us_AWBURST;
  wire [3:0]s02_couplers_to_auto_us_AWCACHE;
  wire [7:0]s02_couplers_to_auto_us_AWLEN;
  wire [0:0]s02_couplers_to_auto_us_AWLOCK;
  wire [2:0]s02_couplers_to_auto_us_AWPROT;
  wire [3:0]s02_couplers_to_auto_us_AWQOS;
  wire s02_couplers_to_auto_us_AWREADY;
  wire [2:0]s02_couplers_to_auto_us_AWSIZE;
  wire s02_couplers_to_auto_us_AWVALID;
  wire s02_couplers_to_auto_us_BREADY;
  wire [1:0]s02_couplers_to_auto_us_BRESP;
  wire s02_couplers_to_auto_us_BVALID;
  wire [31:0]s02_couplers_to_auto_us_WDATA;
  wire s02_couplers_to_auto_us_WLAST;
  wire s02_couplers_to_auto_us_WREADY;
  wire [3:0]s02_couplers_to_auto_us_WSTRB;
  wire s02_couplers_to_auto_us_WVALID;

  assign M_AXI_awaddr[31:0] = auto_us_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s02_couplers_BREADY;
  assign M_AXI_wdata[63:0] = auto_us_to_s02_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s02_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_auto_us_BVALID;
  assign S_AXI_wready = s02_couplers_to_auto_us_WREADY;
  assign auto_us_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_auto_us_AWLOCK = S_AXI_awlock[0];
  assign s02_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s02_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s02_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  zynq_soc_auto_us_5 auto_us
       (.m_axi_awaddr(auto_us_to_s02_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s02_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s02_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s02_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s02_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s02_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s02_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s02_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s02_couplers_BVALID),
        .m_axi_wdata(auto_us_to_s02_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s02_couplers_WLAST),
        .m_axi_wready(auto_us_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s02_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s02_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s02_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s02_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s02_couplers_to_auto_us_AWLOCK),
        .s_axi_awprot(s02_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s02_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s02_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s02_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s02_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s02_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s02_couplers_to_auto_us_BVALID),
        .s_axi_wdata(s02_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s02_couplers_to_auto_us_WLAST),
        .s_axi_wready(s02_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s02_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s02_couplers_to_auto_us_WVALID));
endmodule

module s03_couplers_imp_1FOP2LZ
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
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
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
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
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
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
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
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]s03_couplers_to_s03_couplers_ARADDR;
  wire [1:0]s03_couplers_to_s03_couplers_ARBURST;
  wire [3:0]s03_couplers_to_s03_couplers_ARCACHE;
  wire [3:0]s03_couplers_to_s03_couplers_ARID;
  wire [7:0]s03_couplers_to_s03_couplers_ARLEN;
  wire [0:0]s03_couplers_to_s03_couplers_ARLOCK;
  wire [2:0]s03_couplers_to_s03_couplers_ARPROT;
  wire [3:0]s03_couplers_to_s03_couplers_ARQOS;
  wire s03_couplers_to_s03_couplers_ARREADY;
  wire [2:0]s03_couplers_to_s03_couplers_ARSIZE;
  wire [0:0]s03_couplers_to_s03_couplers_ARUSER;
  wire s03_couplers_to_s03_couplers_ARVALID;
  wire [39:0]s03_couplers_to_s03_couplers_AWADDR;
  wire [1:0]s03_couplers_to_s03_couplers_AWBURST;
  wire [3:0]s03_couplers_to_s03_couplers_AWCACHE;
  wire [3:0]s03_couplers_to_s03_couplers_AWID;
  wire [7:0]s03_couplers_to_s03_couplers_AWLEN;
  wire [0:0]s03_couplers_to_s03_couplers_AWLOCK;
  wire [2:0]s03_couplers_to_s03_couplers_AWPROT;
  wire [3:0]s03_couplers_to_s03_couplers_AWQOS;
  wire s03_couplers_to_s03_couplers_AWREADY;
  wire [2:0]s03_couplers_to_s03_couplers_AWSIZE;
  wire [0:0]s03_couplers_to_s03_couplers_AWUSER;
  wire s03_couplers_to_s03_couplers_AWVALID;
  wire [5:0]s03_couplers_to_s03_couplers_BID;
  wire s03_couplers_to_s03_couplers_BREADY;
  wire [1:0]s03_couplers_to_s03_couplers_BRESP;
  wire s03_couplers_to_s03_couplers_BVALID;
  wire [63:0]s03_couplers_to_s03_couplers_RDATA;
  wire [5:0]s03_couplers_to_s03_couplers_RID;
  wire s03_couplers_to_s03_couplers_RLAST;
  wire s03_couplers_to_s03_couplers_RREADY;
  wire [1:0]s03_couplers_to_s03_couplers_RRESP;
  wire s03_couplers_to_s03_couplers_RVALID;
  wire [63:0]s03_couplers_to_s03_couplers_WDATA;
  wire s03_couplers_to_s03_couplers_WLAST;
  wire s03_couplers_to_s03_couplers_WREADY;
  wire [7:0]s03_couplers_to_s03_couplers_WSTRB;
  wire s03_couplers_to_s03_couplers_WVALID;

  assign M_AXI_araddr[39:0] = s03_couplers_to_s03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s03_couplers_to_s03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s03_couplers_to_s03_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = s03_couplers_to_s03_couplers_ARID;
  assign M_AXI_arlen[7:0] = s03_couplers_to_s03_couplers_ARLEN;
  assign M_AXI_arlock[0] = s03_couplers_to_s03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s03_couplers_to_s03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s03_couplers_to_s03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s03_couplers_to_s03_couplers_ARSIZE;
  assign M_AXI_aruser[0] = s03_couplers_to_s03_couplers_ARUSER;
  assign M_AXI_arvalid = s03_couplers_to_s03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s03_couplers_to_s03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s03_couplers_to_s03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s03_couplers_to_s03_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = s03_couplers_to_s03_couplers_AWID;
  assign M_AXI_awlen[7:0] = s03_couplers_to_s03_couplers_AWLEN;
  assign M_AXI_awlock[0] = s03_couplers_to_s03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s03_couplers_to_s03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s03_couplers_to_s03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s03_couplers_to_s03_couplers_AWSIZE;
  assign M_AXI_awuser[0] = s03_couplers_to_s03_couplers_AWUSER;
  assign M_AXI_awvalid = s03_couplers_to_s03_couplers_AWVALID;
  assign M_AXI_bready = s03_couplers_to_s03_couplers_BREADY;
  assign M_AXI_rready = s03_couplers_to_s03_couplers_RREADY;
  assign M_AXI_wdata[63:0] = s03_couplers_to_s03_couplers_WDATA;
  assign M_AXI_wlast = s03_couplers_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s03_couplers_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid = s03_couplers_to_s03_couplers_WVALID;
  assign S_AXI_arready = s03_couplers_to_s03_couplers_ARREADY;
  assign S_AXI_awready = s03_couplers_to_s03_couplers_AWREADY;
  assign S_AXI_bid[5:0] = s03_couplers_to_s03_couplers_BID;
  assign S_AXI_bresp[1:0] = s03_couplers_to_s03_couplers_BRESP;
  assign S_AXI_bvalid = s03_couplers_to_s03_couplers_BVALID;
  assign S_AXI_rdata[63:0] = s03_couplers_to_s03_couplers_RDATA;
  assign S_AXI_rid[5:0] = s03_couplers_to_s03_couplers_RID;
  assign S_AXI_rlast = s03_couplers_to_s03_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s03_couplers_to_s03_couplers_RRESP;
  assign S_AXI_rvalid = s03_couplers_to_s03_couplers_RVALID;
  assign S_AXI_wready = s03_couplers_to_s03_couplers_WREADY;
  assign s03_couplers_to_s03_couplers_ARADDR = S_AXI_araddr[39:0];
  assign s03_couplers_to_s03_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s03_couplers_to_s03_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s03_couplers_to_s03_couplers_ARID = S_AXI_arid[3:0];
  assign s03_couplers_to_s03_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s03_couplers_to_s03_couplers_ARLOCK = S_AXI_arlock[0];
  assign s03_couplers_to_s03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s03_couplers_to_s03_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s03_couplers_to_s03_couplers_ARREADY = M_AXI_arready;
  assign s03_couplers_to_s03_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s03_couplers_to_s03_couplers_ARUSER = S_AXI_aruser[0];
  assign s03_couplers_to_s03_couplers_ARVALID = S_AXI_arvalid;
  assign s03_couplers_to_s03_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign s03_couplers_to_s03_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s03_couplers_to_s03_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s03_couplers_to_s03_couplers_AWID = S_AXI_awid[3:0];
  assign s03_couplers_to_s03_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_s03_couplers_AWLOCK = S_AXI_awlock[0];
  assign s03_couplers_to_s03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_s03_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s03_couplers_to_s03_couplers_AWREADY = M_AXI_awready;
  assign s03_couplers_to_s03_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s03_couplers_to_s03_couplers_AWUSER = S_AXI_awuser[0];
  assign s03_couplers_to_s03_couplers_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_s03_couplers_BID = M_AXI_bid[5:0];
  assign s03_couplers_to_s03_couplers_BREADY = S_AXI_bready;
  assign s03_couplers_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign s03_couplers_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign s03_couplers_to_s03_couplers_RDATA = M_AXI_rdata[63:0];
  assign s03_couplers_to_s03_couplers_RID = M_AXI_rid[5:0];
  assign s03_couplers_to_s03_couplers_RLAST = M_AXI_rlast;
  assign s03_couplers_to_s03_couplers_RREADY = S_AXI_rready;
  assign s03_couplers_to_s03_couplers_RRESP = M_AXI_rresp[1:0];
  assign s03_couplers_to_s03_couplers_RVALID = M_AXI_rvalid;
  assign s03_couplers_to_s03_couplers_WDATA = S_AXI_wdata[63:0];
  assign s03_couplers_to_s03_couplers_WLAST = S_AXI_wlast;
  assign s03_couplers_to_s03_couplers_WREADY = M_AXI_wready;
  assign s03_couplers_to_s03_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign s03_couplers_to_s03_couplers_WVALID = S_AXI_wvalid;
endmodule

(* CORE_GENERATION_INFO = "zynq_soc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zynq_soc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=57,numReposBlks=32,numNonXlnxBlks=0,numHierBlks=25,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "zynq_soc.hwdef" *) 
module zynq_soc
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
    AXI_MEM_awsize,
    AXI_MEM_awuser,
    AXI_MEM_awvalid,
    AXI_MEM_bid,
    AXI_MEM_bready,
    AXI_MEM_bresp,
    AXI_MEM_bvalid,
    AXI_MEM_rdata,
    AXI_MEM_rid,
    AXI_MEM_rlast,
    AXI_MEM_rready,
    AXI_MEM_rresp,
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
    AXI_MMIO_awvalid,
    AXI_MMIO_bid,
    AXI_MMIO_bready,
    AXI_MMIO_bresp,
    AXI_MMIO_bvalid,
    AXI_MMIO_rdata,
    AXI_MMIO_rid,
    AXI_MMIO_rlast,
    AXI_MMIO_rready,
    AXI_MMIO_rresp,
    AXI_MMIO_rvalid,
    AXI_MMIO_wdata,
    AXI_MMIO_wlast,
    AXI_MMIO_wready,
    AXI_MMIO_wstrb,
    AXI_MMIO_wvalid,
    clk27,
    clk40,
    coreclk,
    corerstn,
    intrs,
    uncoreclk,
    uncorerstn,
    vga_hsync,
    vga_rgb,
    vga_valid,
    vga_vsync);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_DMA, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, DATA_WIDTH 64, FREQ_HZ 99999000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 8, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [39:0]AXI_DMA_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARBURST" *) output [1:0]AXI_DMA_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARCACHE" *) output [3:0]AXI_DMA_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARID" *) output [1:0]AXI_DMA_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARLEN" *) output [7:0]AXI_DMA_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARLOCK" *) output [0:0]AXI_DMA_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARPROT" *) output [2:0]AXI_DMA_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARQOS" *) output [3:0]AXI_DMA_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARREADY" *) input [0:0]AXI_DMA_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARREGION" *) output [3:0]AXI_DMA_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARSIZE" *) output [2:0]AXI_DMA_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA ARVALID" *) output [0:0]AXI_DMA_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWADDR" *) output [39:0]AXI_DMA_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWBURST" *) output [1:0]AXI_DMA_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWCACHE" *) output [3:0]AXI_DMA_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWID" *) output [1:0]AXI_DMA_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWLEN" *) output [7:0]AXI_DMA_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWLOCK" *) output [0:0]AXI_DMA_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWPROT" *) output [2:0]AXI_DMA_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWQOS" *) output [3:0]AXI_DMA_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWREADY" *) input [0:0]AXI_DMA_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWREGION" *) output [3:0]AXI_DMA_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWSIZE" *) output [2:0]AXI_DMA_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA AWVALID" *) output [0:0]AXI_DMA_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA BID" *) input [1:0]AXI_DMA_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA BREADY" *) output [0:0]AXI_DMA_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA BRESP" *) input [1:0]AXI_DMA_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA BVALID" *) input [0:0]AXI_DMA_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RDATA" *) input [63:0]AXI_DMA_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RID" *) input [1:0]AXI_DMA_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RLAST" *) input [0:0]AXI_DMA_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RREADY" *) output [0:0]AXI_DMA_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RRESP" *) input [1:0]AXI_DMA_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA RVALID" *) input [0:0]AXI_DMA_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA WDATA" *) output [63:0]AXI_DMA_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA WLAST" *) output [0:0]AXI_DMA_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA WREADY" *) input [0:0]AXI_DMA_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA WSTRB" *) output [7:0]AXI_DMA_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_DMA WVALID" *) output [0:0]AXI_DMA_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_MEM, ADDR_WIDTH 40, ARUSER_WIDTH 1, AWUSER_WIDTH 1, BUSER_WIDTH 0, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, DATA_WIDTH 64, FREQ_HZ 99999000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [39:0]AXI_MEM_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARBURST" *) input [1:0]AXI_MEM_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARCACHE" *) input [3:0]AXI_MEM_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARID" *) input [3:0]AXI_MEM_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARLEN" *) input [7:0]AXI_MEM_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARLOCK" *) input [0:0]AXI_MEM_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARPROT" *) input [2:0]AXI_MEM_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARQOS" *) input [3:0]AXI_MEM_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARREADY" *) output AXI_MEM_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARSIZE" *) input [2:0]AXI_MEM_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARUSER" *) input [0:0]AXI_MEM_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM ARVALID" *) input AXI_MEM_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWADDR" *) input [39:0]AXI_MEM_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWBURST" *) input [1:0]AXI_MEM_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWCACHE" *) input [3:0]AXI_MEM_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWID" *) input [3:0]AXI_MEM_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWLEN" *) input [7:0]AXI_MEM_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWLOCK" *) input [0:0]AXI_MEM_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWPROT" *) input [2:0]AXI_MEM_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWQOS" *) input [3:0]AXI_MEM_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWREADY" *) output AXI_MEM_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWSIZE" *) input [2:0]AXI_MEM_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWUSER" *) input [0:0]AXI_MEM_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM AWVALID" *) input AXI_MEM_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM BID" *) output [3:0]AXI_MEM_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM BREADY" *) input AXI_MEM_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM BRESP" *) output [1:0]AXI_MEM_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM BVALID" *) output AXI_MEM_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RDATA" *) output [63:0]AXI_MEM_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RID" *) output [3:0]AXI_MEM_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RLAST" *) output AXI_MEM_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RREADY" *) input AXI_MEM_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RRESP" *) output [1:0]AXI_MEM_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM RVALID" *) output AXI_MEM_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM WDATA" *) input [63:0]AXI_MEM_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM WLAST" *) input AXI_MEM_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM WREADY" *) output AXI_MEM_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM WSTRB" *) input [7:0]AXI_MEM_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MEM WVALID" *) input AXI_MEM_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_MMIO, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, DATA_WIDTH 64, FREQ_HZ 99999000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 8, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [39:0]AXI_MMIO_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARBURST" *) input [1:0]AXI_MMIO_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARCACHE" *) input [3:0]AXI_MMIO_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARID" *) input [7:0]AXI_MMIO_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARLEN" *) input [7:0]AXI_MMIO_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARLOCK" *) input [0:0]AXI_MMIO_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARPROT" *) input [2:0]AXI_MMIO_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARQOS" *) input [3:0]AXI_MMIO_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARREADY" *) output AXI_MMIO_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARREGION" *) input [3:0]AXI_MMIO_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARSIZE" *) input [2:0]AXI_MMIO_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO ARVALID" *) input AXI_MMIO_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWADDR" *) input [39:0]AXI_MMIO_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWBURST" *) input [1:0]AXI_MMIO_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWCACHE" *) input [3:0]AXI_MMIO_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWID" *) input [7:0]AXI_MMIO_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWLEN" *) input [7:0]AXI_MMIO_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWLOCK" *) input [0:0]AXI_MMIO_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWPROT" *) input [2:0]AXI_MMIO_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWQOS" *) input [3:0]AXI_MMIO_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWREADY" *) output AXI_MMIO_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWREGION" *) input [3:0]AXI_MMIO_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWSIZE" *) input [2:0]AXI_MMIO_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO AWVALID" *) input AXI_MMIO_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO BID" *) output [7:0]AXI_MMIO_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO BREADY" *) input AXI_MMIO_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO BRESP" *) output [1:0]AXI_MMIO_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO BVALID" *) output AXI_MMIO_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RDATA" *) output [63:0]AXI_MMIO_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RID" *) output [7:0]AXI_MMIO_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RLAST" *) output AXI_MMIO_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RREADY" *) input AXI_MMIO_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RRESP" *) output [1:0]AXI_MMIO_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO RVALID" *) output AXI_MMIO_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO WDATA" *) input [63:0]AXI_MMIO_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO WLAST" *) input AXI_MMIO_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO WREADY" *) output AXI_MMIO_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO WSTRB" *) input [7:0]AXI_MMIO_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_MMIO WVALID" *) input AXI_MMIO_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK27 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK27, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, FREQ_HZ 27272454, INSERT_VIP 0, PHASE 0.0" *) output clk27;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK40 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK40, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, FREQ_HZ 39999600, INSERT_VIP 0, PHASE 0.0" *) output clk40;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CORECLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CORECLK, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, FREQ_HZ 149998500, INSERT_VIP 0, PHASE 0.0" *) output coreclk;
  output [0:0]corerstn;
  output [4:0]intrs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.UNCORECLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.UNCORECLK, ASSOCIATED_BUSIF AXI_MEM:AXI_MMIO:AXI_DMA, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, FREQ_HZ 99999000, INSERT_VIP 0, PHASE 0.0" *) output uncoreclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.UNCORERSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.UNCORERSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]uncorerstn;
  output vga_hsync;
  output [23:0]vga_rgb;
  output vga_valid;
  output vga_vsync;

  wire [39:0]S_AXILITE_MMIO_1_ARADDR;
  wire [1:0]S_AXILITE_MMIO_1_ARBURST;
  wire [3:0]S_AXILITE_MMIO_1_ARCACHE;
  wire [7:0]S_AXILITE_MMIO_1_ARID;
  wire [7:0]S_AXILITE_MMIO_1_ARLEN;
  wire [0:0]S_AXILITE_MMIO_1_ARLOCK;
  wire [2:0]S_AXILITE_MMIO_1_ARPROT;
  wire [3:0]S_AXILITE_MMIO_1_ARQOS;
  wire S_AXILITE_MMIO_1_ARREADY;
  wire [3:0]S_AXILITE_MMIO_1_ARREGION;
  wire [2:0]S_AXILITE_MMIO_1_ARSIZE;
  wire S_AXILITE_MMIO_1_ARVALID;
  wire [39:0]S_AXILITE_MMIO_1_AWADDR;
  wire [1:0]S_AXILITE_MMIO_1_AWBURST;
  wire [3:0]S_AXILITE_MMIO_1_AWCACHE;
  wire [7:0]S_AXILITE_MMIO_1_AWID;
  wire [7:0]S_AXILITE_MMIO_1_AWLEN;
  wire [0:0]S_AXILITE_MMIO_1_AWLOCK;
  wire [2:0]S_AXILITE_MMIO_1_AWPROT;
  wire [3:0]S_AXILITE_MMIO_1_AWQOS;
  wire S_AXILITE_MMIO_1_AWREADY;
  wire [3:0]S_AXILITE_MMIO_1_AWREGION;
  wire [2:0]S_AXILITE_MMIO_1_AWSIZE;
  wire S_AXILITE_MMIO_1_AWVALID;
  wire [7:0]S_AXILITE_MMIO_1_BID;
  wire S_AXILITE_MMIO_1_BREADY;
  wire [1:0]S_AXILITE_MMIO_1_BRESP;
  wire S_AXILITE_MMIO_1_BVALID;
  wire [63:0]S_AXILITE_MMIO_1_RDATA;
  wire [7:0]S_AXILITE_MMIO_1_RID;
  wire S_AXILITE_MMIO_1_RLAST;
  wire S_AXILITE_MMIO_1_RREADY;
  wire [1:0]S_AXILITE_MMIO_1_RRESP;
  wire S_AXILITE_MMIO_1_RVALID;
  wire [63:0]S_AXILITE_MMIO_1_WDATA;
  wire S_AXILITE_MMIO_1_WLAST;
  wire S_AXILITE_MMIO_1_WREADY;
  wire [7:0]S_AXILITE_MMIO_1_WSTRB;
  wire S_AXILITE_MMIO_1_WVALID;
  wire [31:0]S_AXIS_S2MM_1_TDATA;
  wire [3:0]S_AXIS_S2MM_1_TKEEP;
  wire S_AXIS_S2MM_1_TLAST;
  wire S_AXIS_S2MM_1_TREADY;
  wire S_AXIS_S2MM_1_TVALID;
  wire [39:0]S_AXI_MEM_1_ARADDR;
  wire [1:0]S_AXI_MEM_1_ARBURST;
  wire [3:0]S_AXI_MEM_1_ARCACHE;
  wire [3:0]S_AXI_MEM_1_ARID;
  wire [7:0]S_AXI_MEM_1_ARLEN;
  wire [0:0]S_AXI_MEM_1_ARLOCK;
  wire [2:0]S_AXI_MEM_1_ARPROT;
  wire [3:0]S_AXI_MEM_1_ARQOS;
  wire S_AXI_MEM_1_ARREADY;
  wire [2:0]S_AXI_MEM_1_ARSIZE;
  wire [0:0]S_AXI_MEM_1_ARUSER;
  wire S_AXI_MEM_1_ARVALID;
  wire [39:0]S_AXI_MEM_1_AWADDR;
  wire [1:0]S_AXI_MEM_1_AWBURST;
  wire [3:0]S_AXI_MEM_1_AWCACHE;
  wire [3:0]S_AXI_MEM_1_AWID;
  wire [7:0]S_AXI_MEM_1_AWLEN;
  wire [0:0]S_AXI_MEM_1_AWLOCK;
  wire [2:0]S_AXI_MEM_1_AWPROT;
  wire [3:0]S_AXI_MEM_1_AWQOS;
  wire S_AXI_MEM_1_AWREADY;
  wire [2:0]S_AXI_MEM_1_AWSIZE;
  wire [0:0]S_AXI_MEM_1_AWUSER;
  wire S_AXI_MEM_1_AWVALID;
  wire [3:0]S_AXI_MEM_1_BID;
  wire S_AXI_MEM_1_BREADY;
  wire [1:0]S_AXI_MEM_1_BRESP;
  wire S_AXI_MEM_1_BVALID;
  wire [63:0]S_AXI_MEM_1_RDATA;
  wire [3:0]S_AXI_MEM_1_RID;
  wire S_AXI_MEM_1_RLAST;
  wire S_AXI_MEM_1_RREADY;
  wire [1:0]S_AXI_MEM_1_RRESP;
  wire S_AXI_MEM_1_RVALID;
  wire [63:0]S_AXI_MEM_1_WDATA;
  wire S_AXI_MEM_1_WLAST;
  wire S_AXI_MEM_1_WREADY;
  wire [7:0]S_AXI_MEM_1_WSTRB;
  wire S_AXI_MEM_1_WVALID;
  wire [0:0]axi_gpio_0_gpio_io_o;
  wire [39:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_ARCACHE;
  wire [1:0]axi_interconnect_1_M00_AXI_ARID;
  wire [7:0]axi_interconnect_1_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_ARQOS;
  wire [0:0]axi_interconnect_1_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_1_M00_AXI_ARREGION;
  wire [2:0]axi_interconnect_1_M00_AXI_ARSIZE;
  wire [0:0]axi_interconnect_1_M00_AXI_ARVALID;
  wire [39:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_AWCACHE;
  wire [1:0]axi_interconnect_1_M00_AXI_AWID;
  wire [7:0]axi_interconnect_1_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_AWQOS;
  wire [0:0]axi_interconnect_1_M00_AXI_AWREADY;
  wire [3:0]axi_interconnect_1_M00_AXI_AWREGION;
  wire [2:0]axi_interconnect_1_M00_AXI_AWSIZE;
  wire [0:0]axi_interconnect_1_M00_AXI_AWVALID;
  wire [1:0]axi_interconnect_1_M00_AXI_BID;
  wire [0:0]axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire [0:0]axi_interconnect_1_M00_AXI_BVALID;
  wire [63:0]axi_interconnect_1_M00_AXI_RDATA;
  wire [1:0]axi_interconnect_1_M00_AXI_RID;
  wire [0:0]axi_interconnect_1_M00_AXI_RLAST;
  wire [0:0]axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire [0:0]axi_interconnect_1_M00_AXI_RVALID;
  wire [63:0]axi_interconnect_1_M00_AXI_WDATA;
  wire [0:0]axi_interconnect_1_M00_AXI_WLAST;
  wire [0:0]axi_interconnect_1_M00_AXI_WREADY;
  wire [7:0]axi_interconnect_1_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_1_M00_AXI_WVALID;
  wire clk_wiz_0_clk_out1;
  wire [39:0]hier_arm_peripheral_M00_AXI1_ARADDR;
  wire [1:0]hier_arm_peripheral_M00_AXI1_ARBURST;
  wire [3:0]hier_arm_peripheral_M00_AXI1_ARCACHE;
  wire [5:0]hier_arm_peripheral_M00_AXI1_ARID;
  wire [7:0]hier_arm_peripheral_M00_AXI1_ARLEN;
  wire hier_arm_peripheral_M00_AXI1_ARLOCK;
  wire [2:0]hier_arm_peripheral_M00_AXI1_ARPROT;
  wire [3:0]hier_arm_peripheral_M00_AXI1_ARQOS;
  wire hier_arm_peripheral_M00_AXI1_ARREADY;
  wire [2:0]hier_arm_peripheral_M00_AXI1_ARSIZE;
  wire hier_arm_peripheral_M00_AXI1_ARUSER;
  wire hier_arm_peripheral_M00_AXI1_ARVALID;
  wire [39:0]hier_arm_peripheral_M00_AXI1_AWADDR;
  wire [1:0]hier_arm_peripheral_M00_AXI1_AWBURST;
  wire [3:0]hier_arm_peripheral_M00_AXI1_AWCACHE;
  wire [5:0]hier_arm_peripheral_M00_AXI1_AWID;
  wire [7:0]hier_arm_peripheral_M00_AXI1_AWLEN;
  wire hier_arm_peripheral_M00_AXI1_AWLOCK;
  wire [2:0]hier_arm_peripheral_M00_AXI1_AWPROT;
  wire [3:0]hier_arm_peripheral_M00_AXI1_AWQOS;
  wire hier_arm_peripheral_M00_AXI1_AWREADY;
  wire [2:0]hier_arm_peripheral_M00_AXI1_AWSIZE;
  wire hier_arm_peripheral_M00_AXI1_AWUSER;
  wire hier_arm_peripheral_M00_AXI1_AWVALID;
  wire [5:0]hier_arm_peripheral_M00_AXI1_BID;
  wire hier_arm_peripheral_M00_AXI1_BREADY;
  wire [1:0]hier_arm_peripheral_M00_AXI1_BRESP;
  wire hier_arm_peripheral_M00_AXI1_BVALID;
  wire [63:0]hier_arm_peripheral_M00_AXI1_RDATA;
  wire [5:0]hier_arm_peripheral_M00_AXI1_RID;
  wire hier_arm_peripheral_M00_AXI1_RLAST;
  wire hier_arm_peripheral_M00_AXI1_RREADY;
  wire [1:0]hier_arm_peripheral_M00_AXI1_RRESP;
  wire hier_arm_peripheral_M00_AXI1_RVALID;
  wire [63:0]hier_arm_peripheral_M00_AXI1_WDATA;
  wire hier_arm_peripheral_M00_AXI1_WLAST;
  wire hier_arm_peripheral_M00_AXI1_WREADY;
  wire [7:0]hier_arm_peripheral_M00_AXI1_WSTRB;
  wire hier_arm_peripheral_M00_AXI1_WVALID;
  wire [31:0]hier_arm_peripheral_M_AXIS_MM2S_TDATA;
  wire [3:0]hier_arm_peripheral_M_AXIS_MM2S_TKEEP;
  wire hier_arm_peripheral_M_AXIS_MM2S_TLAST;
  wire hier_arm_peripheral_M_AXIS_MM2S_TREADY;
  wire hier_arm_peripheral_M_AXIS_MM2S_TVALID;
  wire hier_arm_peripheral_interrupt;
  wire hier_clkrst_clk27;
  wire hier_clkrst_clk40;
  wire hier_clkrst_coreclk;
  wire [0:0]hier_clkrst_interconnect_aresetn1;
  wire hier_dma_mm2s_introut;
  wire hier_dma_s2mm_introut;
  wire hier_rvcore_peripheral_io_vga_vsync;
  wire [4:0]hier_rvcore_peripheral_rvcore_intrs;
  wire hier_rvcore_peripheral_vga_hsync;
  wire [23:0]hier_rvcore_peripheral_vga_rgb;
  wire hier_rvcore_peripheral_vga_valid;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [0:0]reset_1;
  wire [0:0]rvcore_uncorerst_interconnect_aresetn;
  wire rx_1;
  wire rx_2;
  wire [2:0]xlconcat_1_dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk1;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign AXI_DMA_araddr[39:0] = axi_interconnect_1_M00_AXI_ARADDR;
  assign AXI_DMA_arburst[1:0] = axi_interconnect_1_M00_AXI_ARBURST;
  assign AXI_DMA_arcache[3:0] = axi_interconnect_1_M00_AXI_ARCACHE;
  assign AXI_DMA_arid[1:0] = axi_interconnect_1_M00_AXI_ARID;
  assign AXI_DMA_arlen[7:0] = axi_interconnect_1_M00_AXI_ARLEN;
  assign AXI_DMA_arlock[0] = axi_interconnect_1_M00_AXI_ARLOCK;
  assign AXI_DMA_arprot[2:0] = axi_interconnect_1_M00_AXI_ARPROT;
  assign AXI_DMA_arqos[3:0] = axi_interconnect_1_M00_AXI_ARQOS;
  assign AXI_DMA_arregion[3:0] = axi_interconnect_1_M00_AXI_ARREGION;
  assign AXI_DMA_arsize[2:0] = axi_interconnect_1_M00_AXI_ARSIZE;
  assign AXI_DMA_arvalid[0] = axi_interconnect_1_M00_AXI_ARVALID;
  assign AXI_DMA_awaddr[39:0] = axi_interconnect_1_M00_AXI_AWADDR;
  assign AXI_DMA_awburst[1:0] = axi_interconnect_1_M00_AXI_AWBURST;
  assign AXI_DMA_awcache[3:0] = axi_interconnect_1_M00_AXI_AWCACHE;
  assign AXI_DMA_awid[1:0] = axi_interconnect_1_M00_AXI_AWID;
  assign AXI_DMA_awlen[7:0] = axi_interconnect_1_M00_AXI_AWLEN;
  assign AXI_DMA_awlock[0] = axi_interconnect_1_M00_AXI_AWLOCK;
  assign AXI_DMA_awprot[2:0] = axi_interconnect_1_M00_AXI_AWPROT;
  assign AXI_DMA_awqos[3:0] = axi_interconnect_1_M00_AXI_AWQOS;
  assign AXI_DMA_awregion[3:0] = axi_interconnect_1_M00_AXI_AWREGION;
  assign AXI_DMA_awsize[2:0] = axi_interconnect_1_M00_AXI_AWSIZE;
  assign AXI_DMA_awvalid[0] = axi_interconnect_1_M00_AXI_AWVALID;
  assign AXI_DMA_bready[0] = axi_interconnect_1_M00_AXI_BREADY;
  assign AXI_DMA_rready[0] = axi_interconnect_1_M00_AXI_RREADY;
  assign AXI_DMA_wdata[63:0] = axi_interconnect_1_M00_AXI_WDATA;
  assign AXI_DMA_wlast[0] = axi_interconnect_1_M00_AXI_WLAST;
  assign AXI_DMA_wstrb[7:0] = axi_interconnect_1_M00_AXI_WSTRB;
  assign AXI_DMA_wvalid[0] = axi_interconnect_1_M00_AXI_WVALID;
  assign AXI_MEM_arready = S_AXI_MEM_1_ARREADY;
  assign AXI_MEM_awready = S_AXI_MEM_1_AWREADY;
  assign AXI_MEM_bid[3:0] = S_AXI_MEM_1_BID;
  assign AXI_MEM_bresp[1:0] = S_AXI_MEM_1_BRESP;
  assign AXI_MEM_bvalid = S_AXI_MEM_1_BVALID;
  assign AXI_MEM_rdata[63:0] = S_AXI_MEM_1_RDATA;
  assign AXI_MEM_rid[3:0] = S_AXI_MEM_1_RID;
  assign AXI_MEM_rlast = S_AXI_MEM_1_RLAST;
  assign AXI_MEM_rresp[1:0] = S_AXI_MEM_1_RRESP;
  assign AXI_MEM_rvalid = S_AXI_MEM_1_RVALID;
  assign AXI_MEM_wready = S_AXI_MEM_1_WREADY;
  assign AXI_MMIO_arready = S_AXILITE_MMIO_1_ARREADY;
  assign AXI_MMIO_awready = S_AXILITE_MMIO_1_AWREADY;
  assign AXI_MMIO_bid[7:0] = S_AXILITE_MMIO_1_BID;
  assign AXI_MMIO_bresp[1:0] = S_AXILITE_MMIO_1_BRESP;
  assign AXI_MMIO_bvalid = S_AXILITE_MMIO_1_BVALID;
  assign AXI_MMIO_rdata[63:0] = S_AXILITE_MMIO_1_RDATA;
  assign AXI_MMIO_rid[7:0] = S_AXILITE_MMIO_1_RID;
  assign AXI_MMIO_rlast = S_AXILITE_MMIO_1_RLAST;
  assign AXI_MMIO_rresp[1:0] = S_AXILITE_MMIO_1_RRESP;
  assign AXI_MMIO_rvalid = S_AXILITE_MMIO_1_RVALID;
  assign AXI_MMIO_wready = S_AXILITE_MMIO_1_WREADY;
  assign S_AXILITE_MMIO_1_ARADDR = AXI_MMIO_araddr[39:0];
  assign S_AXILITE_MMIO_1_ARBURST = AXI_MMIO_arburst[1:0];
  assign S_AXILITE_MMIO_1_ARCACHE = AXI_MMIO_arcache[3:0];
  assign S_AXILITE_MMIO_1_ARID = AXI_MMIO_arid[7:0];
  assign S_AXILITE_MMIO_1_ARLEN = AXI_MMIO_arlen[7:0];
  assign S_AXILITE_MMIO_1_ARLOCK = AXI_MMIO_arlock[0];
  assign S_AXILITE_MMIO_1_ARPROT = AXI_MMIO_arprot[2:0];
  assign S_AXILITE_MMIO_1_ARQOS = AXI_MMIO_arqos[3:0];
  assign S_AXILITE_MMIO_1_ARREGION = AXI_MMIO_arregion[3:0];
  assign S_AXILITE_MMIO_1_ARSIZE = AXI_MMIO_arsize[2:0];
  assign S_AXILITE_MMIO_1_ARVALID = AXI_MMIO_arvalid;
  assign S_AXILITE_MMIO_1_AWADDR = AXI_MMIO_awaddr[39:0];
  assign S_AXILITE_MMIO_1_AWBURST = AXI_MMIO_awburst[1:0];
  assign S_AXILITE_MMIO_1_AWCACHE = AXI_MMIO_awcache[3:0];
  assign S_AXILITE_MMIO_1_AWID = AXI_MMIO_awid[7:0];
  assign S_AXILITE_MMIO_1_AWLEN = AXI_MMIO_awlen[7:0];
  assign S_AXILITE_MMIO_1_AWLOCK = AXI_MMIO_awlock[0];
  assign S_AXILITE_MMIO_1_AWPROT = AXI_MMIO_awprot[2:0];
  assign S_AXILITE_MMIO_1_AWQOS = AXI_MMIO_awqos[3:0];
  assign S_AXILITE_MMIO_1_AWREGION = AXI_MMIO_awregion[3:0];
  assign S_AXILITE_MMIO_1_AWSIZE = AXI_MMIO_awsize[2:0];
  assign S_AXILITE_MMIO_1_AWVALID = AXI_MMIO_awvalid;
  assign S_AXILITE_MMIO_1_BREADY = AXI_MMIO_bready;
  assign S_AXILITE_MMIO_1_RREADY = AXI_MMIO_rready;
  assign S_AXILITE_MMIO_1_WDATA = AXI_MMIO_wdata[63:0];
  assign S_AXILITE_MMIO_1_WLAST = AXI_MMIO_wlast;
  assign S_AXILITE_MMIO_1_WSTRB = AXI_MMIO_wstrb[7:0];
  assign S_AXILITE_MMIO_1_WVALID = AXI_MMIO_wvalid;
  assign S_AXI_MEM_1_ARADDR = AXI_MEM_araddr[39:0];
  assign S_AXI_MEM_1_ARBURST = AXI_MEM_arburst[1:0];
  assign S_AXI_MEM_1_ARCACHE = AXI_MEM_arcache[3:0];
  assign S_AXI_MEM_1_ARID = AXI_MEM_arid[3:0];
  assign S_AXI_MEM_1_ARLEN = AXI_MEM_arlen[7:0];
  assign S_AXI_MEM_1_ARLOCK = AXI_MEM_arlock[0];
  assign S_AXI_MEM_1_ARPROT = AXI_MEM_arprot[2:0];
  assign S_AXI_MEM_1_ARQOS = AXI_MEM_arqos[3:0];
  assign S_AXI_MEM_1_ARSIZE = AXI_MEM_arsize[2:0];
  assign S_AXI_MEM_1_ARUSER = AXI_MEM_aruser[0];
  assign S_AXI_MEM_1_ARVALID = AXI_MEM_arvalid;
  assign S_AXI_MEM_1_AWADDR = AXI_MEM_awaddr[39:0];
  assign S_AXI_MEM_1_AWBURST = AXI_MEM_awburst[1:0];
  assign S_AXI_MEM_1_AWCACHE = AXI_MEM_awcache[3:0];
  assign S_AXI_MEM_1_AWID = AXI_MEM_awid[3:0];
  assign S_AXI_MEM_1_AWLEN = AXI_MEM_awlen[7:0];
  assign S_AXI_MEM_1_AWLOCK = AXI_MEM_awlock[0];
  assign S_AXI_MEM_1_AWPROT = AXI_MEM_awprot[2:0];
  assign S_AXI_MEM_1_AWQOS = AXI_MEM_awqos[3:0];
  assign S_AXI_MEM_1_AWSIZE = AXI_MEM_awsize[2:0];
  assign S_AXI_MEM_1_AWUSER = AXI_MEM_awuser[0];
  assign S_AXI_MEM_1_AWVALID = AXI_MEM_awvalid;
  assign S_AXI_MEM_1_BREADY = AXI_MEM_bready;
  assign S_AXI_MEM_1_RREADY = AXI_MEM_rready;
  assign S_AXI_MEM_1_WDATA = AXI_MEM_wdata[63:0];
  assign S_AXI_MEM_1_WLAST = AXI_MEM_wlast;
  assign S_AXI_MEM_1_WSTRB = AXI_MEM_wstrb[7:0];
  assign S_AXI_MEM_1_WVALID = AXI_MEM_wvalid;
  assign axi_interconnect_1_M00_AXI_ARREADY = AXI_DMA_arready[0];
  assign axi_interconnect_1_M00_AXI_AWREADY = AXI_DMA_awready[0];
  assign axi_interconnect_1_M00_AXI_BID = AXI_DMA_bid[1:0];
  assign axi_interconnect_1_M00_AXI_BRESP = AXI_DMA_bresp[1:0];
  assign axi_interconnect_1_M00_AXI_BVALID = AXI_DMA_bvalid[0];
  assign axi_interconnect_1_M00_AXI_RDATA = AXI_DMA_rdata[63:0];
  assign axi_interconnect_1_M00_AXI_RID = AXI_DMA_rid[1:0];
  assign axi_interconnect_1_M00_AXI_RLAST = AXI_DMA_rlast[0];
  assign axi_interconnect_1_M00_AXI_RRESP = AXI_DMA_rresp[1:0];
  assign axi_interconnect_1_M00_AXI_RVALID = AXI_DMA_rvalid[0];
  assign axi_interconnect_1_M00_AXI_WREADY = AXI_DMA_wready[0];
  assign clk27 = hier_clkrst_clk27;
  assign clk40 = hier_clkrst_clk40;
  assign coreclk = hier_clkrst_coreclk;
  assign corerstn[0] = axi_gpio_0_gpio_io_o;
  assign intrs[4:0] = hier_rvcore_peripheral_rvcore_intrs;
  assign uncoreclk = clk_wiz_0_clk_out1;
  assign uncorerstn[0] = proc_sys_reset_1_peripheral_aresetn;
  assign vga_hsync = hier_rvcore_peripheral_vga_hsync;
  assign vga_rgb[23:0] = hier_rvcore_peripheral_vga_rgb;
  assign vga_valid = hier_rvcore_peripheral_vga_valid;
  assign vga_vsync = hier_rvcore_peripheral_io_vga_vsync;
  hier_arm_peripheral_imp_14HN6AJ hier_arm_peripheral
       (.M00_AXI1_araddr(hier_arm_peripheral_M00_AXI1_ARADDR),
        .M00_AXI1_arburst(hier_arm_peripheral_M00_AXI1_ARBURST),
        .M00_AXI1_arcache(hier_arm_peripheral_M00_AXI1_ARCACHE),
        .M00_AXI1_arid(hier_arm_peripheral_M00_AXI1_ARID),
        .M00_AXI1_arlen(hier_arm_peripheral_M00_AXI1_ARLEN),
        .M00_AXI1_arlock(hier_arm_peripheral_M00_AXI1_ARLOCK),
        .M00_AXI1_arprot(hier_arm_peripheral_M00_AXI1_ARPROT),
        .M00_AXI1_arqos(hier_arm_peripheral_M00_AXI1_ARQOS),
        .M00_AXI1_arready(hier_arm_peripheral_M00_AXI1_ARREADY),
        .M00_AXI1_arsize(hier_arm_peripheral_M00_AXI1_ARSIZE),
        .M00_AXI1_aruser(hier_arm_peripheral_M00_AXI1_ARUSER),
        .M00_AXI1_arvalid(hier_arm_peripheral_M00_AXI1_ARVALID),
        .M00_AXI1_awaddr(hier_arm_peripheral_M00_AXI1_AWADDR),
        .M00_AXI1_awburst(hier_arm_peripheral_M00_AXI1_AWBURST),
        .M00_AXI1_awcache(hier_arm_peripheral_M00_AXI1_AWCACHE),
        .M00_AXI1_awid(hier_arm_peripheral_M00_AXI1_AWID),
        .M00_AXI1_awlen(hier_arm_peripheral_M00_AXI1_AWLEN),
        .M00_AXI1_awlock(hier_arm_peripheral_M00_AXI1_AWLOCK),
        .M00_AXI1_awprot(hier_arm_peripheral_M00_AXI1_AWPROT),
        .M00_AXI1_awqos(hier_arm_peripheral_M00_AXI1_AWQOS),
        .M00_AXI1_awready(hier_arm_peripheral_M00_AXI1_AWREADY),
        .M00_AXI1_awsize(hier_arm_peripheral_M00_AXI1_AWSIZE),
        .M00_AXI1_awuser(hier_arm_peripheral_M00_AXI1_AWUSER),
        .M00_AXI1_awvalid(hier_arm_peripheral_M00_AXI1_AWVALID),
        .M00_AXI1_bid(hier_arm_peripheral_M00_AXI1_BID),
        .M00_AXI1_bready(hier_arm_peripheral_M00_AXI1_BREADY),
        .M00_AXI1_bresp(hier_arm_peripheral_M00_AXI1_BRESP),
        .M00_AXI1_bvalid(hier_arm_peripheral_M00_AXI1_BVALID),
        .M00_AXI1_rdata(hier_arm_peripheral_M00_AXI1_RDATA),
        .M00_AXI1_rid(hier_arm_peripheral_M00_AXI1_RID),
        .M00_AXI1_rlast(hier_arm_peripheral_M00_AXI1_RLAST),
        .M00_AXI1_rready(hier_arm_peripheral_M00_AXI1_RREADY),
        .M00_AXI1_rresp(hier_arm_peripheral_M00_AXI1_RRESP),
        .M00_AXI1_rvalid(hier_arm_peripheral_M00_AXI1_RVALID),
        .M00_AXI1_wdata(hier_arm_peripheral_M00_AXI1_WDATA),
        .M00_AXI1_wlast(hier_arm_peripheral_M00_AXI1_WLAST),
        .M00_AXI1_wready(hier_arm_peripheral_M00_AXI1_WREADY),
        .M00_AXI1_wstrb(hier_arm_peripheral_M00_AXI1_WSTRB),
        .M00_AXI1_wvalid(hier_arm_peripheral_M00_AXI1_WVALID),
        .M_AXIS_MM2S_tdata(hier_arm_peripheral_M_AXIS_MM2S_TDATA),
        .M_AXIS_MM2S_tkeep(hier_arm_peripheral_M_AXIS_MM2S_TKEEP),
        .M_AXIS_MM2S_tlast(hier_arm_peripheral_M_AXIS_MM2S_TLAST),
        .M_AXIS_MM2S_tready(hier_arm_peripheral_M_AXIS_MM2S_TREADY),
        .M_AXIS_MM2S_tvalid(hier_arm_peripheral_M_AXIS_MM2S_TVALID),
        .S00_ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .S_AXIS_S2MM_tdata(S_AXIS_S2MM_1_TDATA),
        .S_AXIS_S2MM_tkeep(S_AXIS_S2MM_1_TKEEP),
        .S_AXIS_S2MM_tlast(S_AXIS_S2MM_1_TLAST),
        .S_AXIS_S2MM_tready(S_AXIS_S2MM_1_TREADY),
        .S_AXIS_S2MM_tvalid(S_AXIS_S2MM_1_TVALID),
        .S_AXI_MEM_araddr(S_AXI_MEM_1_ARADDR),
        .S_AXI_MEM_arburst(S_AXI_MEM_1_ARBURST),
        .S_AXI_MEM_arcache(S_AXI_MEM_1_ARCACHE),
        .S_AXI_MEM_arid(S_AXI_MEM_1_ARID),
        .S_AXI_MEM_arlen(S_AXI_MEM_1_ARLEN),
        .S_AXI_MEM_arlock(S_AXI_MEM_1_ARLOCK),
        .S_AXI_MEM_arprot(S_AXI_MEM_1_ARPROT),
        .S_AXI_MEM_arqos(S_AXI_MEM_1_ARQOS),
        .S_AXI_MEM_arready(S_AXI_MEM_1_ARREADY),
        .S_AXI_MEM_arsize(S_AXI_MEM_1_ARSIZE),
        .S_AXI_MEM_aruser(S_AXI_MEM_1_ARUSER),
        .S_AXI_MEM_arvalid(S_AXI_MEM_1_ARVALID),
        .S_AXI_MEM_awaddr(S_AXI_MEM_1_AWADDR),
        .S_AXI_MEM_awburst(S_AXI_MEM_1_AWBURST),
        .S_AXI_MEM_awcache(S_AXI_MEM_1_AWCACHE),
        .S_AXI_MEM_awid(S_AXI_MEM_1_AWID),
        .S_AXI_MEM_awlen(S_AXI_MEM_1_AWLEN),
        .S_AXI_MEM_awlock(S_AXI_MEM_1_AWLOCK),
        .S_AXI_MEM_awprot(S_AXI_MEM_1_AWPROT),
        .S_AXI_MEM_awqos(S_AXI_MEM_1_AWQOS),
        .S_AXI_MEM_awready(S_AXI_MEM_1_AWREADY),
        .S_AXI_MEM_awsize(S_AXI_MEM_1_AWSIZE),
        .S_AXI_MEM_awuser(S_AXI_MEM_1_AWUSER),
        .S_AXI_MEM_awvalid(S_AXI_MEM_1_AWVALID),
        .S_AXI_MEM_bid(S_AXI_MEM_1_BID),
        .S_AXI_MEM_bready(S_AXI_MEM_1_BREADY),
        .S_AXI_MEM_bresp(S_AXI_MEM_1_BRESP),
        .S_AXI_MEM_bvalid(S_AXI_MEM_1_BVALID),
        .S_AXI_MEM_rdata(S_AXI_MEM_1_RDATA),
        .S_AXI_MEM_rid(S_AXI_MEM_1_RID),
        .S_AXI_MEM_rlast(S_AXI_MEM_1_RLAST),
        .S_AXI_MEM_rready(S_AXI_MEM_1_RREADY),
        .S_AXI_MEM_rresp(S_AXI_MEM_1_RRESP),
        .S_AXI_MEM_rvalid(S_AXI_MEM_1_RVALID),
        .S_AXI_MEM_wdata(S_AXI_MEM_1_WDATA),
        .S_AXI_MEM_wlast(S_AXI_MEM_1_WLAST),
        .S_AXI_MEM_wready(S_AXI_MEM_1_WREADY),
        .S_AXI_MEM_wstrb(S_AXI_MEM_1_WSTRB),
        .S_AXI_MEM_wvalid(S_AXI_MEM_1_WVALID),
        .corerstn(axi_gpio_0_gpio_io_o),
        .interrupt(hier_arm_peripheral_interrupt),
        .mm2s_introut(hier_dma_mm2s_introut),
        .rx(rx_2),
        .s2mm_introut(hier_dma_s2mm_introut),
        .tx(rx_1),
        .uncoreclk(clk_wiz_0_clk_out1),
        .uncorerstn(proc_sys_reset_1_peripheral_aresetn));
  hier_clkrst_imp_YBF9LJ hier_clkrst
       (.clk27(hier_clkrst_clk27),
        .clk40(hier_clkrst_clk40),
        .clk_in1(zynq_ultra_ps_e_0_pl_clk1),
        .coreclk(hier_clkrst_coreclk),
        .interconnect_aresetn(rvcore_uncorerst_interconnect_aresetn),
        .interconnect_aresetn1(hier_clkrst_interconnect_aresetn1),
        .peripheral_reset(reset_1),
        .resetn(zynq_ultra_ps_e_0_pl_resetn0),
        .uncoreclk(clk_wiz_0_clk_out1),
        .uncorerstn(proc_sys_reset_1_peripheral_aresetn));
  hier_rvcore_peripheral_imp_8D23AV hier_rvcore_peripheral
       (.ARESETN(rvcore_uncorerst_interconnect_aresetn),
        .M03_ARESETN(hier_clkrst_interconnect_aresetn1),
        .M_AXIS_MM2S_tdata(S_AXIS_S2MM_1_TDATA),
        .M_AXIS_MM2S_tkeep(S_AXIS_S2MM_1_TKEEP),
        .M_AXIS_MM2S_tlast(S_AXIS_S2MM_1_TLAST),
        .M_AXIS_MM2S_tready(S_AXIS_S2MM_1_TREADY),
        .M_AXIS_MM2S_tvalid(S_AXIS_S2MM_1_TVALID),
        .M_AXI_DMA_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M_AXI_DMA_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .M_AXI_DMA_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .M_AXI_DMA_arid(axi_interconnect_1_M00_AXI_ARID),
        .M_AXI_DMA_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .M_AXI_DMA_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .M_AXI_DMA_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .M_AXI_DMA_arqos(axi_interconnect_1_M00_AXI_ARQOS),
        .M_AXI_DMA_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M_AXI_DMA_arregion(axi_interconnect_1_M00_AXI_ARREGION),
        .M_AXI_DMA_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .M_AXI_DMA_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M_AXI_DMA_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M_AXI_DMA_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .M_AXI_DMA_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .M_AXI_DMA_awid(axi_interconnect_1_M00_AXI_AWID),
        .M_AXI_DMA_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .M_AXI_DMA_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .M_AXI_DMA_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .M_AXI_DMA_awqos(axi_interconnect_1_M00_AXI_AWQOS),
        .M_AXI_DMA_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M_AXI_DMA_awregion(axi_interconnect_1_M00_AXI_AWREGION),
        .M_AXI_DMA_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .M_AXI_DMA_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M_AXI_DMA_bid(axi_interconnect_1_M00_AXI_BID),
        .M_AXI_DMA_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M_AXI_DMA_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M_AXI_DMA_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M_AXI_DMA_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M_AXI_DMA_rid(axi_interconnect_1_M00_AXI_RID),
        .M_AXI_DMA_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .M_AXI_DMA_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M_AXI_DMA_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M_AXI_DMA_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M_AXI_DMA_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M_AXI_DMA_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .M_AXI_DMA_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M_AXI_DMA_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .M_AXI_DMA_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .S_AXILITE_MMIO_araddr(S_AXILITE_MMIO_1_ARADDR),
        .S_AXILITE_MMIO_arburst(S_AXILITE_MMIO_1_ARBURST),
        .S_AXILITE_MMIO_arcache(S_AXILITE_MMIO_1_ARCACHE),
        .S_AXILITE_MMIO_arid(S_AXILITE_MMIO_1_ARID),
        .S_AXILITE_MMIO_arlen(S_AXILITE_MMIO_1_ARLEN),
        .S_AXILITE_MMIO_arlock(S_AXILITE_MMIO_1_ARLOCK),
        .S_AXILITE_MMIO_arprot(S_AXILITE_MMIO_1_ARPROT),
        .S_AXILITE_MMIO_arqos(S_AXILITE_MMIO_1_ARQOS),
        .S_AXILITE_MMIO_arready(S_AXILITE_MMIO_1_ARREADY),
        .S_AXILITE_MMIO_arregion(S_AXILITE_MMIO_1_ARREGION),
        .S_AXILITE_MMIO_arsize(S_AXILITE_MMIO_1_ARSIZE),
        .S_AXILITE_MMIO_arvalid(S_AXILITE_MMIO_1_ARVALID),
        .S_AXILITE_MMIO_awaddr(S_AXILITE_MMIO_1_AWADDR),
        .S_AXILITE_MMIO_awburst(S_AXILITE_MMIO_1_AWBURST),
        .S_AXILITE_MMIO_awcache(S_AXILITE_MMIO_1_AWCACHE),
        .S_AXILITE_MMIO_awid(S_AXILITE_MMIO_1_AWID),
        .S_AXILITE_MMIO_awlen(S_AXILITE_MMIO_1_AWLEN),
        .S_AXILITE_MMIO_awlock(S_AXILITE_MMIO_1_AWLOCK),
        .S_AXILITE_MMIO_awprot(S_AXILITE_MMIO_1_AWPROT),
        .S_AXILITE_MMIO_awqos(S_AXILITE_MMIO_1_AWQOS),
        .S_AXILITE_MMIO_awready(S_AXILITE_MMIO_1_AWREADY),
        .S_AXILITE_MMIO_awregion(S_AXILITE_MMIO_1_AWREGION),
        .S_AXILITE_MMIO_awsize(S_AXILITE_MMIO_1_AWSIZE),
        .S_AXILITE_MMIO_awvalid(S_AXILITE_MMIO_1_AWVALID),
        .S_AXILITE_MMIO_bid(S_AXILITE_MMIO_1_BID),
        .S_AXILITE_MMIO_bready(S_AXILITE_MMIO_1_BREADY),
        .S_AXILITE_MMIO_bresp(S_AXILITE_MMIO_1_BRESP),
        .S_AXILITE_MMIO_bvalid(S_AXILITE_MMIO_1_BVALID),
        .S_AXILITE_MMIO_rdata(S_AXILITE_MMIO_1_RDATA),
        .S_AXILITE_MMIO_rid(S_AXILITE_MMIO_1_RID),
        .S_AXILITE_MMIO_rlast(S_AXILITE_MMIO_1_RLAST),
        .S_AXILITE_MMIO_rready(S_AXILITE_MMIO_1_RREADY),
        .S_AXILITE_MMIO_rresp(S_AXILITE_MMIO_1_RRESP),
        .S_AXILITE_MMIO_rvalid(S_AXILITE_MMIO_1_RVALID),
        .S_AXILITE_MMIO_wdata(S_AXILITE_MMIO_1_WDATA),
        .S_AXILITE_MMIO_wlast(S_AXILITE_MMIO_1_WLAST),
        .S_AXILITE_MMIO_wready(S_AXILITE_MMIO_1_WREADY),
        .S_AXILITE_MMIO_wstrb(S_AXILITE_MMIO_1_WSTRB),
        .S_AXILITE_MMIO_wvalid(S_AXILITE_MMIO_1_WVALID),
        .S_AXIS_S2MM_tdata(hier_arm_peripheral_M_AXIS_MM2S_TDATA),
        .S_AXIS_S2MM_tkeep(hier_arm_peripheral_M_AXIS_MM2S_TKEEP),
        .S_AXIS_S2MM_tlast(hier_arm_peripheral_M_AXIS_MM2S_TLAST),
        .S_AXIS_S2MM_tready(hier_arm_peripheral_M_AXIS_MM2S_TREADY),
        .S_AXIS_S2MM_tvalid(hier_arm_peripheral_M_AXIS_MM2S_TVALID),
        .clock(hier_clkrst_clk40),
        .intrs(hier_rvcore_peripheral_rvcore_intrs),
        .io_vga_vsync(hier_rvcore_peripheral_io_vga_vsync),
        .reset(reset_1),
        .rx(rx_1),
        .tx(rx_2),
        .uncoreclk(clk_wiz_0_clk_out1),
        .uncorerstn(proc_sys_reset_1_peripheral_aresetn),
        .vga_hsync(hier_rvcore_peripheral_vga_hsync),
        .vga_rgb(hier_rvcore_peripheral_vga_rgb),
        .vga_valid(hier_rvcore_peripheral_vga_valid));
  zynq_soc_xlconcat_1_0 xlconcat_1
       (.In0(hier_dma_mm2s_introut),
        .In1(hier_dma_s2mm_introut),
        .In2(hier_arm_peripheral_interrupt),
        .dout(xlconcat_1_dout));
  zynq_soc_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(clk_wiz_0_clk_out1),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk1),
        .pl_ps_irq0(xlconcat_1_dout),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_arm_peripheral_M00_AXI1_ARADDR}),
        .saxigp2_arburst(hier_arm_peripheral_M00_AXI1_ARBURST),
        .saxigp2_arcache(hier_arm_peripheral_M00_AXI1_ARCACHE),
        .saxigp2_arid(hier_arm_peripheral_M00_AXI1_ARID),
        .saxigp2_arlen(hier_arm_peripheral_M00_AXI1_ARLEN),
        .saxigp2_arlock(hier_arm_peripheral_M00_AXI1_ARLOCK),
        .saxigp2_arprot(hier_arm_peripheral_M00_AXI1_ARPROT),
        .saxigp2_arqos(hier_arm_peripheral_M00_AXI1_ARQOS),
        .saxigp2_arready(hier_arm_peripheral_M00_AXI1_ARREADY),
        .saxigp2_arsize(hier_arm_peripheral_M00_AXI1_ARSIZE),
        .saxigp2_aruser(hier_arm_peripheral_M00_AXI1_ARUSER),
        .saxigp2_arvalid(hier_arm_peripheral_M00_AXI1_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_arm_peripheral_M00_AXI1_AWADDR}),
        .saxigp2_awburst(hier_arm_peripheral_M00_AXI1_AWBURST),
        .saxigp2_awcache(hier_arm_peripheral_M00_AXI1_AWCACHE),
        .saxigp2_awid(hier_arm_peripheral_M00_AXI1_AWID),
        .saxigp2_awlen(hier_arm_peripheral_M00_AXI1_AWLEN),
        .saxigp2_awlock(hier_arm_peripheral_M00_AXI1_AWLOCK),
        .saxigp2_awprot(hier_arm_peripheral_M00_AXI1_AWPROT),
        .saxigp2_awqos(hier_arm_peripheral_M00_AXI1_AWQOS),
        .saxigp2_awready(hier_arm_peripheral_M00_AXI1_AWREADY),
        .saxigp2_awsize(hier_arm_peripheral_M00_AXI1_AWSIZE),
        .saxigp2_awuser(hier_arm_peripheral_M00_AXI1_AWUSER),
        .saxigp2_awvalid(hier_arm_peripheral_M00_AXI1_AWVALID),
        .saxigp2_bid(hier_arm_peripheral_M00_AXI1_BID),
        .saxigp2_bready(hier_arm_peripheral_M00_AXI1_BREADY),
        .saxigp2_bresp(hier_arm_peripheral_M00_AXI1_BRESP),
        .saxigp2_bvalid(hier_arm_peripheral_M00_AXI1_BVALID),
        .saxigp2_rdata(hier_arm_peripheral_M00_AXI1_RDATA),
        .saxigp2_rid(hier_arm_peripheral_M00_AXI1_RID),
        .saxigp2_rlast(hier_arm_peripheral_M00_AXI1_RLAST),
        .saxigp2_rready(hier_arm_peripheral_M00_AXI1_RREADY),
        .saxigp2_rresp(hier_arm_peripheral_M00_AXI1_RRESP),
        .saxigp2_rvalid(hier_arm_peripheral_M00_AXI1_RVALID),
        .saxigp2_wdata(hier_arm_peripheral_M00_AXI1_WDATA),
        .saxigp2_wlast(hier_arm_peripheral_M00_AXI1_WLAST),
        .saxigp2_wready(hier_arm_peripheral_M00_AXI1_WREADY),
        .saxigp2_wstrb(hier_arm_peripheral_M00_AXI1_WSTRB),
        .saxigp2_wvalid(hier_arm_peripheral_M00_AXI1_WVALID),
        .saxihp0_fpd_aclk(clk_wiz_0_clk_out1));
endmodule

module zynq_soc_axi_interconnect_0_0
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
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
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
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
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
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awprot,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arid,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arready,
    S03_AXI_arsize,
    S03_AXI_aruser,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awid,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awuser,
    S03_AXI_awvalid,
    S03_AXI_bid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rid,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [5:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [5:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
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
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awprot;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [39:0]S03_AXI_araddr;
  input [1:0]S03_AXI_arburst;
  input [3:0]S03_AXI_arcache;
  input [3:0]S03_AXI_arid;
  input [7:0]S03_AXI_arlen;
  input [0:0]S03_AXI_arlock;
  input [2:0]S03_AXI_arprot;
  input [3:0]S03_AXI_arqos;
  output S03_AXI_arready;
  input [2:0]S03_AXI_arsize;
  input [0:0]S03_AXI_aruser;
  input S03_AXI_arvalid;
  input [39:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [3:0]S03_AXI_awid;
  input [7:0]S03_AXI_awlen;
  input [0:0]S03_AXI_awlock;
  input [2:0]S03_AXI_awprot;
  input [3:0]S03_AXI_awqos;
  output S03_AXI_awready;
  input [2:0]S03_AXI_awsize;
  input [0:0]S03_AXI_awuser;
  input S03_AXI_awvalid;
  output [3:0]S03_AXI_bid;
  input S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  output [63:0]S03_AXI_rdata;
  output [3:0]S03_AXI_rid;
  output S03_AXI_rlast;
  input S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rvalid;
  input [63:0]S03_AXI_wdata;
  input S03_AXI_wlast;
  output S03_AXI_wready;
  input [7:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;

  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [2:0]S01_AXI_1_ARPROT;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [31:0]S02_AXI_1_AWADDR;
  wire [1:0]S02_AXI_1_AWBURST;
  wire [3:0]S02_AXI_1_AWCACHE;
  wire [7:0]S02_AXI_1_AWLEN;
  wire [2:0]S02_AXI_1_AWPROT;
  wire S02_AXI_1_AWREADY;
  wire [2:0]S02_AXI_1_AWSIZE;
  wire S02_AXI_1_AWVALID;
  wire S02_AXI_1_BREADY;
  wire [1:0]S02_AXI_1_BRESP;
  wire S02_AXI_1_BVALID;
  wire [31:0]S02_AXI_1_WDATA;
  wire S02_AXI_1_WLAST;
  wire S02_AXI_1_WREADY;
  wire [3:0]S02_AXI_1_WSTRB;
  wire S02_AXI_1_WVALID;
  wire [39:0]S03_AXI_1_ARADDR;
  wire [1:0]S03_AXI_1_ARBURST;
  wire [3:0]S03_AXI_1_ARCACHE;
  wire [3:0]S03_AXI_1_ARID;
  wire [7:0]S03_AXI_1_ARLEN;
  wire [0:0]S03_AXI_1_ARLOCK;
  wire [2:0]S03_AXI_1_ARPROT;
  wire [3:0]S03_AXI_1_ARQOS;
  wire S03_AXI_1_ARREADY;
  wire [2:0]S03_AXI_1_ARSIZE;
  wire [0:0]S03_AXI_1_ARUSER;
  wire S03_AXI_1_ARVALID;
  wire [39:0]S03_AXI_1_AWADDR;
  wire [1:0]S03_AXI_1_AWBURST;
  wire [3:0]S03_AXI_1_AWCACHE;
  wire [3:0]S03_AXI_1_AWID;
  wire [7:0]S03_AXI_1_AWLEN;
  wire [0:0]S03_AXI_1_AWLOCK;
  wire [2:0]S03_AXI_1_AWPROT;
  wire [3:0]S03_AXI_1_AWQOS;
  wire S03_AXI_1_AWREADY;
  wire [2:0]S03_AXI_1_AWSIZE;
  wire [0:0]S03_AXI_1_AWUSER;
  wire S03_AXI_1_AWVALID;
  wire [3:0]S03_AXI_1_BID;
  wire S03_AXI_1_BREADY;
  wire [1:0]S03_AXI_1_BRESP;
  wire S03_AXI_1_BVALID;
  wire [63:0]S03_AXI_1_RDATA;
  wire [3:0]S03_AXI_1_RID;
  wire S03_AXI_1_RLAST;
  wire S03_AXI_1_RREADY;
  wire [1:0]S03_AXI_1_RRESP;
  wire S03_AXI_1_RVALID;
  wire [63:0]S03_AXI_1_WDATA;
  wire S03_AXI_1_WLAST;
  wire S03_AXI_1_WREADY;
  wire [7:0]S03_AXI_1_WSTRB;
  wire S03_AXI_1_WVALID;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [39:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [5:0]m00_couplers_to_axi_interconnect_0_ARID;
  wire [7:0]m00_couplers_to_axi_interconnect_0_ARLEN;
  wire m00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARQOS;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARSIZE;
  wire m00_couplers_to_axi_interconnect_0_ARUSER;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [5:0]m00_couplers_to_axi_interconnect_0_AWID;
  wire [7:0]m00_couplers_to_axi_interconnect_0_AWLEN;
  wire m00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWQOS;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWSIZE;
  wire m00_couplers_to_axi_interconnect_0_AWUSER;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire [5:0]m00_couplers_to_axi_interconnect_0_BID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire [5:0]m00_couplers_to_axi_interconnect_0_RID;
  wire m00_couplers_to_axi_interconnect_0_RLAST;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WLAST;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [7:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s00_mmu_M_AXI_ARADDR;
  wire [1:0]s00_mmu_M_AXI_ARBURST;
  wire [3:0]s00_mmu_M_AXI_ARCACHE;
  wire [7:0]s00_mmu_M_AXI_ARLEN;
  wire [0:0]s00_mmu_M_AXI_ARLOCK;
  wire [2:0]s00_mmu_M_AXI_ARPROT;
  wire [3:0]s00_mmu_M_AXI_ARQOS;
  wire s00_mmu_M_AXI_ARREADY;
  wire [2:0]s00_mmu_M_AXI_ARSIZE;
  wire s00_mmu_M_AXI_ARVALID;
  wire [31:0]s00_mmu_M_AXI_AWADDR;
  wire [1:0]s00_mmu_M_AXI_AWBURST;
  wire [3:0]s00_mmu_M_AXI_AWCACHE;
  wire [7:0]s00_mmu_M_AXI_AWLEN;
  wire [0:0]s00_mmu_M_AXI_AWLOCK;
  wire [2:0]s00_mmu_M_AXI_AWPROT;
  wire [3:0]s00_mmu_M_AXI_AWQOS;
  wire s00_mmu_M_AXI_AWREADY;
  wire [2:0]s00_mmu_M_AXI_AWSIZE;
  wire s00_mmu_M_AXI_AWVALID;
  wire s00_mmu_M_AXI_BREADY;
  wire [1:0]s00_mmu_M_AXI_BRESP;
  wire s00_mmu_M_AXI_BVALID;
  wire [31:0]s00_mmu_M_AXI_RDATA;
  wire s00_mmu_M_AXI_RLAST;
  wire s00_mmu_M_AXI_RREADY;
  wire [1:0]s00_mmu_M_AXI_RRESP;
  wire s00_mmu_M_AXI_RVALID;
  wire [31:0]s00_mmu_M_AXI_WDATA;
  wire s00_mmu_M_AXI_WLAST;
  wire s00_mmu_M_AXI_WREADY;
  wire [3:0]s00_mmu_M_AXI_WSTRB;
  wire s00_mmu_M_AXI_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_mmu_M_AXI_ARADDR;
  wire [1:0]s01_mmu_M_AXI_ARBURST;
  wire [3:0]s01_mmu_M_AXI_ARCACHE;
  wire [7:0]s01_mmu_M_AXI_ARLEN;
  wire [0:0]s01_mmu_M_AXI_ARLOCK;
  wire [2:0]s01_mmu_M_AXI_ARPROT;
  wire [3:0]s01_mmu_M_AXI_ARQOS;
  wire s01_mmu_M_AXI_ARREADY;
  wire [2:0]s01_mmu_M_AXI_ARSIZE;
  wire s01_mmu_M_AXI_ARVALID;
  wire [31:0]s01_mmu_M_AXI_RDATA;
  wire s01_mmu_M_AXI_RLAST;
  wire s01_mmu_M_AXI_RREADY;
  wire [1:0]s01_mmu_M_AXI_RRESP;
  wire s01_mmu_M_AXI_RVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [63:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [7:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]s02_mmu_M_AXI_AWADDR;
  wire [1:0]s02_mmu_M_AXI_AWBURST;
  wire [3:0]s02_mmu_M_AXI_AWCACHE;
  wire [7:0]s02_mmu_M_AXI_AWLEN;
  wire [0:0]s02_mmu_M_AXI_AWLOCK;
  wire [2:0]s02_mmu_M_AXI_AWPROT;
  wire [3:0]s02_mmu_M_AXI_AWQOS;
  wire s02_mmu_M_AXI_AWREADY;
  wire [2:0]s02_mmu_M_AXI_AWSIZE;
  wire s02_mmu_M_AXI_AWVALID;
  wire s02_mmu_M_AXI_BREADY;
  wire [1:0]s02_mmu_M_AXI_BRESP;
  wire s02_mmu_M_AXI_BVALID;
  wire [31:0]s02_mmu_M_AXI_WDATA;
  wire s02_mmu_M_AXI_WLAST;
  wire s02_mmu_M_AXI_WREADY;
  wire [3:0]s02_mmu_M_AXI_WSTRB;
  wire s02_mmu_M_AXI_WVALID;
  wire [39:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [3:0]s03_couplers_to_xbar_ARID;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [0:0]s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire [0:0]s03_couplers_to_xbar_ARUSER;
  wire s03_couplers_to_xbar_ARVALID;
  wire [39:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [3:0]s03_couplers_to_xbar_AWID;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire [0:0]s03_couplers_to_xbar_AWUSER;
  wire s03_couplers_to_xbar_AWVALID;
  wire [23:18]s03_couplers_to_xbar_BID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [255:192]s03_couplers_to_xbar_RDATA;
  wire [23:18]s03_couplers_to_xbar_RID;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [63:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [7:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [39:0]s03_mmu_M_AXI_ARADDR;
  wire [1:0]s03_mmu_M_AXI_ARBURST;
  wire [3:0]s03_mmu_M_AXI_ARCACHE;
  wire [3:0]s03_mmu_M_AXI_ARID;
  wire [7:0]s03_mmu_M_AXI_ARLEN;
  wire [0:0]s03_mmu_M_AXI_ARLOCK;
  wire [2:0]s03_mmu_M_AXI_ARPROT;
  wire [3:0]s03_mmu_M_AXI_ARQOS;
  wire s03_mmu_M_AXI_ARREADY;
  wire [2:0]s03_mmu_M_AXI_ARSIZE;
  wire [0:0]s03_mmu_M_AXI_ARUSER;
  wire s03_mmu_M_AXI_ARVALID;
  wire [39:0]s03_mmu_M_AXI_AWADDR;
  wire [1:0]s03_mmu_M_AXI_AWBURST;
  wire [3:0]s03_mmu_M_AXI_AWCACHE;
  wire [3:0]s03_mmu_M_AXI_AWID;
  wire [7:0]s03_mmu_M_AXI_AWLEN;
  wire [0:0]s03_mmu_M_AXI_AWLOCK;
  wire [2:0]s03_mmu_M_AXI_AWPROT;
  wire [3:0]s03_mmu_M_AXI_AWQOS;
  wire s03_mmu_M_AXI_AWREADY;
  wire [2:0]s03_mmu_M_AXI_AWSIZE;
  wire [0:0]s03_mmu_M_AXI_AWUSER;
  wire s03_mmu_M_AXI_AWVALID;
  wire [5:0]s03_mmu_M_AXI_BID;
  wire s03_mmu_M_AXI_BREADY;
  wire [1:0]s03_mmu_M_AXI_BRESP;
  wire s03_mmu_M_AXI_BVALID;
  wire [63:0]s03_mmu_M_AXI_RDATA;
  wire [5:0]s03_mmu_M_AXI_RID;
  wire s03_mmu_M_AXI_RLAST;
  wire s03_mmu_M_AXI_RREADY;
  wire [1:0]s03_mmu_M_AXI_RRESP;
  wire s03_mmu_M_AXI_RVALID;
  wire [63:0]s03_mmu_M_AXI_WDATA;
  wire s03_mmu_M_AXI_WLAST;
  wire s03_mmu_M_AXI_WREADY;
  wire [7:0]s03_mmu_M_AXI_WSTRB;
  wire s03_mmu_M_AXI_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [5:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARUSER;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [5:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWUSER;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [5:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [5:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [3:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [23:0]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [7:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [255:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [23:0]NLW_xbar_s_axi_rid_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [7:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_AXI_araddr[39:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arid[5:0] = m00_couplers_to_axi_interconnect_0_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock = m00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_aruser = m00_couplers_to_axi_interconnect_0_ARUSER;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awid[5:0] = m00_couplers_to_axi_interconnect_0_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock = m00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awuser = m00_couplers_to_axi_interconnect_0_AWUSER;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[31:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[31:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast;
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[31:0];
  assign S01_AXI_1_ARBURST = S01_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = S01_AXI_arcache[3:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARPROT = S01_AXI_arprot[2:0];
  assign S01_AXI_1_ARSIZE = S01_AXI_arsize[2:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid;
  assign S01_AXI_1_RREADY = S01_AXI_rready;
  assign S01_AXI_arready = S01_AXI_1_ARREADY;
  assign S01_AXI_rdata[31:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rlast = S01_AXI_1_RLAST;
  assign S01_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign S01_AXI_rvalid = S01_AXI_1_RVALID;
  assign S02_AXI_1_AWADDR = S02_AXI_awaddr[31:0];
  assign S02_AXI_1_AWBURST = S02_AXI_awburst[1:0];
  assign S02_AXI_1_AWCACHE = S02_AXI_awcache[3:0];
  assign S02_AXI_1_AWLEN = S02_AXI_awlen[7:0];
  assign S02_AXI_1_AWPROT = S02_AXI_awprot[2:0];
  assign S02_AXI_1_AWSIZE = S02_AXI_awsize[2:0];
  assign S02_AXI_1_AWVALID = S02_AXI_awvalid;
  assign S02_AXI_1_BREADY = S02_AXI_bready;
  assign S02_AXI_1_WDATA = S02_AXI_wdata[31:0];
  assign S02_AXI_1_WLAST = S02_AXI_wlast;
  assign S02_AXI_1_WSTRB = S02_AXI_wstrb[3:0];
  assign S02_AXI_1_WVALID = S02_AXI_wvalid;
  assign S02_AXI_awready = S02_AXI_1_AWREADY;
  assign S02_AXI_bresp[1:0] = S02_AXI_1_BRESP;
  assign S02_AXI_bvalid = S02_AXI_1_BVALID;
  assign S02_AXI_wready = S02_AXI_1_WREADY;
  assign S03_AXI_1_ARADDR = S03_AXI_araddr[39:0];
  assign S03_AXI_1_ARBURST = S03_AXI_arburst[1:0];
  assign S03_AXI_1_ARCACHE = S03_AXI_arcache[3:0];
  assign S03_AXI_1_ARID = S03_AXI_arid[3:0];
  assign S03_AXI_1_ARLEN = S03_AXI_arlen[7:0];
  assign S03_AXI_1_ARLOCK = S03_AXI_arlock[0];
  assign S03_AXI_1_ARPROT = S03_AXI_arprot[2:0];
  assign S03_AXI_1_ARQOS = S03_AXI_arqos[3:0];
  assign S03_AXI_1_ARSIZE = S03_AXI_arsize[2:0];
  assign S03_AXI_1_ARUSER = S03_AXI_aruser[0];
  assign S03_AXI_1_ARVALID = S03_AXI_arvalid;
  assign S03_AXI_1_AWADDR = S03_AXI_awaddr[39:0];
  assign S03_AXI_1_AWBURST = S03_AXI_awburst[1:0];
  assign S03_AXI_1_AWCACHE = S03_AXI_awcache[3:0];
  assign S03_AXI_1_AWID = S03_AXI_awid[3:0];
  assign S03_AXI_1_AWLEN = S03_AXI_awlen[7:0];
  assign S03_AXI_1_AWLOCK = S03_AXI_awlock[0];
  assign S03_AXI_1_AWPROT = S03_AXI_awprot[2:0];
  assign S03_AXI_1_AWQOS = S03_AXI_awqos[3:0];
  assign S03_AXI_1_AWSIZE = S03_AXI_awsize[2:0];
  assign S03_AXI_1_AWUSER = S03_AXI_awuser[0];
  assign S03_AXI_1_AWVALID = S03_AXI_awvalid;
  assign S03_AXI_1_BREADY = S03_AXI_bready;
  assign S03_AXI_1_RREADY = S03_AXI_rready;
  assign S03_AXI_1_WDATA = S03_AXI_wdata[63:0];
  assign S03_AXI_1_WLAST = S03_AXI_wlast;
  assign S03_AXI_1_WSTRB = S03_AXI_wstrb[7:0];
  assign S03_AXI_1_WVALID = S03_AXI_wvalid;
  assign S03_AXI_arready = S03_AXI_1_ARREADY;
  assign S03_AXI_awready = S03_AXI_1_AWREADY;
  assign S03_AXI_bid[3:0] = S03_AXI_1_BID;
  assign S03_AXI_bresp[1:0] = S03_AXI_1_BRESP;
  assign S03_AXI_bvalid = S03_AXI_1_BVALID;
  assign S03_AXI_rdata[63:0] = S03_AXI_1_RDATA;
  assign S03_AXI_rid[3:0] = S03_AXI_1_RID;
  assign S03_AXI_rlast = S03_AXI_1_RLAST;
  assign S03_AXI_rresp[1:0] = S03_AXI_1_RRESP;
  assign S03_AXI_rvalid = S03_AXI_1_RVALID;
  assign S03_AXI_wready = S03_AXI_1_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_interconnect_0_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  m00_couplers_imp_1B62G5Z m00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_aruser(m00_couplers_to_axi_interconnect_0_ARUSER),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awuser(m00_couplers_to_axi_interconnect_0_AWUSER),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m00_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m00_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_MEMYVP s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(s00_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s00_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s00_mmu_M_AXI_ARCACHE),
        .S_AXI_arlen(s00_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s00_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s00_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s00_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s00_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s00_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s00_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s00_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s00_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s00_mmu_M_AXI_AWCACHE),
        .S_AXI_awlen(s00_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s00_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s00_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s00_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s00_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s00_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s00_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s00_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s00_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s00_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s00_mmu_M_AXI_RDATA),
        .S_AXI_rlast(s00_mmu_M_AXI_RLAST),
        .S_AXI_rready(s00_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s00_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s00_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s00_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s00_mmu_M_AXI_WLAST),
        .S_AXI_wready(s00_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s00_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s00_mmu_M_AXI_WVALID));
  zynq_soc_s00_mmu_0 s00_mmu
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr(s00_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s00_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s00_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s00_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s00_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s00_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s00_mmu_M_AXI_ARQOS),
        .m_axi_arready(s00_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s00_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s00_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s00_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s00_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s00_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s00_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s00_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s00_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s00_mmu_M_AXI_AWQOS),
        .m_axi_awready(s00_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s00_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s00_mmu_M_AXI_AWVALID),
        .m_axi_bready(s00_mmu_M_AXI_BREADY),
        .m_axi_bresp(s00_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s00_mmu_M_AXI_BVALID),
        .m_axi_rdata(s00_mmu_M_AXI_RDATA),
        .m_axi_rlast(s00_mmu_M_AXI_RLAST),
        .m_axi_rready(s00_mmu_M_AXI_RREADY),
        .m_axi_rresp(s00_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s00_mmu_M_AXI_RVALID),
        .m_axi_wdata(s00_mmu_M_AXI_WDATA),
        .m_axi_wlast(s00_mmu_M_AXI_WLAST),
        .m_axi_wready(s00_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s00_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s00_mmu_M_AXI_WVALID),
        .s_axi_araddr(S00_AXI_1_ARADDR),
        .s_axi_arburst(S00_AXI_1_ARBURST),
        .s_axi_arcache(S00_AXI_1_ARCACHE),
        .s_axi_arlen(S00_AXI_1_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(S00_AXI_1_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arsize(S00_AXI_1_ARSIZE),
        .s_axi_arvalid(S00_AXI_1_ARVALID),
        .s_axi_awaddr(S00_AXI_1_AWADDR),
        .s_axi_awburst(S00_AXI_1_AWBURST),
        .s_axi_awcache(S00_AXI_1_AWCACHE),
        .s_axi_awlen(S00_AXI_1_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(S00_AXI_1_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S00_AXI_1_AWREADY),
        .s_axi_awsize(S00_AXI_1_AWSIZE),
        .s_axi_awvalid(S00_AXI_1_AWVALID),
        .s_axi_bready(S00_AXI_1_BREADY),
        .s_axi_bresp(S00_AXI_1_BRESP),
        .s_axi_bvalid(S00_AXI_1_BVALID),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rlast(S00_AXI_1_RLAST),
        .s_axi_rready(S00_AXI_1_RREADY),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata(S00_AXI_1_WDATA),
        .s_axi_wlast(S00_AXI_1_WLAST),
        .s_axi_wready(S00_AXI_1_WREADY),
        .s_axi_wstrb(S00_AXI_1_WSTRB),
        .s_axi_wvalid(S00_AXI_1_WVALID));
  s01_couplers_imp_1H5MAD0 s01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(s01_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s01_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s01_mmu_M_AXI_ARCACHE),
        .S_AXI_arlen(s01_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s01_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s01_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s01_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s01_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s01_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s01_mmu_M_AXI_ARVALID),
        .S_AXI_rdata(s01_mmu_M_AXI_RDATA),
        .S_AXI_rlast(s01_mmu_M_AXI_RLAST),
        .S_AXI_rready(s01_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s01_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s01_mmu_M_AXI_RVALID));
  zynq_soc_s01_mmu_0 s01_mmu
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr(s01_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s01_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s01_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s01_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s01_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s01_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s01_mmu_M_AXI_ARQOS),
        .m_axi_arready(s01_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s01_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s01_mmu_M_AXI_ARVALID),
        .m_axi_rdata(s01_mmu_M_AXI_RDATA),
        .m_axi_rlast(s01_mmu_M_AXI_RLAST),
        .m_axi_rready(s01_mmu_M_AXI_RREADY),
        .m_axi_rresp(s01_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s01_mmu_M_AXI_RVALID),
        .s_axi_araddr(S01_AXI_1_ARADDR),
        .s_axi_arburst(S01_AXI_1_ARBURST),
        .s_axi_arcache(S01_AXI_1_ARCACHE),
        .s_axi_arlen(S01_AXI_1_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(S01_AXI_1_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(S01_AXI_1_ARREADY),
        .s_axi_arsize(S01_AXI_1_ARSIZE),
        .s_axi_arvalid(S01_AXI_1_ARVALID),
        .s_axi_rdata(S01_AXI_1_RDATA),
        .s_axi_rlast(S01_AXI_1_RLAST),
        .s_axi_rready(S01_AXI_1_RREADY),
        .s_axi_rresp(S01_AXI_1_RRESP),
        .s_axi_rvalid(S01_AXI_1_RVALID));
  s02_couplers_imp_NLV82E s02_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_awaddr(s02_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s02_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s02_mmu_M_AXI_AWCACHE),
        .S_AXI_awlen(s02_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s02_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s02_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s02_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s02_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s02_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s02_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s02_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s02_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s02_mmu_M_AXI_BVALID),
        .S_AXI_wdata(s02_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s02_mmu_M_AXI_WLAST),
        .S_AXI_wready(s02_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s02_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s02_mmu_M_AXI_WVALID));
  zynq_soc_s02_mmu_0 s02_mmu
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_awaddr(s02_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s02_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s02_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s02_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s02_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s02_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s02_mmu_M_AXI_AWQOS),
        .m_axi_awready(s02_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s02_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s02_mmu_M_AXI_AWVALID),
        .m_axi_bready(s02_mmu_M_AXI_BREADY),
        .m_axi_bresp(s02_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s02_mmu_M_AXI_BVALID),
        .m_axi_wdata(s02_mmu_M_AXI_WDATA),
        .m_axi_wlast(s02_mmu_M_AXI_WLAST),
        .m_axi_wready(s02_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s02_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s02_mmu_M_AXI_WVALID),
        .s_axi_awaddr(S02_AXI_1_AWADDR),
        .s_axi_awburst(S02_AXI_1_AWBURST),
        .s_axi_awcache(S02_AXI_1_AWCACHE),
        .s_axi_awlen(S02_AXI_1_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(S02_AXI_1_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S02_AXI_1_AWREADY),
        .s_axi_awsize(S02_AXI_1_AWSIZE),
        .s_axi_awvalid(S02_AXI_1_AWVALID),
        .s_axi_bready(S02_AXI_1_BREADY),
        .s_axi_bresp(S02_AXI_1_BRESP),
        .s_axi_bvalid(S02_AXI_1_BVALID),
        .s_axi_wdata(S02_AXI_1_WDATA),
        .s_axi_wlast(S02_AXI_1_WLAST),
        .s_axi_wready(S02_AXI_1_WREADY),
        .s_axi_wstrb(S02_AXI_1_WSTRB),
        .s_axi_wvalid(S02_AXI_1_WVALID));
  s03_couplers_imp_1FOP2LZ s03_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s03_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s03_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s03_couplers_to_xbar_ARID),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s03_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s03_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s03_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s03_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s03_couplers_to_xbar_AWID),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s03_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s03_couplers_to_xbar_BID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rid(s03_couplers_to_xbar_RID),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(s03_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s03_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s03_mmu_M_AXI_ARCACHE),
        .S_AXI_arid(s03_mmu_M_AXI_ARID),
        .S_AXI_arlen(s03_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s03_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s03_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s03_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s03_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s03_mmu_M_AXI_ARSIZE),
        .S_AXI_aruser(s03_mmu_M_AXI_ARUSER),
        .S_AXI_arvalid(s03_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s03_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s03_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s03_mmu_M_AXI_AWCACHE),
        .S_AXI_awid(s03_mmu_M_AXI_AWID),
        .S_AXI_awlen(s03_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s03_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s03_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s03_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s03_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s03_mmu_M_AXI_AWSIZE),
        .S_AXI_awuser(s03_mmu_M_AXI_AWUSER),
        .S_AXI_awvalid(s03_mmu_M_AXI_AWVALID),
        .S_AXI_bid(s03_mmu_M_AXI_BID),
        .S_AXI_bready(s03_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s03_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s03_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s03_mmu_M_AXI_RDATA),
        .S_AXI_rid(s03_mmu_M_AXI_RID),
        .S_AXI_rlast(s03_mmu_M_AXI_RLAST),
        .S_AXI_rready(s03_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s03_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s03_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s03_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s03_mmu_M_AXI_WLAST),
        .S_AXI_wready(s03_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s03_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s03_mmu_M_AXI_WVALID));
  zynq_soc_s03_mmu_0 s03_mmu
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr(s03_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s03_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s03_mmu_M_AXI_ARCACHE),
        .m_axi_arid(s03_mmu_M_AXI_ARID),
        .m_axi_arlen(s03_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s03_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s03_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s03_mmu_M_AXI_ARQOS),
        .m_axi_arready(s03_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s03_mmu_M_AXI_ARSIZE),
        .m_axi_aruser(s03_mmu_M_AXI_ARUSER),
        .m_axi_arvalid(s03_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s03_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s03_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s03_mmu_M_AXI_AWCACHE),
        .m_axi_awid(s03_mmu_M_AXI_AWID),
        .m_axi_awlen(s03_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s03_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s03_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s03_mmu_M_AXI_AWQOS),
        .m_axi_awready(s03_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s03_mmu_M_AXI_AWSIZE),
        .m_axi_awuser(s03_mmu_M_AXI_AWUSER),
        .m_axi_awvalid(s03_mmu_M_AXI_AWVALID),
        .m_axi_bid(s03_mmu_M_AXI_BID[3:0]),
        .m_axi_bready(s03_mmu_M_AXI_BREADY),
        .m_axi_bresp(s03_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s03_mmu_M_AXI_BVALID),
        .m_axi_rdata(s03_mmu_M_AXI_RDATA),
        .m_axi_rid(s03_mmu_M_AXI_RID[3:0]),
        .m_axi_rlast(s03_mmu_M_AXI_RLAST),
        .m_axi_rready(s03_mmu_M_AXI_RREADY),
        .m_axi_rresp(s03_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s03_mmu_M_AXI_RVALID),
        .m_axi_wdata(s03_mmu_M_AXI_WDATA),
        .m_axi_wlast(s03_mmu_M_AXI_WLAST),
        .m_axi_wready(s03_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s03_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s03_mmu_M_AXI_WVALID),
        .s_axi_araddr(S03_AXI_1_ARADDR),
        .s_axi_arburst(S03_AXI_1_ARBURST),
        .s_axi_arcache(S03_AXI_1_ARCACHE),
        .s_axi_arid(S03_AXI_1_ARID),
        .s_axi_arlen(S03_AXI_1_ARLEN),
        .s_axi_arlock(S03_AXI_1_ARLOCK),
        .s_axi_arprot(S03_AXI_1_ARPROT),
        .s_axi_arqos(S03_AXI_1_ARQOS),
        .s_axi_arready(S03_AXI_1_ARREADY),
        .s_axi_arsize(S03_AXI_1_ARSIZE),
        .s_axi_aruser(S03_AXI_1_ARUSER),
        .s_axi_arvalid(S03_AXI_1_ARVALID),
        .s_axi_awaddr(S03_AXI_1_AWADDR),
        .s_axi_awburst(S03_AXI_1_AWBURST),
        .s_axi_awcache(S03_AXI_1_AWCACHE),
        .s_axi_awid(S03_AXI_1_AWID),
        .s_axi_awlen(S03_AXI_1_AWLEN),
        .s_axi_awlock(S03_AXI_1_AWLOCK),
        .s_axi_awprot(S03_AXI_1_AWPROT),
        .s_axi_awqos(S03_AXI_1_AWQOS),
        .s_axi_awready(S03_AXI_1_AWREADY),
        .s_axi_awsize(S03_AXI_1_AWSIZE),
        .s_axi_awuser(S03_AXI_1_AWUSER),
        .s_axi_awvalid(S03_AXI_1_AWVALID),
        .s_axi_bid(S03_AXI_1_BID),
        .s_axi_bready(S03_AXI_1_BREADY),
        .s_axi_bresp(S03_AXI_1_BRESP),
        .s_axi_bvalid(S03_AXI_1_BVALID),
        .s_axi_rdata(S03_AXI_1_RDATA),
        .s_axi_rid(S03_AXI_1_RID),
        .s_axi_rlast(S03_AXI_1_RLAST),
        .s_axi_rready(S03_AXI_1_RREADY),
        .s_axi_rresp(S03_AXI_1_RRESP),
        .s_axi_rvalid(S03_AXI_1_RVALID),
        .s_axi_wdata(S03_AXI_1_WDATA),
        .s_axi_wlast(S03_AXI_1_WLAST),
        .s_axi_wready(S03_AXI_1_WREADY),
        .s_axi_wstrb(S03_AXI_1_WSTRB),
        .s_axi_wvalid(S03_AXI_1_WVALID));
  zynq_soc_xbar_2 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_aruser(xbar_to_m00_couplers_ARUSER),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awuser(xbar_to_m00_couplers_AWUSER),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s03_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s03_couplers_to_xbar_ARBURST,1'b0,1'b0,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s03_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,s03_couplers_to_xbar_ARID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s03_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s03_couplers_to_xbar_ARLOCK,1'b0,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s03_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s03_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s03_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[2],s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s03_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_aruser({s03_couplers_to_xbar_ARUSER,1'b0,1'b0,1'b0}),
        .s_axi_arvalid({s03_couplers_to_xbar_ARVALID,1'b0,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s03_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s03_couplers_to_xbar_AWBURST,s02_couplers_to_xbar_AWBURST,1'b0,1'b0,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s03_couplers_to_xbar_AWCACHE,s02_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,s03_couplers_to_xbar_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s03_couplers_to_xbar_AWLEN,s02_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s03_couplers_to_xbar_AWLOCK,s02_couplers_to_xbar_AWLOCK,1'b0,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s03_couplers_to_xbar_AWPROT,s02_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s03_couplers_to_xbar_AWQOS,s02_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[1],s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s03_couplers_to_xbar_AWSIZE,s02_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b1,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awuser({s03_couplers_to_xbar_AWUSER,1'b0,1'b0,1'b0}),
        .s_axi_awvalid({s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,1'b0,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s03_couplers_to_xbar_BID,NLW_xbar_s_axi_bid_UNCONNECTED[17:0]}),
        .s_axi_bready({s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,1'b0,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[3:2],s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[1],s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s03_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[191:128],s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s03_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[17:0]}),
        .s_axi_rlast({s03_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[2],s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s03_couplers_to_xbar_RREADY,1'b0,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s03_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[5:4],s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s03_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[2],s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s03_couplers_to_xbar_WLAST,s02_couplers_to_xbar_WLAST,1'b0,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[1],s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,1'b0,s00_couplers_to_xbar_WVALID}));
endmodule

module zynq_soc_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wvalid,
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
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
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
  output [39:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [0:0]M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_interconnect_1_ACLK_net;
  wire axi_interconnect_1_ARESETN_net;
  wire [39:0]axi_interconnect_1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARCACHE;
  wire [15:0]axi_interconnect_1_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_1_to_s00_couplers_ARLEN;
  wire axi_interconnect_1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARQOS;
  wire axi_interconnect_1_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARSIZE;
  wire axi_interconnect_1_to_s00_couplers_ARVALID;
  wire [39:0]axi_interconnect_1_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWCACHE;
  wire [15:0]axi_interconnect_1_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_1_to_s00_couplers_AWLEN;
  wire axi_interconnect_1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWQOS;
  wire axi_interconnect_1_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWSIZE;
  wire axi_interconnect_1_to_s00_couplers_AWVALID;
  wire [15:0]axi_interconnect_1_to_s00_couplers_BID;
  wire axi_interconnect_1_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_BRESP;
  wire axi_interconnect_1_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_RDATA;
  wire [15:0]axi_interconnect_1_to_s00_couplers_RID;
  wire axi_interconnect_1_to_s00_couplers_RLAST;
  wire axi_interconnect_1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_RRESP;
  wire axi_interconnect_1_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_WDATA;
  wire axi_interconnect_1_to_s00_couplers_WLAST;
  wire axi_interconnect_1_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_1_to_s00_couplers_WSTRB;
  wire axi_interconnect_1_to_s00_couplers_WVALID;
  wire [39:0]m00_couplers_to_axi_interconnect_1_ARADDR;
  wire m00_couplers_to_axi_interconnect_1_ARREADY;
  wire m00_couplers_to_axi_interconnect_1_ARVALID;
  wire [39:0]m00_couplers_to_axi_interconnect_1_AWADDR;
  wire m00_couplers_to_axi_interconnect_1_AWREADY;
  wire m00_couplers_to_axi_interconnect_1_AWVALID;
  wire m00_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_BRESP;
  wire m00_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_RDATA;
  wire m00_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_RRESP;
  wire m00_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_WDATA;
  wire m00_couplers_to_axi_interconnect_1_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_1_WSTRB;
  wire m00_couplers_to_axi_interconnect_1_WVALID;
  wire [39:0]m01_couplers_to_axi_interconnect_1_ARADDR;
  wire m01_couplers_to_axi_interconnect_1_ARREADY;
  wire m01_couplers_to_axi_interconnect_1_ARVALID;
  wire [39:0]m01_couplers_to_axi_interconnect_1_AWADDR;
  wire m01_couplers_to_axi_interconnect_1_AWREADY;
  wire m01_couplers_to_axi_interconnect_1_AWVALID;
  wire m01_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_1_BRESP;
  wire m01_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_RDATA;
  wire m01_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_1_RRESP;
  wire m01_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_WDATA;
  wire m01_couplers_to_axi_interconnect_1_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_1_WSTRB;
  wire m01_couplers_to_axi_interconnect_1_WVALID;
  wire [39:0]m02_couplers_to_axi_interconnect_1_ARADDR;
  wire [0:0]m02_couplers_to_axi_interconnect_1_ARREADY;
  wire [0:0]m02_couplers_to_axi_interconnect_1_ARVALID;
  wire [39:0]m02_couplers_to_axi_interconnect_1_AWADDR;
  wire [0:0]m02_couplers_to_axi_interconnect_1_AWREADY;
  wire [0:0]m02_couplers_to_axi_interconnect_1_AWVALID;
  wire [0:0]m02_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_1_BRESP;
  wire [0:0]m02_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_1_RDATA;
  wire [0:0]m02_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_1_RRESP;
  wire [0:0]m02_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_1_WDATA;
  wire [0:0]m02_couplers_to_axi_interconnect_1_WREADY;
  wire [0:0]m02_couplers_to_axi_interconnect_1_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [2:2]xbar_to_m02_couplers_WVALID;

  assign M00_AXI_araddr[39:0] = m00_couplers_to_axi_interconnect_1_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_1_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_axi_interconnect_1_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_1_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_1_WVALID;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_axi_interconnect_1_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_1_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_axi_interconnect_1_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_1_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_1_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_1_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_1_WVALID;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_axi_interconnect_1_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi_interconnect_1_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_axi_interconnect_1_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi_interconnect_1_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi_interconnect_1_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi_interconnect_1_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_1_WDATA;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi_interconnect_1_WVALID;
  assign S00_AXI_arready = axi_interconnect_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = axi_interconnect_1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = axi_interconnect_1_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_1_to_s00_couplers_WREADY;
  assign axi_interconnect_1_ACLK_net = ACLK;
  assign axi_interconnect_1_ARESETN_net = ARESETN;
  assign axi_interconnect_1_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign axi_interconnect_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign axi_interconnect_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign axi_interconnect_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign axi_interconnect_1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_1_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_1_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_1_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_1_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_1_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_1_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_1_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi_interconnect_1_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi_interconnect_1_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_1_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi_interconnect_1_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_1_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_1_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi_interconnect_1_WREADY = M02_AXI_wready[0];
  m00_couplers_imp_1GY9XNB m00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_MMAK52 m01_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1FW18US m02_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_JYANRP s00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
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
        .S_AXI_awvalid(axi_interconnect_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_1_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_1_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s00_couplers_WVALID));
  zynq_soc_xbar_3 xbar
       (.aclk(axi_interconnect_1_ACLK_net),
        .aresetn(axi_interconnect_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module zynq_soc_axi_interconnect_rvcore_dma_0
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
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
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
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
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
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awprot,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awvalid;
  input [1:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [39:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [39:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awprot;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire axi_interconnect_rvcore_dma_ACLK_net;
  wire axi_interconnect_rvcore_dma_ARESETN_net;
  wire [39:0]axi_interconnect_rvcore_dma_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_rvcore_dma_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_rvcore_dma_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_rvcore_dma_to_s00_couplers_ARLEN;
  wire [2:0]axi_interconnect_rvcore_dma_to_s00_couplers_ARPROT;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_rvcore_dma_to_s00_couplers_ARSIZE;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_ARVALID;
  wire [39:0]axi_interconnect_rvcore_dma_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_rvcore_dma_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_rvcore_dma_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_rvcore_dma_to_s00_couplers_AWLEN;
  wire [2:0]axi_interconnect_rvcore_dma_to_s00_couplers_AWPROT;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_rvcore_dma_to_s00_couplers_AWSIZE;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_AWVALID;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_rvcore_dma_to_s00_couplers_BRESP;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_rvcore_dma_to_s00_couplers_RDATA;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_RLAST;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_rvcore_dma_to_s00_couplers_RRESP;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_rvcore_dma_to_s00_couplers_WDATA;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_WLAST;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_rvcore_dma_to_s00_couplers_WSTRB;
  wire axi_interconnect_rvcore_dma_to_s00_couplers_WVALID;
  wire [39:0]axi_interconnect_rvcore_dma_to_s01_couplers_ARADDR;
  wire [1:0]axi_interconnect_rvcore_dma_to_s01_couplers_ARBURST;
  wire [3:0]axi_interconnect_rvcore_dma_to_s01_couplers_ARCACHE;
  wire [7:0]axi_interconnect_rvcore_dma_to_s01_couplers_ARLEN;
  wire [2:0]axi_interconnect_rvcore_dma_to_s01_couplers_ARPROT;
  wire axi_interconnect_rvcore_dma_to_s01_couplers_ARREADY;
  wire [2:0]axi_interconnect_rvcore_dma_to_s01_couplers_ARSIZE;
  wire axi_interconnect_rvcore_dma_to_s01_couplers_ARVALID;
  wire [31:0]axi_interconnect_rvcore_dma_to_s01_couplers_RDATA;
  wire axi_interconnect_rvcore_dma_to_s01_couplers_RLAST;
  wire axi_interconnect_rvcore_dma_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_rvcore_dma_to_s01_couplers_RRESP;
  wire axi_interconnect_rvcore_dma_to_s01_couplers_RVALID;
  wire [39:0]axi_interconnect_rvcore_dma_to_s02_couplers_AWADDR;
  wire [1:0]axi_interconnect_rvcore_dma_to_s02_couplers_AWBURST;
  wire [3:0]axi_interconnect_rvcore_dma_to_s02_couplers_AWCACHE;
  wire [7:0]axi_interconnect_rvcore_dma_to_s02_couplers_AWLEN;
  wire [2:0]axi_interconnect_rvcore_dma_to_s02_couplers_AWPROT;
  wire axi_interconnect_rvcore_dma_to_s02_couplers_AWREADY;
  wire [2:0]axi_interconnect_rvcore_dma_to_s02_couplers_AWSIZE;
  wire axi_interconnect_rvcore_dma_to_s02_couplers_AWVALID;
  wire axi_interconnect_rvcore_dma_to_s02_couplers_BREADY;
  wire [1:0]axi_interconnect_rvcore_dma_to_s02_couplers_BRESP;
  wire axi_interconnect_rvcore_dma_to_s02_couplers_BVALID;
  wire [31:0]axi_interconnect_rvcore_dma_to_s02_couplers_WDATA;
  wire axi_interconnect_rvcore_dma_to_s02_couplers_WLAST;
  wire axi_interconnect_rvcore_dma_to_s02_couplers_WREADY;
  wire [3:0]axi_interconnect_rvcore_dma_to_s02_couplers_WSTRB;
  wire axi_interconnect_rvcore_dma_to_s02_couplers_WVALID;
  wire [39:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARCACHE;
  wire [1:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARID;
  wire [7:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARQOS;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARSIZE;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_ARVALID;
  wire [39:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWCACHE;
  wire [1:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWID;
  wire [7:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWQOS;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWSIZE;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_AWVALID;
  wire [1:0]m00_couplers_to_axi_interconnect_rvcore_dma_BID;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_rvcore_dma_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_BVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_rvcore_dma_RDATA;
  wire [1:0]m00_couplers_to_axi_interconnect_rvcore_dma_RID;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_RLAST;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_rvcore_dma_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_RVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_rvcore_dma_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_WLAST;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_WREADY;
  wire [7:0]m00_couplers_to_axi_interconnect_rvcore_dma_WSTRB;
  wire [0:0]m00_couplers_to_axi_interconnect_rvcore_dma_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [39:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [63:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [7:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire [0:0]xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [2:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_AXI_araddr[39:0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARSIZE;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_rvcore_dma_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWSIZE;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_rvcore_dma_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_rvcore_dma_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_rvcore_dma_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_interconnect_rvcore_dma_WDATA;
  assign M00_AXI_wlast[0] = m00_couplers_to_axi_interconnect_rvcore_dma_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_interconnect_rvcore_dma_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_rvcore_dma_WVALID;
  assign S00_AXI_arready = axi_interconnect_rvcore_dma_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_rvcore_dma_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_rvcore_dma_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_rvcore_dma_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_rvcore_dma_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_rvcore_dma_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_rvcore_dma_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_rvcore_dma_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_rvcore_dma_to_s00_couplers_WREADY;
  assign S01_AXI_arready = axi_interconnect_rvcore_dma_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[31:0] = axi_interconnect_rvcore_dma_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_interconnect_rvcore_dma_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_interconnect_rvcore_dma_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_interconnect_rvcore_dma_to_s01_couplers_RVALID;
  assign S02_AXI_awready = axi_interconnect_rvcore_dma_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = axi_interconnect_rvcore_dma_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_interconnect_rvcore_dma_to_s02_couplers_BVALID;
  assign S02_AXI_wready = axi_interconnect_rvcore_dma_to_s02_couplers_WREADY;
  assign axi_interconnect_rvcore_dma_ACLK_net = ACLK;
  assign axi_interconnect_rvcore_dma_ARESETN_net = ARESETN;
  assign axi_interconnect_rvcore_dma_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_rvcore_dma_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_rvcore_dma_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_rvcore_dma_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_rvcore_dma_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_rvcore_dma_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_rvcore_dma_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_interconnect_rvcore_dma_to_s01_couplers_ARADDR = S01_AXI_araddr[39:0];
  assign axi_interconnect_rvcore_dma_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_interconnect_rvcore_dma_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_interconnect_rvcore_dma_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_interconnect_rvcore_dma_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_rvcore_dma_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_interconnect_rvcore_dma_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_interconnect_rvcore_dma_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_interconnect_rvcore_dma_to_s02_couplers_AWADDR = S02_AXI_awaddr[39:0];
  assign axi_interconnect_rvcore_dma_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign axi_interconnect_rvcore_dma_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign axi_interconnect_rvcore_dma_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_interconnect_rvcore_dma_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign axi_interconnect_rvcore_dma_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign axi_interconnect_rvcore_dma_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_interconnect_rvcore_dma_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_interconnect_rvcore_dma_to_s02_couplers_WDATA = S02_AXI_wdata[31:0];
  assign axi_interconnect_rvcore_dma_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_interconnect_rvcore_dma_to_s02_couplers_WSTRB = S02_AXI_wstrb[3:0];
  assign axi_interconnect_rvcore_dma_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_rvcore_dma_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_rvcore_dma_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_rvcore_dma_BID = M00_AXI_bid[1:0];
  assign m00_couplers_to_axi_interconnect_rvcore_dma_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_rvcore_dma_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_rvcore_dma_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_interconnect_rvcore_dma_RID = M00_AXI_rid[1:0];
  assign m00_couplers_to_axi_interconnect_rvcore_dma_RLAST = M00_AXI_rlast[0];
  assign m00_couplers_to_axi_interconnect_rvcore_dma_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_rvcore_dma_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_rvcore_dma_WREADY = M00_AXI_wready[0];
  m00_couplers_imp_PWPM2P m00_couplers
       (.M_ACLK(axi_interconnect_rvcore_dma_ACLK_net),
        .M_ARESETN(axi_interconnect_rvcore_dma_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_rvcore_dma_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_rvcore_dma_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_rvcore_dma_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_rvcore_dma_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_rvcore_dma_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_rvcore_dma_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_rvcore_dma_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_rvcore_dma_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_rvcore_dma_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_interconnect_rvcore_dma_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_rvcore_dma_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_rvcore_dma_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_rvcore_dma_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_rvcore_dma_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_rvcore_dma_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_rvcore_dma_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_rvcore_dma_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_rvcore_dma_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_rvcore_dma_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_rvcore_dma_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_rvcore_dma_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_interconnect_rvcore_dma_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_rvcore_dma_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_rvcore_dma_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_rvcore_dma_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_rvcore_dma_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_rvcore_dma_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_rvcore_dma_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_rvcore_dma_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_rvcore_dma_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_rvcore_dma_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_rvcore_dma_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_rvcore_dma_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_rvcore_dma_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_rvcore_dma_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_rvcore_dma_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_rvcore_dma_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_rvcore_dma_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_rvcore_dma_WVALID),
        .S_ACLK(axi_interconnect_rvcore_dma_ACLK_net),
        .S_ARESETN(axi_interconnect_rvcore_dma_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_19LU5HF s00_couplers
       (.M_ACLK(axi_interconnect_rvcore_dma_ACLK_net),
        .M_ARESETN(axi_interconnect_rvcore_dma_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_rvcore_dma_ACLK_net),
        .S_ARESETN(axi_interconnect_rvcore_dma_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_rvcore_dma_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_rvcore_dma_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_rvcore_dma_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_rvcore_dma_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_interconnect_rvcore_dma_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_rvcore_dma_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_rvcore_dma_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_rvcore_dma_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_rvcore_dma_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_rvcore_dma_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_rvcore_dma_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_rvcore_dma_to_s00_couplers_AWLEN),
        .S_AXI_awprot(axi_interconnect_rvcore_dma_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_rvcore_dma_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_rvcore_dma_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_rvcore_dma_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_rvcore_dma_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_rvcore_dma_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_rvcore_dma_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_rvcore_dma_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_rvcore_dma_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_rvcore_dma_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_rvcore_dma_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_rvcore_dma_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_rvcore_dma_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_rvcore_dma_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_rvcore_dma_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_rvcore_dma_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_rvcore_dma_to_s00_couplers_WVALID));
  s01_couplers_imp_KTMPB6 s01_couplers
       (.M_ACLK(axi_interconnect_rvcore_dma_ACLK_net),
        .M_ARESETN(axi_interconnect_rvcore_dma_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(axi_interconnect_rvcore_dma_ACLK_net),
        .S_ARESETN(axi_interconnect_rvcore_dma_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_rvcore_dma_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_rvcore_dma_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_rvcore_dma_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_rvcore_dma_to_s01_couplers_ARLEN),
        .S_AXI_arprot(axi_interconnect_rvcore_dma_to_s01_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_rvcore_dma_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_rvcore_dma_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_rvcore_dma_to_s01_couplers_ARVALID),
        .S_AXI_rdata(axi_interconnect_rvcore_dma_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_rvcore_dma_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_rvcore_dma_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_rvcore_dma_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_rvcore_dma_to_s01_couplers_RVALID));
  s02_couplers_imp_18TLRK0 s02_couplers
       (.M_ACLK(axi_interconnect_rvcore_dma_ACLK_net),
        .M_ARESETN(axi_interconnect_rvcore_dma_ARESETN_net),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_rvcore_dma_ACLK_net),
        .S_ARESETN(axi_interconnect_rvcore_dma_ARESETN_net),
        .S_AXI_awaddr(axi_interconnect_rvcore_dma_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_rvcore_dma_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_rvcore_dma_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_rvcore_dma_to_s02_couplers_AWLEN),
        .S_AXI_awprot(axi_interconnect_rvcore_dma_to_s02_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_rvcore_dma_to_s02_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_rvcore_dma_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_rvcore_dma_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_rvcore_dma_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_rvcore_dma_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_rvcore_dma_to_s02_couplers_BVALID),
        .S_AXI_wdata(axi_interconnect_rvcore_dma_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_rvcore_dma_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_rvcore_dma_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_rvcore_dma_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_rvcore_dma_to_s02_couplers_WVALID));
  zynq_soc_xbar_0 xbar
       (.aclk(axi_interconnect_rvcore_dma_ACLK_net),
        .aresetn(axi_interconnect_rvcore_dma_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,1'b0,1'b0,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK,1'b0,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[1],s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b1,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,1'b0,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,1'b0,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[3:2],s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[1],s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({1'b0,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,1'b0,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[1],s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,1'b0,s00_couplers_to_xbar_WVALID}));
endmodule

module zynq_soc_axi_interconnect_rvcore_mmio_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
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
    S00_AXI_arregion,
    S00_AXI_arsize,
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
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
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
  output [39:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [63:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [63:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [7:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [63:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [63:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [7:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [7:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [7:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_rvcore_mmio_ACLK_net;
  wire axi_interconnect_rvcore_mmio_ARESETN_net;
  wire [39:0]axi_interconnect_rvcore_mmio_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_rvcore_mmio_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_rvcore_mmio_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_rvcore_mmio_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_rvcore_mmio_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_rvcore_mmio_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_rvcore_mmio_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_rvcore_mmio_to_s00_couplers_ARQOS;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_rvcore_mmio_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_rvcore_mmio_to_s00_couplers_ARSIZE;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_ARVALID;
  wire [39:0]axi_interconnect_rvcore_mmio_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_rvcore_mmio_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_rvcore_mmio_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_rvcore_mmio_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_rvcore_mmio_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_rvcore_mmio_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_rvcore_mmio_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_rvcore_mmio_to_s00_couplers_AWQOS;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_rvcore_mmio_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_rvcore_mmio_to_s00_couplers_AWSIZE;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_AWVALID;
  wire [7:0]axi_interconnect_rvcore_mmio_to_s00_couplers_BID;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_rvcore_mmio_to_s00_couplers_BRESP;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_BVALID;
  wire [63:0]axi_interconnect_rvcore_mmio_to_s00_couplers_RDATA;
  wire [7:0]axi_interconnect_rvcore_mmio_to_s00_couplers_RID;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_RLAST;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_rvcore_mmio_to_s00_couplers_RRESP;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_RVALID;
  wire [63:0]axi_interconnect_rvcore_mmio_to_s00_couplers_WDATA;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_WLAST;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_WREADY;
  wire [7:0]axi_interconnect_rvcore_mmio_to_s00_couplers_WSTRB;
  wire axi_interconnect_rvcore_mmio_to_s00_couplers_WVALID;
  wire [39:0]m00_couplers_to_axi_interconnect_rvcore_mmio_ARADDR;
  wire m00_couplers_to_axi_interconnect_rvcore_mmio_ARREADY;
  wire m00_couplers_to_axi_interconnect_rvcore_mmio_ARVALID;
  wire [39:0]m00_couplers_to_axi_interconnect_rvcore_mmio_AWADDR;
  wire m00_couplers_to_axi_interconnect_rvcore_mmio_AWREADY;
  wire m00_couplers_to_axi_interconnect_rvcore_mmio_AWVALID;
  wire m00_couplers_to_axi_interconnect_rvcore_mmio_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_rvcore_mmio_BRESP;
  wire m00_couplers_to_axi_interconnect_rvcore_mmio_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_rvcore_mmio_RDATA;
  wire m00_couplers_to_axi_interconnect_rvcore_mmio_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_rvcore_mmio_RRESP;
  wire m00_couplers_to_axi_interconnect_rvcore_mmio_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_rvcore_mmio_WDATA;
  wire m00_couplers_to_axi_interconnect_rvcore_mmio_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_rvcore_mmio_WSTRB;
  wire m00_couplers_to_axi_interconnect_rvcore_mmio_WVALID;
  wire [39:0]m01_couplers_to_axi_interconnect_rvcore_mmio_ARADDR;
  wire m01_couplers_to_axi_interconnect_rvcore_mmio_ARREADY;
  wire m01_couplers_to_axi_interconnect_rvcore_mmio_ARVALID;
  wire [39:0]m01_couplers_to_axi_interconnect_rvcore_mmio_AWADDR;
  wire m01_couplers_to_axi_interconnect_rvcore_mmio_AWREADY;
  wire m01_couplers_to_axi_interconnect_rvcore_mmio_AWVALID;
  wire m01_couplers_to_axi_interconnect_rvcore_mmio_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_rvcore_mmio_BRESP;
  wire m01_couplers_to_axi_interconnect_rvcore_mmio_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_rvcore_mmio_RDATA;
  wire m01_couplers_to_axi_interconnect_rvcore_mmio_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_rvcore_mmio_RRESP;
  wire m01_couplers_to_axi_interconnect_rvcore_mmio_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_rvcore_mmio_WDATA;
  wire m01_couplers_to_axi_interconnect_rvcore_mmio_WREADY;
  wire m01_couplers_to_axi_interconnect_rvcore_mmio_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_rvcore_mmio_ARADDR;
  wire [2:0]m02_couplers_to_axi_interconnect_rvcore_mmio_ARPROT;
  wire m02_couplers_to_axi_interconnect_rvcore_mmio_ARREADY;
  wire m02_couplers_to_axi_interconnect_rvcore_mmio_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_rvcore_mmio_AWADDR;
  wire [2:0]m02_couplers_to_axi_interconnect_rvcore_mmio_AWPROT;
  wire m02_couplers_to_axi_interconnect_rvcore_mmio_AWREADY;
  wire m02_couplers_to_axi_interconnect_rvcore_mmio_AWVALID;
  wire m02_couplers_to_axi_interconnect_rvcore_mmio_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_rvcore_mmio_BRESP;
  wire m02_couplers_to_axi_interconnect_rvcore_mmio_BVALID;
  wire [63:0]m02_couplers_to_axi_interconnect_rvcore_mmio_RDATA;
  wire m02_couplers_to_axi_interconnect_rvcore_mmio_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_rvcore_mmio_RRESP;
  wire m02_couplers_to_axi_interconnect_rvcore_mmio_RVALID;
  wire [63:0]m02_couplers_to_axi_interconnect_rvcore_mmio_WDATA;
  wire m02_couplers_to_axi_interconnect_rvcore_mmio_WREADY;
  wire [7:0]m02_couplers_to_axi_interconnect_rvcore_mmio_WSTRB;
  wire m02_couplers_to_axi_interconnect_rvcore_mmio_WVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_rvcore_mmio_ARADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_rvcore_mmio_ARPROT;
  wire m03_couplers_to_axi_interconnect_rvcore_mmio_ARREADY;
  wire m03_couplers_to_axi_interconnect_rvcore_mmio_ARVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_rvcore_mmio_AWADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_rvcore_mmio_AWPROT;
  wire m03_couplers_to_axi_interconnect_rvcore_mmio_AWREADY;
  wire m03_couplers_to_axi_interconnect_rvcore_mmio_AWVALID;
  wire m03_couplers_to_axi_interconnect_rvcore_mmio_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_rvcore_mmio_BRESP;
  wire m03_couplers_to_axi_interconnect_rvcore_mmio_BVALID;
  wire [63:0]m03_couplers_to_axi_interconnect_rvcore_mmio_RDATA;
  wire m03_couplers_to_axi_interconnect_rvcore_mmio_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_rvcore_mmio_RRESP;
  wire m03_couplers_to_axi_interconnect_rvcore_mmio_RVALID;
  wire [63:0]m03_couplers_to_axi_interconnect_rvcore_mmio_WDATA;
  wire m03_couplers_to_axi_interconnect_rvcore_mmio_WREADY;
  wire [7:0]m03_couplers_to_axi_interconnect_rvcore_mmio_WSTRB;
  wire m03_couplers_to_axi_interconnect_rvcore_mmio_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [63:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [127:64]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [15:8]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [63:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [191:128]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [23:16]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [63:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [255:192]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [31:24]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[39:0] = m00_couplers_to_axi_interconnect_rvcore_mmio_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_rvcore_mmio_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_axi_interconnect_rvcore_mmio_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_rvcore_mmio_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_rvcore_mmio_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_rvcore_mmio_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_rvcore_mmio_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_rvcore_mmio_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_rvcore_mmio_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_axi_interconnect_rvcore_mmio_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_rvcore_mmio_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_axi_interconnect_rvcore_mmio_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_rvcore_mmio_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_rvcore_mmio_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_rvcore_mmio_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_rvcore_mmio_WDATA;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_rvcore_mmio_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_rvcore_mmio_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_axi_interconnect_rvcore_mmio_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_rvcore_mmio_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_rvcore_mmio_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_axi_interconnect_rvcore_mmio_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_rvcore_mmio_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_rvcore_mmio_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_rvcore_mmio_RREADY;
  assign M02_AXI_wdata[63:0] = m02_couplers_to_axi_interconnect_rvcore_mmio_WDATA;
  assign M02_AXI_wstrb[7:0] = m02_couplers_to_axi_interconnect_rvcore_mmio_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_rvcore_mmio_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_interconnect_rvcore_mmio_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_interconnect_rvcore_mmio_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_rvcore_mmio_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_interconnect_rvcore_mmio_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_interconnect_rvcore_mmio_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_rvcore_mmio_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_rvcore_mmio_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_rvcore_mmio_RREADY;
  assign M03_AXI_wdata[63:0] = m03_couplers_to_axi_interconnect_rvcore_mmio_WDATA;
  assign M03_AXI_wstrb[7:0] = m03_couplers_to_axi_interconnect_rvcore_mmio_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_rvcore_mmio_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_rvcore_mmio_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_rvcore_mmio_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[7:0] = axi_interconnect_rvcore_mmio_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_rvcore_mmio_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_rvcore_mmio_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_interconnect_rvcore_mmio_to_s00_couplers_RDATA;
  assign S00_AXI_rid[7:0] = axi_interconnect_rvcore_mmio_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_rvcore_mmio_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_rvcore_mmio_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_rvcore_mmio_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_rvcore_mmio_to_s00_couplers_WREADY;
  assign axi_interconnect_rvcore_mmio_ACLK_net = ACLK;
  assign axi_interconnect_rvcore_mmio_ARESETN_net = ARESETN;
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARID = S00_AXI_arid[7:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWID = S00_AXI_awid[7:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_interconnect_rvcore_mmio_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_rvcore_mmio_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_rvcore_mmio_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_rvcore_mmio_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_rvcore_mmio_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_rvcore_mmio_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_rvcore_mmio_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_rvcore_mmio_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_rvcore_mmio_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_rvcore_mmio_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_rvcore_mmio_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_rvcore_mmio_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_rvcore_mmio_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_rvcore_mmio_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_rvcore_mmio_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_rvcore_mmio_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_rvcore_mmio_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_rvcore_mmio_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_rvcore_mmio_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_rvcore_mmio_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_rvcore_mmio_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_rvcore_mmio_RDATA = M02_AXI_rdata[63:0];
  assign m02_couplers_to_axi_interconnect_rvcore_mmio_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_rvcore_mmio_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_rvcore_mmio_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_rvcore_mmio_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_interconnect_rvcore_mmio_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_interconnect_rvcore_mmio_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_rvcore_mmio_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_interconnect_rvcore_mmio_RDATA = M03_AXI_rdata[63:0];
  assign m03_couplers_to_axi_interconnect_rvcore_mmio_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_rvcore_mmio_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_interconnect_rvcore_mmio_WREADY = M03_AXI_wready;
  m00_couplers_imp_XD3PL6 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_rvcore_mmio_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_rvcore_mmio_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_rvcore_mmio_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_rvcore_mmio_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_rvcore_mmio_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_rvcore_mmio_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_rvcore_mmio_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_rvcore_mmio_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_rvcore_mmio_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_rvcore_mmio_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_rvcore_mmio_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_rvcore_mmio_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_rvcore_mmio_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_rvcore_mmio_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_rvcore_mmio_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_rvcore_mmio_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_rvcore_mmio_WVALID),
        .S_ACLK(axi_interconnect_rvcore_mmio_ACLK_net),
        .S_ARESETN(axi_interconnect_rvcore_mmio_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_160IRHN m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_rvcore_mmio_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_rvcore_mmio_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_rvcore_mmio_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_rvcore_mmio_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_rvcore_mmio_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_rvcore_mmio_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_rvcore_mmio_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_rvcore_mmio_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_rvcore_mmio_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_rvcore_mmio_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_rvcore_mmio_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_rvcore_mmio_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_rvcore_mmio_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_rvcore_mmio_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_rvcore_mmio_WREADY),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_rvcore_mmio_WVALID),
        .S_ACLK(axi_interconnect_rvcore_mmio_ACLK_net),
        .S_ARESETN(axi_interconnect_rvcore_mmio_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_YXQT3D m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_rvcore_mmio_ARADDR),
        .M_AXI_arprot(m02_couplers_to_axi_interconnect_rvcore_mmio_ARPROT),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_rvcore_mmio_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_rvcore_mmio_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_rvcore_mmio_AWADDR),
        .M_AXI_awprot(m02_couplers_to_axi_interconnect_rvcore_mmio_AWPROT),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_rvcore_mmio_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_rvcore_mmio_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_rvcore_mmio_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_rvcore_mmio_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_rvcore_mmio_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_rvcore_mmio_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_rvcore_mmio_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_rvcore_mmio_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_rvcore_mmio_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_rvcore_mmio_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_rvcore_mmio_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_rvcore_mmio_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_rvcore_mmio_WVALID),
        .S_ACLK(axi_interconnect_rvcore_mmio_ACLK_net),
        .S_ARESETN(axi_interconnect_rvcore_mmio_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_14PJEAW m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_rvcore_mmio_ARADDR),
        .M_AXI_arprot(m03_couplers_to_axi_interconnect_rvcore_mmio_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_rvcore_mmio_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_rvcore_mmio_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_rvcore_mmio_AWADDR),
        .M_AXI_awprot(m03_couplers_to_axi_interconnect_rvcore_mmio_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_rvcore_mmio_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_rvcore_mmio_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_rvcore_mmio_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_rvcore_mmio_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_rvcore_mmio_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_rvcore_mmio_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_rvcore_mmio_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_rvcore_mmio_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_rvcore_mmio_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_rvcore_mmio_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_rvcore_mmio_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_rvcore_mmio_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_rvcore_mmio_WVALID),
        .S_ACLK(axi_interconnect_rvcore_mmio_ACLK_net),
        .S_ARESETN(axi_interconnect_rvcore_mmio_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_ZSJQIW s00_couplers
       (.M_ACLK(axi_interconnect_rvcore_mmio_ACLK_net),
        .M_ARESETN(axi_interconnect_rvcore_mmio_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_rvcore_mmio_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_rvcore_mmio_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_rvcore_mmio_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_rvcore_mmio_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_rvcore_mmio_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_rvcore_mmio_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_rvcore_mmio_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_rvcore_mmio_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_rvcore_mmio_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_rvcore_mmio_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_rvcore_mmio_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_rvcore_mmio_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_rvcore_mmio_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_rvcore_mmio_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_rvcore_mmio_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_rvcore_mmio_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_rvcore_mmio_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_rvcore_mmio_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_rvcore_mmio_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_rvcore_mmio_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_rvcore_mmio_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_rvcore_mmio_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_rvcore_mmio_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_rvcore_mmio_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_rvcore_mmio_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_rvcore_mmio_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_rvcore_mmio_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_rvcore_mmio_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_rvcore_mmio_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_rvcore_mmio_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_rvcore_mmio_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_rvcore_mmio_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_rvcore_mmio_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_rvcore_mmio_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_rvcore_mmio_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_rvcore_mmio_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_rvcore_mmio_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_rvcore_mmio_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_rvcore_mmio_to_s00_couplers_WVALID));
  zynq_soc_xbar_1 xbar
       (.aclk(axi_interconnect_rvcore_mmio_ACLK_net),
        .aresetn(axi_interconnect_rvcore_mmio_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
