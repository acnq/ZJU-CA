`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:25:33 11/11/2019
// Design Name:   mips
// Module Name:   C:/E/study/thi_autwin/ca/pro/experiment03/exp03/test_mips.v
// Project Name:  exp03
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mips;

	// Inputs
	reg debug_en;
	reg debug_step;
	reg [6:0] debug_addr;
	reg clk;
	reg rst;
	reg interrupter;

	// Outputs
	wire [31:0] debug_data;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.debug_en(debug_en), 
		.debug_step(debug_step), 
		.debug_addr(debug_addr), 
		.debug_data(debug_data), 
		.clk(clk), 
		.rst(rst), 
		.interrupter(interrupter)
	);

	initial begin
		// Initialize Inputs
		debug_en = 0;
		debug_step = 0;
		debug_addr = 0;
		clk = 0;
		rst = 0;
		interrupter = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

