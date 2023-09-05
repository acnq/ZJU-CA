// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
// Date        : Mon Dec 25 17:10:37 2017
// Host        : lovesy-ubuntu running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ROM_D_sim_netlist.v
// Design      : ROM_D
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_D,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire [9:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ROM_D.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "10" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "1024" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "kintex7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "ROM_D.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [9:0]a;
  input [31:0]d;
  input [9:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [9:0]a;
  wire [31:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31:9] = \^spo [31:9];
  assign spo[8] = \^spo [9];
  assign spo[7:0] = \^spo [7:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31:9],\^spo [7:0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [30:0]spo;
  input [9:0]a;

  wire [9:0]a;
  wire [30:0]spo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (spo,
    a);
  output [30:0]spo;
  input [9:0]a;

  wire [9:0]a;
  wire [30:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[30]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;

  MUXF7 \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .O(spo[0]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000000040000A00)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010006080800080)) 
    \spo[0]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808000030000000)) 
    \spo[10]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(spo[9]));
  MUXF7 \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .O(spo[10]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0011000045900000)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000220050000400)) 
    \spo[11]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  MUXF7 \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(\spo[12]_INST_0_i_2_n_0 ),
        .O(spo[11]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0011000041580000)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0300000080008000)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[14]_INST_0_i_2_n_0 ),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h3000200004000400)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[14]_INST_0_i_2_n_0 ),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h3000200044000400)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00500030A0A08080)) 
    \spo[14]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808000030000000)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[6]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[9]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \spo[15]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[6]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[9]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  MUXF7 \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .O(spo[15]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h45DC156300000000)) 
    \spo[16]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(\spo[20]_INST_0_i_2_n_0 ),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h50100000475A0000)) 
    \spo[16]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  MUXF7 \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(\spo[17]_INST_0_i_2_n_0 ),
        .O(spo[16]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h10100030800080E0)) 
    \spo[17]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC084808)) 
    \spo[17]_INST_0_i_2 
       (.I0(a[1]),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_2_n_0 ));
  MUXF7 \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_2_n_0 ),
        .O(spo[17]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h4A00600062005000)) 
    \spo[18]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001002A00)) 
    \spo[18]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  MUXF7 \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(\spo[19]_INST_0_i_2_n_0 ),
        .O(spo[18]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hFFF00000E0F00000)) 
    \spo[19]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4D57F77F00000000)) 
    \spo[19]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(\spo[20]_INST_0_i_2_n_0 ),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5080008000000000)) 
    \spo[1]_INST_0 
       (.I0(a[3]),
        .I1(\spo[1]_INST_0_i_1_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[22]_INST_0_i_1_n_0 ),
        .I5(a[4]),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h000000000000000B)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888830000000)) 
    \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(a[3]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(spo[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000444)) 
    \spo[20]_INST_0_i_1 
       (.I0(a[2]),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[20]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[9]),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  MUXF7 \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_2_n_0 ),
        .O(spo[20]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h8800C00088008300)) 
    \spo[21]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1015054700000000)) 
    \spo[21]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(\spo[20]_INST_0_i_2_n_0 ),
        .O(\spo[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000030000008080)) 
    \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(a[3]),
        .I3(\spo[22]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(spo[21]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[22]_INST_0_i_1 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[6]),
        .I4(a[2]),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[22]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[6]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[9]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  MUXF7 \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(\spo[23]_INST_0_i_2_n_0 ),
        .O(spo[22]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hEAFC0000A9EC0000)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000703070)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  MUXF7 \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(\spo[24]_INST_0_i_2_n_0 ),
        .O(spo[23]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hAE00A00028002A00)) 
    \spo[24]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5A15056700000000)) 
    \spo[24]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(\spo[20]_INST_0_i_2_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  MUXF7 \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .O(spo[24]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hAE00E00000000000)) 
    \spo[25]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000B03070)) 
    \spo[25]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  MUXF7 \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .O(spo[25]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hAA00A00000000300)) 
    \spo[26]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h008000008030B030)) 
    \spo[26]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(a[3]),
        .I3(\spo[31]_INST_0_i_3_n_0 ),
        .I4(a[5]),
        .O(spo[26]));
  LUT6 #(
    .INIT(64'h006D850500000000)) 
    \spo[27]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(\spo[20]_INST_0_i_2_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[28]_INST_0_i_2_n_0 ),
        .I3(a[5]),
        .I4(\spo[28]_INST_0_i_3_n_0 ),
        .I5(a[3]),
        .O(spo[27]));
  LUT6 #(
    .INIT(64'h4044000088000000)) 
    \spo[28]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[3]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[28]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[6]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[28]_INST_0_i_3 
       (.I0(a[2]),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .I2(a[0]),
        .I3(a[1]),
        .O(\spo[28]_INST_0_i_3_n_0 ));
  MUXF7 \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .O(spo[28]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h1106000040030000)) 
    \spo[29]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h481F056700000000)) 
    \spo[29]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(\spo[20]_INST_0_i_2_n_0 ),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  MUXF7 \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .O(spo[2]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h3040002000000000)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6038000011000000)) 
    \spo[2]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  MUXF7 \spo[30]_INST_0 
       (.I0(\spo[30]_INST_0_i_1_n_0 ),
        .I1(\spo[30]_INST_0_i_2_n_0 ),
        .O(spo[29]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h6471000015DC0000)) 
    \spo[30]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[0]),
        .O(\spo[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h050000001A980000)) 
    \spo[30]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAF00A00000C000C0)) 
    \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a[4]),
        .I3(a[3]),
        .I4(\spo[31]_INST_0_i_3_n_0 ),
        .I5(a[5]),
        .O(spo[30]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \spo[31]_INST_0_i_1 
       (.I0(a[2]),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .I2(a[0]),
        .I3(a[1]),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    \spo[31]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300000002)) 
    \spo[31]_INST_0_i_3 
       (.I0(a[2]),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_3_n_0 ));
  MUXF7 \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h1400400080008200)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04000000C800B400)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  MUXF7 \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .O(spo[4]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000C0001000E100)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000040008800B400)) 
    \spo[4]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  MUXF7 \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .O(spo[5]),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000620022002100)) 
    \spo[5]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040408080800000)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40000000)) 
    \spo[6]_INST_0 
       (.I0(a[3]),
        .I1(\spo[22]_INST_0_i_1_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_1_n_0 ),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h0540000012000000)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(\spo[20]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40000000)) 
    \spo[7]_INST_0 
       (.I0(a[3]),
        .I1(\spo[22]_INST_0_i_1_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_1_n_0 ),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h0000400016000000)) 
    \spo[7]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888833300030)) 
    \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[8]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[8]_INST_0_i_3_n_0 ),
        .I5(a[5]),
        .O(spo[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[1]),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .I2(a[2]),
        .I3(a[3]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \spo[8]_INST_0_i_2 
       (.I0(a[2]),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .I2(a[0]),
        .I3(a[1]),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[8]_INST_0_i_3 
       (.I0(a[2]),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .I2(a[0]),
        .I3(a[1]),
        .O(\spo[8]_INST_0_i_3_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif