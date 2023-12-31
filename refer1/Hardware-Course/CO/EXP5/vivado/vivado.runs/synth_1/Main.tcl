# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k160tfbg676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {E:/Learning/Computer Organization/EXP5/vivado/vivado.cache/wt} [current_project]
set_property parent.project_path {E:/Learning/Computer Organization/EXP5/vivado/vivado.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {e:/Learning/Computer Organization/EXP5/vivado/vivado.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/ip/ROM_D/ROM.coe}}
add_files {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/ip/RAM_B/RAM.coe}}
read_verilog -library xil_defaultlib {
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/GPIO.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Reg_32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Regs_8_32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Shift64.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/counter_32bit_rev.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Reg_8bit.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/xor32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/srl32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/SignalExt_32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/or_bit_32 .v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/or32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/nor32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/MUX8T1_32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/and32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/addc_32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/regs.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/REG32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Hex2Seg.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/MUX2T1_5.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/MUX2T1_32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/Ext_imm16.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Element/add_32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/SSeg_map.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Seg_map.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/P2S_IO.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/MUXHM.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/LED_P2S_IO.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/HexTo8SEG8.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/SPIO.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/SEnter_2_32_IO.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/SAnti_jitter_IO.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/PIO.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Multi_8CH32.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/MIO_BUS_IO.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Counter_3_IO.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/clkdiv.v}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/ScanSync.vf}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Data_path.vf}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Seg7_Dev.vf}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/MC14495_ZJU.vf}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Display.vf}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/MUX4T1.vf}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/ALU.vf}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/SCPU.vf}
  {E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/SCPU_ctrl.vf}
  D:/Users/Shana/Desktop/EXP7/Main.vf
  D:/Users/Shana/Desktop/EXP7/SCPU_ctrl_More.v
  D:/Users/Shana/Desktop/EXP7/Element/MUX4T1_32.v
  D:/Users/Shana/Desktop/EXP7/MUX2T1_64.v
}
read_ip -quiet {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/ip/ROM_D/ROM_D.xco}}
set_property is_locked true [get_files {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/ip/ROM_D/ROM_D.xco}}]

read_ip -quiet {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/ip/RAM_B/RAM_B.xco}}
set_property is_locked true [get_files {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/ip/RAM_B/RAM_B.xco}}]

read_edif {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/MIO_BUS.ngc}}
read_edif {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/Counter_x.ngc}}
read_edif {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/SAnti_jitter.ngc}}
read_edif {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/SEnter_2_32.ngc}}
read_edif {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/P2S.ngc}}
read_edif {{E:/Learning/Computer Organization/EXP5/vivado/vivado.srcs/sources_1/imports/EXP5/LED_P2S.ngc}}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top Main -part xc7k160tfbg676-1


write_checkpoint -force -noxdef Main.dcp

catch { report_utilization -file Main_utilization_synth.rpt -pb Main_utilization_synth.pb }
