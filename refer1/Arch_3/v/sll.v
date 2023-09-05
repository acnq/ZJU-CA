`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:23:08 09/23/2019 
// Design Name: 
// Module Name:    sll 
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
module sll32(
		input [31:0] B,
		input [31:0] shamt,
		output [31:0] res
    );
	assign res = B << shamt;
	
endmodule
