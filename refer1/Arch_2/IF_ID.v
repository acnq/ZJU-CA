`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:24:15 10/28/2019 
// Design Name: 
// Module Name:    IF_ID 
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
module IF_ID(
	input clk,
	input rst,
	input [31:0]if_inst,
	input [31:0]if_pc_4,
	output [31:0]id_inst,
	output [31:0]id_pc_4
    );

	always @(posedge clk or posedge rst)
		begin 
		
		if (rst)
			begin 
			assign id_inst = 0;
			assign id_pc_4 = 0;
			end
		else 
			begin
			assign id_inst = if_inst;
			assign id_pc_4 = if_pc_4;
			end
		end

endmodule
