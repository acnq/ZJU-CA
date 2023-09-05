`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:03 10/21/2019 
// Design Name: 
// Module Name:    clk_generate 
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
module clk_generate(
		input clk200P,
		input clk200N,
		input rst,
		output reg[31:0]clkdiv,
    );			
	IBUFDS sclk(
				.I(clk200P),
				.IB(clk200N),
				.O(clk200m)  
				);
	always @ (posedge clk200m or posedge rst) begin 
		if (rst) clkdiv <= 0; 
		else clkdiv <= clkdiv + 1'b1; 
	end
endmodule
