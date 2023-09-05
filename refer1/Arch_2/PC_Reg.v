`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:25:01 10/21/2019 
// Design Name: 
// Module Name:    PC_Reg 
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
module PC_Reg(
	input [31:0]NPC,
	input clk,
	input rst,
	input [31:0]VPC,
	output [31:0]PC
    );
	 
	always @(posedge clk or posedge rst)
		begin
			assign PC = NPC;
		end


endmodule
