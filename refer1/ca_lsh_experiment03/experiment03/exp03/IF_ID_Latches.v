`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:44 10/21/2019 
// Design Name: 
// Module Name:    IF_ID_Latches 
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
module IF_ID_Latches(
	input wire [31:0] IF_PCFour,
	output reg [31:0] ID_PCFour,
	input wire [31:0] IF_Inst,
	output reg [31:0] ID_Inst,
	input clk,
	input rst,
	input [1:0] IF_shouldstall
	);	
	always @ (posedge clk or posedge rst) begin
		if(rst) begin
			ID_PCFour <= 0;
			ID_Inst <= 0;
		end
		else if(IF_shouldstall == 2'b01) begin
			ID_PCFour <= ID_PCFour;
			ID_Inst <= ID_Inst;
		end
		else if(IF_shouldstall == 2'b10) begin
			ID_PCFour <= 0;
			ID_Inst <= 0;
		end
		else begin
			ID_PCFour <= IF_PCFour;
			ID_Inst <= IF_Inst;
		end
	end
endmodule
