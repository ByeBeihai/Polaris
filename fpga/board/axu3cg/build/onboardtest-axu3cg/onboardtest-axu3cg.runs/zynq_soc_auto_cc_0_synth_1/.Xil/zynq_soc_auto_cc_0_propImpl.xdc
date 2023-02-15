set_property SRC_FILE_INFO {cfile:/media/stu/diska/Vivado/2019.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../../../../media/stu/diska/Vivado/2019.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:1 order:LATE scoped_inst:inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_ar/handshake unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/media/stu/diska/Vivado/2019.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../../../../media/stu/diska/Vivado/2019.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:2 order:LATE scoped_inst:inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_aw/handshake unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/media/stu/diska/Vivado/2019.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../../../../media/stu/diska/Vivado/2019.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:3 order:LATE scoped_inst:inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_w/handshake unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/media/stu/diska/Vivado/2019.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../../../../media/stu/diska/Vivado/2019.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:4 order:LATE scoped_inst:inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_resp_b/handshake unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/media/stu/diska/Vivado/2019.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../../../../media/stu/diska/Vivado/2019.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:5 order:LATE scoped_inst:inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_resp_r/handshake unmanaged:yes} [current_design]
current_instance inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_ar/handshake
set_property src_info {type:SCOPED_XDC file:1 line:30 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -scoped -type CDC -id {CDC-15} -user "xpm_cdc" -tags "1009444" -desc "The CDC-15 warning is waived as it is safe in the context of XPM_CDC_HANDSHAKE." -from [get_pins -quiet {src_hsdata_ff_reg*/C}] -to [get_pins -quiet {dest_hsdata_ff_reg*/D}]
current_instance
current_instance inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_aw/handshake
set_property src_info {type:SCOPED_XDC file:2 line:30 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -scoped -type CDC -id {CDC-15} -user "xpm_cdc" -tags "1009444" -desc "The CDC-15 warning is waived as it is safe in the context of XPM_CDC_HANDSHAKE." -from [get_pins -quiet {src_hsdata_ff_reg*/C}] -to [get_pins -quiet {dest_hsdata_ff_reg*/D}]
current_instance
current_instance inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_w/handshake
set_property src_info {type:SCOPED_XDC file:3 line:30 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -scoped -type CDC -id {CDC-15} -user "xpm_cdc" -tags "1009444" -desc "The CDC-15 warning is waived as it is safe in the context of XPM_CDC_HANDSHAKE." -from [get_pins -quiet {src_hsdata_ff_reg*/C}] -to [get_pins -quiet {dest_hsdata_ff_reg*/D}]
current_instance
current_instance inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_resp_b/handshake
set_property src_info {type:SCOPED_XDC file:4 line:30 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -scoped -type CDC -id {CDC-15} -user "xpm_cdc" -tags "1009444" -desc "The CDC-15 warning is waived as it is safe in the context of XPM_CDC_HANDSHAKE." -from [get_pins -quiet {src_hsdata_ff_reg*/C}] -to [get_pins -quiet {dest_hsdata_ff_reg*/D}]
current_instance
current_instance inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_resp_r/handshake
set_property src_info {type:SCOPED_XDC file:5 line:30 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -scoped -type CDC -id {CDC-15} -user "xpm_cdc" -tags "1009444" -desc "The CDC-15 warning is waived as it is safe in the context of XPM_CDC_HANDSHAKE." -from [get_pins -quiet {src_hsdata_ff_reg*/C}] -to [get_pins -quiet {dest_hsdata_ff_reg*/D}]
