`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:19:38 07/17/2012 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div(
	input clk200P,clk200N,
	input rst,
	input SW2,
	//output clk200MHz,
	output clk100mhz,
	output Clk_CPU,
	output reg [31:0] clkdiv
	);

	IBUFGDS #(
		.DIFF_TERM("FALSE"), // Differential Termination
		.IBUF_LOW_PWR("TRUE"), // Low power="TRUE", Highest performance="FALSE"
		.IOSTANDARD("DEFAULT") // Specifies the I/O standard for this buffer
	) IBUFGDS_inst (
		.O(clk200MHz),  // Clock buffer output
		.I(clk200P),  // Diff_p clock buffer input
		.IB(clk200N) // Diff_n clock buffer input
	);
	
	 assign clk100mhz = clkdiv[0];
    always @ (posedge clk200MHz or posedge rst) begin 
        if (rst) clkdiv <= 0; 
        else clkdiv <= clkdiv + 1'b1; 
    end
	assign Clk_CPU = (SW2)? clkdiv[27] : clkdiv[2];
endmodule


