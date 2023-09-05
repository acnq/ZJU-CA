`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:47 10/21/2019 
// Design Name: 
// Module Name:    ID_EXE_Latches 
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
module ID_EXE_Latches(
	input wire ID_ALUSrcA,
	output reg EXE_ALUSrcA,
	input wire ID_ALUSrcB,
	output reg EXE_ALUSrcB,
	input wire ID_EXTLog,
	output reg EXE_EXTLog,
	input wire ID_RegDst,
	output reg EXE_RegDst,
	input wire ID_Jal,
	output reg EXE_Jal,
	input wire [3:0] ID_ALUControl,
	output reg [3:0] EXE_ALUControl,
	input wire [2:0] ID_JumpBranch,
	output reg [2:0] EXE_JumpBranch,
	input wire [1:0] ID_DatatoReg,
	output reg [1:0] EXE_DatatoReg,
	input wire ID_RegWrite,
	output reg EXE_RegWrite,
	input wire ID_MemWrite,
	output reg EXE_MemWrite,
	input wire [31:0] ID_PCFour,
	output reg [31:0] EXE_PCFour,
	input wire [4:0] ID_Rt,
	output reg [4:0] EXE_Rt,
	input wire [4:0] ID_Rd,
	output reg [4:0] EXE_Rd,
	input wire [31:0] ID_RDataA,
	output reg [31:0] EXE_RDataA,
	input wire [31:0] ID_RDataB,
	output reg [31:0] EXE_RDataB,
	input wire [31:0] ID_JumpPC,
	output reg [31:0] EXE_JumpPC,
	input wire [15:0] ID_Imm_16,
	output reg [15:0] EXE_Imm_16,
	input clk,
	input rst,
	input wire [31:0] ID_Inst,
	output reg [31:0] EXE_Inst,
	input ID_shouldstall
	);
	always @ (posedge clk or posedge rst) begin
		if(rst || ID_shouldstall) begin
			EXE_ALUSrcA <= 0;
			EXE_ALUSrcB <= 0;
			EXE_EXTLog <= 0;
			EXE_RegDst <= 0;
			EXE_Jal <= 0;
			EXE_ALUControl <= 0;
			EXE_JumpBranch <= 0;
			EXE_DatatoReg <= 0;
			EXE_RegWrite <= 0;
			EXE_MemWrite <= 0;
			EXE_PCFour <= 0;
			EXE_Rt <= 0;
			EXE_Rd <= 0;
			EXE_RDataA <= 0;
			EXE_RDataB <= 0;
			EXE_JumpPC <= 0;
			EXE_Imm_16 <= 0;
			EXE_Inst <= 0;
		end
		else begin
			EXE_ALUSrcA <= ID_ALUSrcA;
			EXE_ALUSrcB <= ID_ALUSrcB;
			EXE_EXTLog <= ID_EXTLog;
			EXE_RegDst <= ID_RegDst;
			EXE_Jal <= ID_Jal;
			EXE_ALUControl <= ID_ALUControl;
			EXE_JumpBranch <= ID_JumpBranch;
			EXE_DatatoReg <= ID_DatatoReg;
			EXE_RegWrite <= ID_RegWrite;
			EXE_MemWrite <= ID_MemWrite;
			EXE_PCFour <= ID_PCFour;
			EXE_Rt <= ID_Rt;
			EXE_Rd <= ID_Rd;
			EXE_RDataA <= ID_RDataA;
			EXE_RDataB <= ID_RDataB;
			EXE_JumpPC <= ID_JumpPC;
			EXE_Imm_16 <= ID_Imm_16;
			EXE_Inst <= ID_Inst;
		end
	end
endmodule
