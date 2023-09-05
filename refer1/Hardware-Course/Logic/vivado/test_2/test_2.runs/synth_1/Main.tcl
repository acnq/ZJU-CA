# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k160tfbg676-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Users/Shana/Desktop/vivado/test_2/test_2.cache/wt [current_project]
set_property parent.project_path D:/Users/Shana/Desktop/vivado/test_2/test_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/Users/Shana/Desktop/vivado/test_2/test_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/tocell.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/random.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/nestDisp.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/mouseDisp.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/aroundCell.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/clkdiv.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/vgaSync.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/addMap.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/chnest.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/nest.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/mode.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/initialNest.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/display.v
  D:/Users/Shana/Desktop/vivado/test_2/test_2.srcs/sources_1/imports/new/Main.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top Main -part xc7k160tfbg676-2L


write_checkpoint -force -noxdef Main.dcp

catch { report_utilization -file Main_utilization_synth.rpt -pb Main_utilization_synth.pb }
