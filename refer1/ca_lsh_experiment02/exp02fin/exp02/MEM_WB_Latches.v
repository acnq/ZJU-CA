`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:34 10/21/2019 
// Design Name: 
// Module Name:    MEM_WB_Latches 
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
module MEM_WB_Latches(
	input wire [1:0] MEM_DatatoReg,
	output reg [1:0] WB_DatatoReg,
	input wire MEM_RegWrite,
	output reg WB_RegWrite,
	input wire [31:0] MEM_PCFour,
	output reg [31:0] WB_PCFour,
	input wire [4:0] MEM_Rdes,
	output reg [4:0] WB_Rdes,
	input wire [31:0] MEM_Res,
	output reg [31:0] WB_Res,
	input wire [31:0] MEM_MemData,
	output reg [31:0] WB_MemData,
	input wire [31:0] MEM_LuiData,
	output reg [31:0] WB_LuiData,
	input wire [31:0] MEM_Inst,
	output reg [31:0] WB_Inst,
	input clk,
	input rst
	);
	always @ (posedge clk or posedge rst) begin
		if(rst) begin
			WB_DatatoReg <= 0;
			WB_RegWrite <= 0;
			WB_PCFour <= 0;
			WB_Rdes <= 0;
			WB_Res <= 0;
			WB_MemData <= 0;
			WB_LuiData <= 0;
			WB_Inst <= 0;
		end
		else begin
			WB_DatatoReg <= MEM_DatatoReg;
			WB_RegWrite <= MEM_RegWrite;
			WB_PCFour <= MEM_PCFour;
			WB_Rdes <= MEM_Rdes;
			WB_Res <= MEM_Res;
			WB_MemData <= MEM_MemData;
			WB_LuiData <= MEM_LuiData;
			WB_Inst <= MEM_Inst;
		end
	end
endmodule

