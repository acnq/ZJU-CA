`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:21:51 12/16/2019 
// Design Name: 
// Module Name:    IfStage 
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
module IfStage (

		input clock,

		input [31:0] pc,

		input id_shouldJumpOrBranch,	// BRANCH
		input [31:0] id_jumpOrBranchPc,

		output [31:0] pc_4,

		//output [31:0] instruction,
		input[31:0] instruction,

		output [31:0] nextPc
	);

	assign pc_4 = pc + 4;
/*
	InstructionMemory instructionMemory (
		.clka(~clock),
		.addra(pc[9:2]),
		.douta(instruction[31:0])
	);
*/
	assign nextPc = id_shouldJumpOrBranch ? id_jumpOrBranchPc : pc_4;
endmodule

