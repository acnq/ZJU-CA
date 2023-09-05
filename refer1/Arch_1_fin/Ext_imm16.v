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
module Ext_32(input [15:0] imm_16,
				  output[31:0] Imm_32
				 );
	assign Imm_32 = {{16{imm_16[15]}},imm_16[15:0]};
	//assign Imm_32[15:0] = imm_16;
	//genvar i;
	//generate
		//for( i=16; i<32; i=i+1) begin 
		//	assign Imm_32[i] = imm_16[15]; 
	//	end
	//endgenerate
	//assign Imm_32[31:16] = imm_16[15];
	//assign Imm_32 = inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15:0);			//扩展为32位符号数
	
endmodule
