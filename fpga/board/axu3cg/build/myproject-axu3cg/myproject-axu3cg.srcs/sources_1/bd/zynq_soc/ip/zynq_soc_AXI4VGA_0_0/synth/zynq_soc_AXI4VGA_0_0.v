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


// IP VLNV: xilinx.com:module_ref:AXI4VGA:1.0
// IP Revision: 1

(* X_CORE_INFO = "AXI4VGA,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "zynq_soc_AXI4VGA_0_0,AXI4VGA,{}" *)
(* CORE_GENERATION_INFO = "zynq_soc_AXI4VGA_0_0,AXI4VGA,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=AXI4VGA,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zynq_soc_AXI4VGA_0_0 (
  clock,
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
  io_vga_valid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_BUSIF io_in_ctrl:io_in_fb, ASSOCIATED_RESET reset, FREQ_HZ 39999600, PHASE 0.0, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *)
input wire clock;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb AWREADY" *)
output wire io_in_fb_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb AWVALID" *)
input wire io_in_fb_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb AWADDR" *)
input wire [31 : 0] io_in_fb_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb AWPROT" *)
input wire [2 : 0] io_in_fb_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb WREADY" *)
output wire io_in_fb_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb WVALID" *)
input wire io_in_fb_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb WDATA" *)
input wire [63 : 0] io_in_fb_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb WSTRB" *)
input wire [7 : 0] io_in_fb_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb BREADY" *)
input wire io_in_fb_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb BVALID" *)
output wire io_in_fb_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb BRESP" *)
output wire [1 : 0] io_in_fb_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb ARREADY" *)
output wire io_in_fb_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb ARVALID" *)
input wire io_in_fb_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb ARADDR" *)
input wire [31 : 0] io_in_fb_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb ARPROT" *)
input wire [2 : 0] io_in_fb_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb RREADY" *)
input wire io_in_fb_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb RVALID" *)
output wire io_in_fb_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb RRESP" *)
output wire [1 : 0] io_in_fb_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_in_fb, DATA_WIDTH 64, PROTOCOL AXI4LITE, FREQ_HZ 39999600, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, NUM_READ_THREADS 1, NUM_WRIT\
E_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_fb RDATA" *)
output wire [63 : 0] io_in_fb_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl AWREADY" *)
output wire io_in_ctrl_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl AWVALID" *)
input wire io_in_ctrl_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl AWADDR" *)
input wire [31 : 0] io_in_ctrl_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl AWPROT" *)
input wire [2 : 0] io_in_ctrl_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl WREADY" *)
output wire io_in_ctrl_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl WVALID" *)
input wire io_in_ctrl_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl WDATA" *)
input wire [63 : 0] io_in_ctrl_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl WSTRB" *)
input wire [7 : 0] io_in_ctrl_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl BREADY" *)
input wire io_in_ctrl_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl BVALID" *)
output wire io_in_ctrl_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl BRESP" *)
output wire [1 : 0] io_in_ctrl_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl ARREADY" *)
output wire io_in_ctrl_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl ARVALID" *)
input wire io_in_ctrl_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl ARADDR" *)
input wire [31 : 0] io_in_ctrl_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl ARPROT" *)
input wire [2 : 0] io_in_ctrl_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl RREADY" *)
input wire io_in_ctrl_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl RVALID" *)
output wire io_in_ctrl_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl RRESP" *)
output wire [1 : 0] io_in_ctrl_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_in_ctrl, DATA_WIDTH 64, PROTOCOL AXI4LITE, FREQ_HZ 39999600, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_soc_clk_wiz_0_0_coreclk, NUM_READ_THREADS 1, NUM_WR\
ITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_in_ctrl RDATA" *)
output wire [63 : 0] io_in_ctrl_rdata;
output wire [23 : 0] io_vga_rgb;
output wire io_vga_hsync;
output wire io_vga_vsync;
output wire io_vga_valid;

  AXI4VGA inst (
    .clock(clock),
    .reset(reset),
    .io_in_fb_awready(io_in_fb_awready),
    .io_in_fb_awvalid(io_in_fb_awvalid),
    .io_in_fb_awaddr(io_in_fb_awaddr),
    .io_in_fb_awprot(io_in_fb_awprot),
    .io_in_fb_wready(io_in_fb_wready),
    .io_in_fb_wvalid(io_in_fb_wvalid),
    .io_in_fb_wdata(io_in_fb_wdata),
    .io_in_fb_wstrb(io_in_fb_wstrb),
    .io_in_fb_bready(io_in_fb_bready),
    .io_in_fb_bvalid(io_in_fb_bvalid),
    .io_in_fb_bresp(io_in_fb_bresp),
    .io_in_fb_arready(io_in_fb_arready),
    .io_in_fb_arvalid(io_in_fb_arvalid),
    .io_in_fb_araddr(io_in_fb_araddr),
    .io_in_fb_arprot(io_in_fb_arprot),
    .io_in_fb_rready(io_in_fb_rready),
    .io_in_fb_rvalid(io_in_fb_rvalid),
    .io_in_fb_rresp(io_in_fb_rresp),
    .io_in_fb_rdata(io_in_fb_rdata),
    .io_in_ctrl_awready(io_in_ctrl_awready),
    .io_in_ctrl_awvalid(io_in_ctrl_awvalid),
    .io_in_ctrl_awaddr(io_in_ctrl_awaddr),
    .io_in_ctrl_awprot(io_in_ctrl_awprot),
    .io_in_ctrl_wready(io_in_ctrl_wready),
    .io_in_ctrl_wvalid(io_in_ctrl_wvalid),
    .io_in_ctrl_wdata(io_in_ctrl_wdata),
    .io_in_ctrl_wstrb(io_in_ctrl_wstrb),
    .io_in_ctrl_bready(io_in_ctrl_bready),
    .io_in_ctrl_bvalid(io_in_ctrl_bvalid),
    .io_in_ctrl_bresp(io_in_ctrl_bresp),
    .io_in_ctrl_arready(io_in_ctrl_arready),
    .io_in_ctrl_arvalid(io_in_ctrl_arvalid),
    .io_in_ctrl_araddr(io_in_ctrl_araddr),
    .io_in_ctrl_arprot(io_in_ctrl_arprot),
    .io_in_ctrl_rready(io_in_ctrl_rready),
    .io_in_ctrl_rvalid(io_in_ctrl_rvalid),
    .io_in_ctrl_rresp(io_in_ctrl_rresp),
    .io_in_ctrl_rdata(io_in_ctrl_rdata),
    .io_vga_rgb(io_vga_rgb),
    .io_vga_hsync(io_vga_hsync),
    .io_vga_vsync(io_vga_vsync),
    .io_vga_valid(io_vga_valid)
  );
endmodule
