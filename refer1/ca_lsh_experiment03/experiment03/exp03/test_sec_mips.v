`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:54:37 11/11/2019
// Design Name:   mips
// Module Name:   C:/E/study/thi_autwin/ca/pro/experiment03/exp03/test_sec_mips.v
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

module test_sec_mips;

	// Inputs
	reg debug_en;
	reg debug_step;
	reg [6:0] debug_addr;
	reg clk;
	reg rst;
	reg interrupter;

	// Outputs
	wire [31:0] debug_data;
	wire [31:0] r1;
	wire [31:0] r2;
	wire [31:0] r3;
	wire [31:0] r4;
	wire [31:0] r5;
	wire [31:0] r6;
	wire [31:0] r7;
	wire [31:0] r8;
	wire [31:0] r9;
	wire [31:0] r10;
	wire [31:0] r11;
	wire [31:0] r12;
	wire [31:0] r13;
	wire [31:0] r14;
	wire [31:0] r15;
	wire [31:0] r16;
	wire [31:0] r17;
	wire [31:0] r18;
	wire [31:0] r19;
	wire [31:0] r20;
	wire [31:0] r21;
	wire [31:0] r22;
	wire [31:0] r23;
	wire [31:0] r24;
	wire [31:0] r25;
	wire [31:0] r26;
	wire [31:0] r27;
	wire [31:0] r28;
	wire [31:0] r29;
	wire [31:0] r30;
	wire [31:0] r31;
	wire [31:0] IF_Inst;
	wire [31:0] ID_Inst;
	wire [31:0] EXE_Inst;
	wire [31:0] MEM_Inst;
	wire [31:0] WB_Inst;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.debug_en(debug_en), 
		.debug_step(debug_step), 
		.debug_addr(debug_addr), 
		.debug_data(debug_data), 
		.clk(clk), 
		.rst(rst), 
		.interrupter(interrupter), 
		.r1(r1), 
		.r2(r2), 
		.r3(r3), 
		.r4(r4), 
		.r5(r5), 
		.r6(r6), 
		.r7(r7), 
		.r8(r8), 
		.r9(r9), 
		.r10(r10), 
		.r11(r11), 
		.r12(r12), 
		.r13(r13), 
		.r14(r14), 
		.r15(r15), 
		.r16(r16), 
		.r17(r17), 
		.r18(r18), 
		.r19(r19), 
		.r20(r20), 
		.r21(r21), 
		.r22(r22), 
		.r23(r23), 
		.r24(r24), 
		.r25(r25), 
		.r26(r26), 
		.r27(r27), 
		.r28(r28), 
		.r29(r29), 
		.r30(r30), 
		.r31(r31), 
		.IF_Inst(IF_Inst), 
		.ID_Inst(ID_Inst), 
		.EXE_Inst(EXE_Inst), 
		.MEM_Inst(MEM_Inst), 
		.WB_Inst(WB_Inst)
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
		rst = 1;
		#80;
		rst = 0;
		#20;
		// Add stimulus here

	end
   always begin
		clk = 1;
		#20;
		clk = 0;
		#20;
	end
endmodule

