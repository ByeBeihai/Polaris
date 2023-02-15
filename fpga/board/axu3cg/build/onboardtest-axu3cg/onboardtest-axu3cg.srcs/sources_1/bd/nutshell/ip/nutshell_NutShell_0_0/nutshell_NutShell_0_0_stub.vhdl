-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Aug 17 02:16:12 2022
-- Host        : stu running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_NutShell_0_0/nutshell_NutShell_0_0_stub.vhdl
-- Design      : nutshell_NutShell_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nutshell_NutShell_0_0 is
  Port ( 
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    io_mem_awready : in STD_LOGIC;
    io_mem_awvalid : out STD_LOGIC;
    io_mem_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_mem_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_mem_awid : out STD_LOGIC;
    io_mem_awuser : out STD_LOGIC;
    io_mem_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_mem_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_mem_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_mem_awlock : out STD_LOGIC;
    io_mem_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_mem_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_mem_wready : in STD_LOGIC;
    io_mem_wvalid : out STD_LOGIC;
    io_mem_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    io_mem_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_mem_wlast : out STD_LOGIC;
    io_mem_bready : out STD_LOGIC;
    io_mem_bvalid : in STD_LOGIC;
    io_mem_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_mem_bid : in STD_LOGIC;
    io_mem_buser : in STD_LOGIC;
    io_mem_arready : in STD_LOGIC;
    io_mem_arvalid : out STD_LOGIC;
    io_mem_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_mem_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_mem_arid : out STD_LOGIC;
    io_mem_aruser : out STD_LOGIC;
    io_mem_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_mem_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_mem_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_mem_arlock : out STD_LOGIC;
    io_mem_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_mem_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_mem_rready : out STD_LOGIC;
    io_mem_rvalid : in STD_LOGIC;
    io_mem_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_mem_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    io_mem_rlast : in STD_LOGIC;
    io_mem_rid : in STD_LOGIC;
    io_mem_ruser : in STD_LOGIC;
    io_mmio_awready : in STD_LOGIC;
    io_mmio_awvalid : out STD_LOGIC;
    io_mmio_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_mmio_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_mmio_awid : out STD_LOGIC;
    io_mmio_awuser : out STD_LOGIC;
    io_mmio_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_mmio_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_mmio_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_mmio_awlock : out STD_LOGIC;
    io_mmio_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_mmio_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_mmio_wready : in STD_LOGIC;
    io_mmio_wvalid : out STD_LOGIC;
    io_mmio_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    io_mmio_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_mmio_wlast : out STD_LOGIC;
    io_mmio_bready : out STD_LOGIC;
    io_mmio_bvalid : in STD_LOGIC;
    io_mmio_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_mmio_bid : in STD_LOGIC;
    io_mmio_buser : in STD_LOGIC;
    io_mmio_arready : in STD_LOGIC;
    io_mmio_arvalid : out STD_LOGIC;
    io_mmio_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_mmio_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_mmio_arid : out STD_LOGIC;
    io_mmio_aruser : out STD_LOGIC;
    io_mmio_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_mmio_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_mmio_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_mmio_arlock : out STD_LOGIC;
    io_mmio_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_mmio_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_mmio_rready : out STD_LOGIC;
    io_mmio_rvalid : in STD_LOGIC;
    io_mmio_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_mmio_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    io_mmio_rlast : in STD_LOGIC;
    io_mmio_rid : in STD_LOGIC;
    io_mmio_ruser : in STD_LOGIC;
    io_frontend_awready : out STD_LOGIC;
    io_frontend_awvalid : in STD_LOGIC;
    io_frontend_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_frontend_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_frontend_awid : in STD_LOGIC;
    io_frontend_awuser : in STD_LOGIC;
    io_frontend_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_frontend_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_frontend_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_frontend_awlock : in STD_LOGIC;
    io_frontend_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_frontend_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_frontend_wready : out STD_LOGIC;
    io_frontend_wvalid : in STD_LOGIC;
    io_frontend_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    io_frontend_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_frontend_wlast : in STD_LOGIC;
    io_frontend_bready : in STD_LOGIC;
    io_frontend_bvalid : out STD_LOGIC;
    io_frontend_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_frontend_bid : out STD_LOGIC;
    io_frontend_buser : out STD_LOGIC;
    io_frontend_arready : out STD_LOGIC;
    io_frontend_arvalid : in STD_LOGIC;
    io_frontend_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_frontend_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_frontend_arid : in STD_LOGIC;
    io_frontend_aruser : in STD_LOGIC;
    io_frontend_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_frontend_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_frontend_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_frontend_arlock : in STD_LOGIC;
    io_frontend_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_frontend_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_frontend_rready : in STD_LOGIC;
    io_frontend_rvalid : out STD_LOGIC;
    io_frontend_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_frontend_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    io_frontend_rlast : out STD_LOGIC;
    io_frontend_rid : out STD_LOGIC;
    io_frontend_ruser : out STD_LOGIC;
    io_meip : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_ila_WBUpc : out STD_LOGIC_VECTOR ( 38 downto 0 );
    io_ila_WBUvalid : out STD_LOGIC;
    io_ila_WBUrfWen : out STD_LOGIC;
    io_ila_WBUrfDest : out STD_LOGIC_VECTOR ( 4 downto 0 );
    io_ila_WBUrfData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    io_ila_InstrCnt : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end nutshell_NutShell_0_0;

architecture stub of nutshell_NutShell_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,reset,io_mem_awready,io_mem_awvalid,io_mem_awaddr[31:0],io_mem_awprot[2:0],io_mem_awid,io_mem_awuser,io_mem_awlen[7:0],io_mem_awsize[2:0],io_mem_awburst[1:0],io_mem_awlock,io_mem_awcache[3:0],io_mem_awqos[3:0],io_mem_wready,io_mem_wvalid,io_mem_wdata[63:0],io_mem_wstrb[7:0],io_mem_wlast,io_mem_bready,io_mem_bvalid,io_mem_bresp[1:0],io_mem_bid,io_mem_buser,io_mem_arready,io_mem_arvalid,io_mem_araddr[31:0],io_mem_arprot[2:0],io_mem_arid,io_mem_aruser,io_mem_arlen[7:0],io_mem_arsize[2:0],io_mem_arburst[1:0],io_mem_arlock,io_mem_arcache[3:0],io_mem_arqos[3:0],io_mem_rready,io_mem_rvalid,io_mem_rresp[1:0],io_mem_rdata[63:0],io_mem_rlast,io_mem_rid,io_mem_ruser,io_mmio_awready,io_mmio_awvalid,io_mmio_awaddr[31:0],io_mmio_awprot[2:0],io_mmio_awid,io_mmio_awuser,io_mmio_awlen[7:0],io_mmio_awsize[2:0],io_mmio_awburst[1:0],io_mmio_awlock,io_mmio_awcache[3:0],io_mmio_awqos[3:0],io_mmio_wready,io_mmio_wvalid,io_mmio_wdata[63:0],io_mmio_wstrb[7:0],io_mmio_wlast,io_mmio_bready,io_mmio_bvalid,io_mmio_bresp[1:0],io_mmio_bid,io_mmio_buser,io_mmio_arready,io_mmio_arvalid,io_mmio_araddr[31:0],io_mmio_arprot[2:0],io_mmio_arid,io_mmio_aruser,io_mmio_arlen[7:0],io_mmio_arsize[2:0],io_mmio_arburst[1:0],io_mmio_arlock,io_mmio_arcache[3:0],io_mmio_arqos[3:0],io_mmio_rready,io_mmio_rvalid,io_mmio_rresp[1:0],io_mmio_rdata[63:0],io_mmio_rlast,io_mmio_rid,io_mmio_ruser,io_frontend_awready,io_frontend_awvalid,io_frontend_awaddr[31:0],io_frontend_awprot[2:0],io_frontend_awid,io_frontend_awuser,io_frontend_awlen[7:0],io_frontend_awsize[2:0],io_frontend_awburst[1:0],io_frontend_awlock,io_frontend_awcache[3:0],io_frontend_awqos[3:0],io_frontend_wready,io_frontend_wvalid,io_frontend_wdata[63:0],io_frontend_wstrb[7:0],io_frontend_wlast,io_frontend_bready,io_frontend_bvalid,io_frontend_bresp[1:0],io_frontend_bid,io_frontend_buser,io_frontend_arready,io_frontend_arvalid,io_frontend_araddr[31:0],io_frontend_arprot[2:0],io_frontend_arid,io_frontend_aruser,io_frontend_arlen[7:0],io_frontend_arsize[2:0],io_frontend_arburst[1:0],io_frontend_arlock,io_frontend_arcache[3:0],io_frontend_arqos[3:0],io_frontend_rready,io_frontend_rvalid,io_frontend_rresp[1:0],io_frontend_rdata[63:0],io_frontend_rlast,io_frontend_rid,io_frontend_ruser,io_meip[1:0],io_ila_WBUpc[38:0],io_ila_WBUvalid,io_ila_WBUrfWen,io_ila_WBUrfDest[4:0],io_ila_WBUrfData[63:0],io_ila_InstrCnt[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "NutShell,Vivado 2019.1";
begin
end;
