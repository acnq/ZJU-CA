# 
# Synthesis run script generated by Vivado
# 

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
create_project -in_memory -part xc7k325tffg676-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/Vivado/EXP1/EXP1.cache/wt [current_project]
set_property parent.project_path F:/Vivado/EXP1/EXP1.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo f:/Vivado/EXP1/EXP1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files f:/Vivado/EXP1/EXP1.srcs/sources_1/ip/ROM_D/ROM_D.coe
add_files f:/Vivado/EXP1/EXP1.srcs/sources_1/ip/RAM_B/RAM_B.coe
read_verilog -library xil_defaultlib {
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/ALU.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/Ext_32.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/MUX2T1_32.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/MUX2T1_5.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/MUX4T1_32.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/MUX8T1_32.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/Reg32.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/Regs.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/SAnti_jitter.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/SCPU.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/SEnter_2_32.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/add_32.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/clk_div.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/vga.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/vga_debug.v
  F:/Vivado/EXP1/EXP1.srcs/sources_1/new/Main.v
}
read_ip -quiet f:/Vivado/EXP1/EXP1.srcs/sources_1/ip/ROM_D/ROM_D.xci
set_property used_in_implementation false [get_files -all f:/Vivado/EXP1/EXP1.srcs/sources_1/ip/ROM_D/ROM_D_ooc.xdc]

read_ip -quiet f:/Vivado/EXP1/EXP1.srcs/sources_1/ip/RAM_B/RAM_B.xci
set_property used_in_implementation false [get_files -all f:/Vivado/EXP1/EXP1.srcs/sources_1/ip/RAM_B/RAM_B_ooc.xdc]

read_edif F:/Vivado/EXP1/EXP1.srcs/sources_1/imports/SEnter_2_32.ngc
read_edif F:/Vivado/EXP1/EXP1.srcs/sources_1/imports/vga_debug.ngc
read_edif F:/Vivado/EXP1/EXP1.srcs/sources_1/imports/SAnti_jitter.ngc
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc F:/Vivado/EXP1/EXP1.srcs/constrs_1/new/framework.xdc
set_property used_in_implementation false [get_files F:/Vivado/EXP1/EXP1.srcs/constrs_1/new/framework.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top Main -part xc7k325tffg676-2L


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Main.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Main_utilization_synth.rpt -pb Main_utilization_synth.pb"