`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:23:06 12/16/2019 
// Design Name: 
// Module Name:    IfIdRegisters 
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
module IfIdRegisters (

		input clock,
		input reset,

		input id_shouldStall,

		input [31:0] if_pc_4,

		input [31:0] if_instruction,

		output reg [31:0] id_pc_4 = 0,

		output reg [31:0] id_instruction = 0
	);

	always @(posedge clock) begin

		if (reset) begin

			id_pc_4 <= 0;

			id_instruction <= 0;

		end else if (id_shouldStall) begin

			id_pc_4 <= id_pc_4;

			id_instruction <= id_instruction;

		end else begin

			id_pc_4 <= if_pc_4;

			id_instruction <= if_instruction;
		end
	end
endmodule

