`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:27:26 04/02/2019 
// Design Name: 
// Module Name:    REG32 
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
module REG32(
	input clk,
	input rst,
	input CE,
	input [31:0]D,
	input PC_shouldstall,
	output [31:0]Q
    );
	reg [31:0] register;
	assign Q = register;
	always @ (posedge clk or posedge rst) begin
		if(rst == 1) register <= 0;
		else begin
			if(CE == 1) begin
				if(PC_shouldstall == 1) begin
					register <= register;
				end else begin
					register <= D;
				end
			end 
		end
	end

endmodule
