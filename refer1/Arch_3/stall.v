`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:47 10/23/2019 
// Design Name: 
// Module Name:    STALL 
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
module STALL(
	input wire [1:0]FINAL_Branch,
	input wire [2:0]EXE_JumpBranch,
	input wire ReadRs,
	input wire ReadRt,
	input wire [4:0]EXE_Rdes,
	input wire [4:0]MEM_Rdes,
	input wire EXE_RegWrite,
	input wire MEM_RegWrite,
	input wire [4:0]Rt,
	input wire [4:0]Rs,
	output reg PC_shouldstall,
	output reg ID_shouldstall,
	output reg [1:0]IF_shouldstall,
	output reg EXE_shouldstall
	 );
	
	wire MEM_Branch;
	wire EXE_Branch;
	wire EXE_DataHazard;
	wire MEM_DataHazard;
	
	assign MEM_Branch = (FINAL_Branch == 2'b01 || FINAL_Branch == 2'b10 || FINAL_Branch == 2'b11);
	assign EXE_Branch = (EXE_JumpBranch == 3'b001 || EXE_JumpBranch == 3'b010 || EXE_JumpBranch == 3'b011 || EXE_JumpBranch == 3'b100);
	assign EXE_DataHazard = ((ReadRs && (Rs == EXE_Rdes)) || (ReadRt && (Rt == EXE_Rdes))) && EXE_RegWrite;
	assign MEM_DataHazard = ((ReadRs && (Rs == MEM_Rdes)) || (ReadRt && (Rt == MEM_Rdes))) && MEM_RegWrite;
	always@* begin
		if (MEM_Branch) begin
			PC_shouldstall <= 1'b0;
			IF_shouldstall <= 2'b10;
			ID_shouldstall <= 1'b1;
			EXE_shouldstall <= 1'b1;
		end else begin
			if(EXE_DataHazard || MEM_DataHazard) begin
				PC_shouldstall <= 1'b1;
				IF_shouldstall <= 2'b01;
				ID_shouldstall <= 1'b1;
				EXE_shouldstall <= 1'b0;
			end
			else begin
				PC_shouldstall <= 1'b0;
				IF_shouldstall <= 2'b00;
				ID_shouldstall <= 1'b0;
				EXE_shouldstall <= 1'b0;
			end
		end
	end
endmodule
