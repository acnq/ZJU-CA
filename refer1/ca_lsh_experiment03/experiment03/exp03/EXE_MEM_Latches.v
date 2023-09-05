`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:24:33 10/21/2019 
// Design Name: 
// Module Name:    EXE_MEM_Latches 
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
module EXE_MEM_Latches(
	input wire [2:0] EXE_JumpBranch,
	output reg [2:0] MEM_JumpBranch,
	input wire [1:0] EXE_DatatoReg,
	output reg [1:0] MEM_DatatoReg,
	input wire [0:0] EXE_RegWrite,
	output reg [0:0] MEM_RegWrite,
	input wire [0:0] EXE_MemWrite,
	output reg [0:0] MEM_MemWrite,
	input wire [31:0] EXE_PCFour,
	output reg [31:0] MEM_PCFour,
	input wire [4:0] EXE_Rdes,
	output reg [4:0] MEM_Rdes,
	input wire [31:0] EXE_RDataA,
	output reg [31:0] MEM_RDataA,
	input wire [31:0] EXE_RDataB,
	output reg [31:0] MEM_RDataB,
	input wire [31:0] EXE_JumpPC,
	output reg [31:0] MEM_JumpPC,
	input wire [31:0] EXE_BranchPC,
	output reg [31:0] MEM_BranchPC,
	input wire [0:0] EXE_Zero,
	output reg [0:0] MEM_Zero,
	input wire [31:0] EXE_Res,
	output reg [31:0] MEM_Res,
	input wire [31:0] EXE_LuiData,
	output reg [31:0] MEM_LuiData,
	input wire [31:0] EXE_Inst,
	output reg [31:0] MEM_Inst,
	input wire [31:0] EXE_ALUOut,
	output reg [31:0] MEM_ALUOut,
	input wire EXE_LW,
	output reg MEM_LW,
	input wire EXE_REALMe,
	output reg MEM_REALMe,
	input wire EXE_shouldstall,
	input clk,
	input rst
	);
	always @ (posedge clk or posedge rst) begin
		if(rst || EXE_shouldstall) begin
			MEM_JumpBranch <= 0;
			MEM_DatatoReg <= 0;
			MEM_RegWrite <= 0;
			MEM_MemWrite <= 0;
			MEM_PCFour <= 0;
			MEM_Rdes <= 0;
			MEM_RDataA <= 0;
			MEM_RDataB <= 0;
			MEM_JumpPC <= 0;
			MEM_BranchPC <= 0;
			MEM_Zero <= 0;
			MEM_Res <= 0;
			MEM_LuiData <= 0;
			MEM_Inst <= 0;
			MEM_ALUOut <= 0;
			MEM_LW <= 0;
			MEM_REALMe <= 0;
		end
		else begin
			MEM_JumpBranch <= EXE_JumpBranch;
			MEM_DatatoReg <= EXE_DatatoReg;
			MEM_RegWrite <= EXE_RegWrite;
			MEM_MemWrite <= EXE_MemWrite;
			MEM_PCFour <= EXE_PCFour;
			MEM_Rdes <= EXE_Rdes;
			MEM_RDataA <= EXE_RDataA;
			MEM_RDataB <= EXE_RDataB;
			MEM_JumpPC <= EXE_JumpPC;
			MEM_BranchPC <= EXE_BranchPC;
			MEM_Zero <= EXE_Zero;
			MEM_Res <= EXE_Res;
			MEM_LuiData <= EXE_LuiData;
			MEM_Inst <= EXE_Inst;
			MEM_ALUOut <= EXE_ALUOut;
			MEM_LW <= EXE_LW;
			MEM_REALMe <= EXE_REALMe;
		end
	end
endmodule
