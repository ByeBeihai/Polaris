# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xczu3cg-sfvc784-1-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.cache/wt [current_project]
set_property parent.project_path /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog /home/stu/NutShell/fpga/lib/include/axi.vh
set_property is_global_include true [get_files /home/stu/NutShell/fpga/lib/include/axi.vh]
read_verilog -library xil_defaultlib -sv {
  /home/stu/NutShell/build/DifftestRunaheadEvent.v
  /home/stu/NutShell/build/DifftestRunaheadRedirectEvent.v
}
read_verilog -library xil_defaultlib {
  /home/stu/NutShell/build/build/array_ext.v
  /home/stu/NutShell/build/TopMain.v
  /home/stu/NutShell/fpga/board/axu3cg/rtl/addr_mapper.v
  /home/stu/NutShell/fpga/board/axu3cg/rtl/hdmi/i2c_config.v
  /home/stu/NutShell/fpga/board/axu3cg/rtl/hdmi/i2c_master_defines.v
  /home/stu/NutShell/fpga/board/axu3cg/rtl/hdmi/i2c_master_bit_ctrl.v
  /home/stu/NutShell/fpga/board/axu3cg/rtl/hdmi/i2c_master_byte_ctrl.v
  /home/stu/NutShell/fpga/board/axu3cg/rtl/hdmi/i2c_master_top.v
  /home/stu/NutShell/fpga/board/axu3cg/rtl/system_top.v
}
add_files /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/nutshell.bd
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_axi_protocol_convert_0_0/nutshell_axi_protocol_convert_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_axi_protocol_convert_1_0/nutshell_axi_protocol_convert_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_system_ila_0_0/nutshell_system_ila_0_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_system_ila_0_0/bd_0/ip/ip_0/bd_cef6_ila_lib_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_system_ila_0_0/bd_0/bd_cef6_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_auto_cc_0/nutshell_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_auto_cc_0/nutshell_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_auto_cc_0/nutshell_auto_cc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_auto_cc_1/nutshell_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_auto_cc_1/nutshell_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_auto_cc_1/nutshell_auto_cc_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_auto_cc_2/nutshell_auto_cc_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_auto_cc_2/nutshell_auto_cc_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/ip/nutshell_auto_cc_2/nutshell_auto_cc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/nutshell/nutshell_ooc.xdc]

add_files /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/zynq_soc.bd
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_clk50rst_0/zynq_soc_clk50rst_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_clk50rst_0/zynq_soc_clk50rst_0.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_clk50rst_0/zynq_soc_clk50rst_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_clk_wiz_0_0/zynq_soc_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_clk_wiz_0_0/zynq_soc_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_clk_wiz_0_0/zynq_soc_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_uncorerst_0/zynq_soc_uncorerst_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_uncorerst_0/zynq_soc_uncorerst_0.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_uncorerst_0/zynq_soc_uncorerst_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_dma_rvcore_0/zynq_soc_axi_dma_rvcore_0.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_dma_rvcore_0/zynq_soc_axi_dma_rvcore_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_dma_rvcore_0/zynq_soc_axi_dma_rvcore_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_xbar_0/zynq_soc_xbar_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_0/zynq_soc_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_0/zynq_soc_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_0/zynq_soc_auto_us_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_1/zynq_soc_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_1/zynq_soc_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_1/zynq_soc_auto_us_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_2/zynq_soc_auto_us_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_2/zynq_soc_auto_us_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_2/zynq_soc_auto_us_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_xbar_1/zynq_soc_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_pc_0/zynq_soc_auto_pc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_ds_0/zynq_soc_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_ds_0/zynq_soc_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_ds_0/zynq_soc_auto_ds_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_ds_1/zynq_soc_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_ds_1/zynq_soc_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_ds_1/zynq_soc_auto_ds_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_cc_0/zynq_soc_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_cc_0/zynq_soc_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_cc_0/zynq_soc_auto_cc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_cc_1/zynq_soc_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_cc_1/zynq_soc_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_cc_1/zynq_soc_auto_cc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_uartlite_0_0/zynq_soc_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_uartlite_0_0/zynq_soc_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_uartlite_0_0/zynq_soc_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_dma_arm_0/zynq_soc_axi_dma_arm_0.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_dma_arm_0/zynq_soc_axi_dma_arm_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_dma_arm_0/zynq_soc_axi_dma_arm_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_xbar_2/zynq_soc_xbar_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_3/zynq_soc_auto_us_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_3/zynq_soc_auto_us_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_3/zynq_soc_auto_us_3_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_4/zynq_soc_auto_us_4_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_4/zynq_soc_auto_us_4_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_4/zynq_soc_auto_us_4_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_5/zynq_soc_auto_us_5_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_5/zynq_soc_auto_us_5_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_us_5/zynq_soc_auto_us_5_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_s00_mmu_0/zynq_soc_s00_mmu_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_s01_mmu_0/zynq_soc_s01_mmu_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_s02_mmu_0/zynq_soc_s02_mmu_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_s03_mmu_0/zynq_soc_s03_mmu_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_xbar_3/zynq_soc_xbar_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_auto_pc_1/zynq_soc_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_uartlite_0_1/zynq_soc_axi_uartlite_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_uartlite_0_1/zynq_soc_axi_uartlite_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_axi_uartlite_0_1/zynq_soc_axi_uartlite_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_corerst_0/zynq_soc_corerst_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_corerst_0/zynq_soc_corerst_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_corerst_0/zynq_soc_corerst_0.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_zynq_ultra_ps_e_0_0/zynq_soc_zynq_ultra_ps_e_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_zynq_ultra_ps_e_0_0/zynq_soc_zynq_ultra_ps_e_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/stu/NutShell/fpga/board/axu3cg/build/onboardtest-axu3cg/onboardtest-axu3cg.srcs/sources_1/bd/zynq_soc/zynq_soc_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/stu/NutShell/fpga/board/axu3cg/constr/hdmi.xdc
set_property used_in_implementation false [get_files /home/stu/NutShell/fpga/board/axu3cg/constr/hdmi.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top system_top -part xczu3cg-sfvc784-1-e -flatten_hierarchy none


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file system_top_utilization_synth.rpt -pb system_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
