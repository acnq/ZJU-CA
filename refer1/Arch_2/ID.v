`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:06:29 09/30/2019 
// Design Name: 
// Module Name:    ID 
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
module ID(
	input [31:0]id_inst,
	input [31:0]id_pc_4,
	output [31:0]id_pc_out,
	output WriteReg,
	output MemToReg,
	output writeMem,
	output Branch,
	output Regrt,
	output AluC,
	output Aluimm,
	output [31:0]imm_32,
	output A,
	output B, 
	output rd,
	output rt
    );
	 
	wire [5:0]func;
	wire [5:0]op;
	wire [4:0]rs;
	wire [4:0]rt;
	wire [4:0]rd;
	wire [15:0]imm;
	
	assign func = id_inst[5:0];
	assign op = id_inst[31:26];
	assign rs = id_inst[25:21];
	assign rt = id_inst[20:16];
	assign rd = id_inst[15:11];
	assign imm = id_inst[15:0];
	
	ControlUnit ControlUnit(
	);
	


endmodule
