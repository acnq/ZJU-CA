-makelib ies_lib/xil_defaultlib -sv \
  "/home/lovesy/Application/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/home/lovesy/Application/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_0 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../EXP5_Vivado.srcs/sources_1/ip/RAM_B/sim/RAM_B.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib
