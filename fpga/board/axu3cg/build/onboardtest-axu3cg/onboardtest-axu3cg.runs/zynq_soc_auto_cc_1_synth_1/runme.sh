#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/media/stu/diska/SDK/2019.1/bin:/media/stu/diska/Vivado/2019.1/ids_lite/ISE/bin/lin64:/media/stu/diska/Vivado/2019.1/bin
else
  PATH=/media/stu/diska/SDK/2019.1/bin:/media/stu/diska/Vivado/2019.1/ids_lite/ISE/bin/lin64:/media/stu/diska/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.runs/zynq_soc_auto_cc_1_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log zynq_soc_auto_cc_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source zynq_soc_auto_cc_1.tcl
