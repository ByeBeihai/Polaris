-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Aug 16 11:32:26 2022
-- Host        : stu running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_AXI4VGA_0_0/zynq_soc_AXI4VGA_0_0_stub.vhdl
-- Design      : zynq_soc_AXI4VGA_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zynq_soc_AXI4VGA_0_0 is
  Port ( 
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    io_in_fb_awready : out STD_LOGIC;
    io_in_fb_awvalid : in STD_LOGIC;
    io_in_fb_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_in_fb_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_in_fb_wready : out STD_LOGIC;
    io_in_fb_wvalid : in STD_LOGIC;
    io_in_fb_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    io_in_fb_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_in_fb_bready : in STD_LOGIC;
    io_in_fb_bvalid : out STD_LOGIC;
    io_in_fb_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_in_fb_arready : out STD_LOGIC;
    io_in_fb_arvalid : in STD_LOGIC;
    io_in_fb_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_in_fb_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_in_fb_rready : in STD_LOGIC;
    io_in_fb_rvalid : out STD_LOGIC;
    io_in_fb_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_in_fb_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    io_in_ctrl_awready : out STD_LOGIC;
    io_in_ctrl_awvalid : in STD_LOGIC;
    io_in_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_in_ctrl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_in_ctrl_wready : out STD_LOGIC;
    io_in_ctrl_wvalid : in STD_LOGIC;
    io_in_ctrl_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    io_in_ctrl_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_in_ctrl_bready : in STD_LOGIC;
    io_in_ctrl_bvalid : out STD_LOGIC;
    io_in_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_in_ctrl_arready : out STD_LOGIC;
    io_in_ctrl_arvalid : in STD_LOGIC;
    io_in_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_in_ctrl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_in_ctrl_rready : in STD_LOGIC;
    io_in_ctrl_rvalid : out STD_LOGIC;
    io_in_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_in_ctrl_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    io_vga_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    io_vga_hsync : out STD_LOGIC;
    io_vga_vsync : out STD_LOGIC;
    io_vga_valid : out STD_LOGIC
  );

end zynq_soc_AXI4VGA_0_0;

architecture stub of zynq_soc_AXI4VGA_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,reset,io_in_fb_awready,io_in_fb_awvalid,io_in_fb_awaddr[31:0],io_in_fb_awprot[2:0],io_in_fb_wready,io_in_fb_wvalid,io_in_fb_wdata[63:0],io_in_fb_wstrb[7:0],io_in_fb_bready,io_in_fb_bvalid,io_in_fb_bresp[1:0],io_in_fb_arready,io_in_fb_arvalid,io_in_fb_araddr[31:0],io_in_fb_arprot[2:0],io_in_fb_rready,io_in_fb_rvalid,io_in_fb_rresp[1:0],io_in_fb_rdata[63:0],io_in_ctrl_awready,io_in_ctrl_awvalid,io_in_ctrl_awaddr[31:0],io_in_ctrl_awprot[2:0],io_in_ctrl_wready,io_in_ctrl_wvalid,io_in_ctrl_wdata[63:0],io_in_ctrl_wstrb[7:0],io_in_ctrl_bready,io_in_ctrl_bvalid,io_in_ctrl_bresp[1:0],io_in_ctrl_arready,io_in_ctrl_arvalid,io_in_ctrl_araddr[31:0],io_in_ctrl_arprot[2:0],io_in_ctrl_rready,io_in_ctrl_rvalid,io_in_ctrl_rresp[1:0],io_in_ctrl_rdata[63:0],io_vga_rgb[23:0],io_vga_hsync,io_vga_vsync,io_vga_valid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AXI4VGA,Vivado 2019.1";
begin
end;
