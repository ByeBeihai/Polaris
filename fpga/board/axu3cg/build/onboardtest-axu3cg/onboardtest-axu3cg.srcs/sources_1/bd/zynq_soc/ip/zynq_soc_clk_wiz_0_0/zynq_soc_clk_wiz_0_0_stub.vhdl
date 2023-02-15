-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Aug 16 11:37:19 2022
-- Host        : stu running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_clk_wiz_0_0/zynq_soc_clk_wiz_0_0_stub.vhdl
-- Design      : zynq_soc_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zynq_soc_clk_wiz_0_0 is
  Port ( 
    coreclk : out STD_LOGIC;
    uncoreclk : out STD_LOGIC;
    clk40 : out STD_LOGIC;
    clk27 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end zynq_soc_clk_wiz_0_0;

architecture stub of zynq_soc_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "coreclk,uncoreclk,clk40,clk27,resetn,locked,clk_in1";
begin
end;
