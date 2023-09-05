`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:15 10/03/2019 
// Design Name: 
// Module Name:    calcover 
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
module calcover(
		input [31:0]A,
		input [31:0]B,
		input C0,
		output overflow
   );
	wire [31:0] actual_B;
	wire [32:0] final;
	wire [31:0] tmp;
	assign actual_B[31:0] = C0 ? (~B) + 1'b1 : B + 1'b0; 
	assign final[32:0] = A + actual_B;
	assign tmp[31:0] = A[30:0] + actual_B[30:0];
	assign overflow = final[32] ^ tmp[31];
endmodule
