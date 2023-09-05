`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:45 10/06/2019 
// Design Name: 
// Module Name:    slt32 
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
module slt32(
		input [31:0] A,
		input [31:0] B,
		output reg [31:0] o
    );
	always@* begin
		if(A[31] == B[31])	begin
			if(A < B) begin
				o = 32'h00000001;
			end
			else begin
				o = 32'h00000000;
			end
		end
		else begin
			if(A[31] == 1'b1) begin
					o = 32'h00000001;
			end
			else begin
					o = 32'h00000000;
			end
		end
	end

endmodule
