`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:34:19 09/30/2019 
// Design Name: 
// Module Name:    Pipelined_CPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top (input wire CCLK, BTN3, BTN2, input wire [3:0]SW, output wire LED, LCDE, LCDRS, LCDRW, output wire [3:0]LCDDAT);

module Pipelined_CPU(
	input clk,
	input reset,
	input [31:0]Data_in,
	input MIO_ready,
	input INT,
	output [31:0]inst_out,
	output [31:0]PC_out,
	output [31:0]Addr_out,
	output [31:0]Data_out,
	output mem_w,
	output CPU_MIO,
	output [4:0]state
	);

	//IF
	wire [31:0]pc;
	wire [31:0]inst;
	wire [31:0]if_pc_4;
	wire [31:0]if_inst;
	wire if_branch;
	wire [31:0]id_pc_4;
	wire [31:0]id_inst;
	wire [31:0]NPC;
	
	IF IF(.clk(clk),
			.if_branch(if_branch),
			.NPC(NPC),
			.BPC(),
			.PC(pc),
			.IF_inst(inst),
			.IF_inst_out(if_inst),
			.PC_4(if_pc_4)
			);
	
	IF_ID IF_ID(.clk(clk),
					.rst(reset),
					.if_pc_4(if_pc_4),
					.if_inst(if_inst),
					.id_pc_4(id_pc_4),
					.id_inst(id_inst)
					);
					
	ID ID(
	
	);
	
	EXE EXE(
	
	);
	
	MEM MEM(
	
	);
	
	WB WB(
	
	);


endmodule
