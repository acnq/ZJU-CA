`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:07:33 11/04/2019
// Design Name:   SCPU
// Module Name:   C:/E/study/thi_autwin/ca/pro/experiment02/exp02fin/exp02/test_scpu.v
// Project Name:  exp02
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_scpu;

	// Inputs
	reg clk;
	reg rst;
	reg debug_en;
	reg debug_step;
	reg [6:0] debug_addr;
	reg [31:0] inst_data;
	reg [31:0] mem_din;

	// Outputs
	wire [31:0] debug_data;
	wire inst_ren;
	wire [31:0] inst_addr;
	wire mem_ren;
	wire mem_wen;
	wire [31:0] mem_addr;
	wire [31:0] mem_dout;

	// Instantiate the Unit Under Test (UUT)
	SCPU uut (
		.clk(clk), 
		.rst(rst), 
		.debug_en(debug_en), 
		.debug_step(debug_step), 
		.debug_addr(debug_addr), 
		.debug_data(debug_data), 
		.inst_ren(inst_ren), 
		.inst_addr(inst_addr), 
		.inst_data(inst_data), 
		.mem_ren(mem_ren), 
		.mem_wen(mem_wen), 
		.mem_addr(mem_addr), 
		.mem_dout(mem_dout), 
		.mem_din(mem_din)
	);
	reg [31:0] insts [0:37];
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		debug_en = 0;
		debug_step = 0;
		debug_addr = 0;
		inst_data = 0;
		mem_din = 0;
		#100;
		rst = 0;
		// Wait 100 ns for global reset to finish
		insts[0] = 32'h8C010014;
		insts[1] = 32'h8C020018;
		insts[2] = 32'h00411820;
		insts[3] = 32'h00612022;
		insts[4] = 32'h00612824;
		insts[5] = 32'h00613025;
		insts[6] = 32'h20660004;
		insts[7] = 32'h00013820;
		insts[8] = 32'h8CE80000;
		insts[9] = 32'hACE80008;
		insts[10] = 32'h8CE90008;
		insts[11] = 32'hAD270000;
		insts[12] = 32'h8D2A0000;
		insts[13] = 32'h00215820;
		insts[14] = 32'h002A5020;
		insts[15] = 32'h00225020;
		insts[16] = 32'h114B0002;
		insts[17] = 32'h8CE10008;
		insts[18] = 32'h8C020018;
		insts[19] = 32'h00411820;
		insts[20] = 32'h00612022;
		insts[21] = 32'h20940001;
		insts[22] = 32'h34948000;
		insts[23] = 32'h14220001;
		insts[24] = 32'h8C010014;
		insts[25] = 32'h8C020018;
		insts[26] = 32'h00411820;
		insts[27] = 32'h00612022;
		insts[28] = 32'h0C000021;
		insts[29] = 32'h00012882;
		insts[30] = 32'h3C051111;
		insts[31] = 32'h20A68000;
		insts[32] = 32'h08000000;
		insts[33] = 32'h0022182A;
		insts[34] = 32'h28648000;
		insts[35] = 32'h30C50011;
		insts[36] = 32'h03E00008;
		#100;
	end
   always begin
		clk = 1;
		#20;
		clk = 0;
		#20;
	end
	always @(posedge clk) begin
			if(clk)begin
				inst_data = insts[inst_addr / 4];
			end
			else begin
				inst_data = inst_data;
			end
	end
endmodule

