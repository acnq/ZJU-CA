`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:21:24 12/16/2019 
// Design Name: 
// Module Name:    pc 
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
`timescale 1ns / 1ps

module Pc (

		input clock,
		input reset,

		input id_shouldStall,

		input [31:0] nextPc,
		output reg [31:0] pc = 0
	);

	always @(posedge clock) begin
		if (reset) begin
			pc <= 0;
		end else if (id_shouldStall) begin
			pc <= pc;
		end else begin
			pc <= nextPc;
		end
	end
endmodule

