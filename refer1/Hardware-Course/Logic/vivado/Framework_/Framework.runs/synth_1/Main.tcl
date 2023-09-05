# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k160tfbg676-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/vivado/Framework/Framework.cache/wt [current_project]
set_property parent.project_path F:/vivado/Framework/Framework.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo f:/vivado/Framework/Framework.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  F:/vivado/Framework/Framework.srcs/sources_1/MC14495_ZJU.vf
  F:/vivado/Framework/Framework.srcs/sources_1/Hex2Seg.v
  F:/vivado/Framework/Framework.srcs/sources_1/LED_P2S_IO.v
  F:/vivado/Framework/Framework.srcs/sources_1/Multi_8CH32.v
  F:/vivado/Framework/Framework.srcs/sources_1/PIO.v
  F:/vivado/Framework/Framework.srcs/sources_1/MUXHM.v
  F:/vivado/Framework/Framework.srcs/sources_1/HexTo8SEG8.v
  F:/vivado/Framework/Framework.srcs/sources_1/SEnter_2_32_IO.v
  F:/vivado/Framework/Framework.srcs/sources_1/SAnti_jitter_IO.v
  F:/vivado/Framework/Framework.srcs/sources_1/MUX2T1_64.v
  F:/vivado/Framework/Framework.srcs/sources_1/GPIO.v
  F:/vivado/Framework/Framework.srcs/sources_1/clkdiv.v
  F:/vivado/Framework/Framework.srcs/sources_1/SSeg_map.v
  F:/vivado/Framework/Framework.srcs/sources_1/P2S_IO.v
  F:/vivado/Framework/Framework.srcs/sources_1/Seg_map.v
  F:/vivado/Framework/Framework.srcs/sources_1/Main.vf
}
read_edif F:/vivado/Framework/Framework.srcs/sources_1/ip/LED_P2S.ngc
read_edif F:/vivado/Framework/Framework.srcs/sources_1/ip/SEnter_2_32.ngc
read_edif F:/vivado/Framework/Framework.srcs/sources_1/ip/SAnti_jitter.ngc
read_edif F:/vivado/Framework/Framework.srcs/sources_1/ip/P2S.ngc
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc F:/vivado/Framework/Framework.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files F:/vivado/Framework/Framework.srcs/constrs_1/new/constraints.xdc]


synth_design -top Main -part xc7k160tfbg676-2L


write_checkpoint -force -noxdef Main.dcp

catch { report_utilization -file Main_utilization_synth.rpt -pb Main_utilization_synth.pb }