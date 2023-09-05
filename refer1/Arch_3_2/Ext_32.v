`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:31:10 06/26/2014 
// Design Name: 
// Module Name:    Ext_imm16 
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
module Ext_32(input logi,
				  input [15:0] imm_16,
				  output[31:0] Imm_32
				 );
	wire tmp;
	assign tmp = logi ? imm_16[15] : 1'b0;
	assign Imm_32 = {{16{tmp}},imm_16[15:0]};
	
endmodule
