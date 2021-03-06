# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    set ::env(RT_TMP) "./.Xil/Vivado-8724-DESKTOP-AI64EI3/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a35tcpg236-1

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog {
      ./.Xil/Vivado-8724-DESKTOP-AI64EI3/realtime/clk_wiz_0_stub.v
      ./.Xil/Vivado-8724-DESKTOP-AI64EI3/realtime/DIV_32_32_stub.v
      ./.Xil/Vivado-8724-DESKTOP-AI64EI3/realtime/blk_mem_gen_0_stub.v
      H:/Desktop/OV7670_XY_ok1/OV7670_1/OV7670_1.srcs/sources_1/new/cfg_reg.v
      H:/Desktop/OV7670_XY_ok1/OV7670_1/OV7670_1.srcs/sources_1/new/SCCB_sender.v
      H:/Desktop/OV7670_XY_ok1/OV7670_1/OV7670_1.srcs/sources_1/new/Motor_position_detect.v
      H:/Desktop/OV7670_XY_ok1/OV7670_1/OV7670_1.srcs/sources_1/new/Moter_Y.v
      H:/Desktop/OV7670_XY_ok1/OV7670_1/OV7670_1.srcs/sources_1/new/Moter_X.v
      H:/Desktop/OV7670_XY_ok1/OV7670_1/OV7670_1.srcs/sources_1/new/Coordinate_calculate.v
      H:/Desktop/OV7670_XY_ok1/OV7670_1/OV7670_1.srcs/sources_1/new/cfg_ov7670.v
      H:/Desktop/OV7670_XY_ok1/OV7670_1/OV7670_1.srcs/sources_1/new/VGA.v
      H:/Desktop/OV7670_XY_ok1/OV7670_1/OV7670_1.srcs/sources_1/new/DATA_processing.v
      H:/Desktop/OV7670_XY_ok1/OV7670_1/OV7670_1.srcs/sources_1/new/ov7670_vga.v
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top ov7670_vga
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-8724-DESKTOP-AI64EI3/"
    if {$rt::useElabCache == false} {
      rt::run_rtlelab -module $rt::top
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }

    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
    }


    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
