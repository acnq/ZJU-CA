`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:57 03/19/2019 
// Design Name: 
// Module Name:    Regs 
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
module  Regs(
	input clk,rst,L_S, 
	input wire [4:0] debug_addr,
	output wire [31:0] debug_data,
	input [4:0] R_addr_A,R_addr_B,Wt_addr, 
	input [31:0] wt_data,
	output [31:0] rdata_A,rdata_B,
	output wire [31:0] r1,
	output wire [31:0] r2,
	output wire [31:0] r3,
	output wire [31:0] r4,
	output wire [31:0] r5,
	output wire [31:0] r6,
	output wire [31:0] r7,
	output wire [31:0] r8,
	output wire [31:0] r9,
	output wire [31:0] r10,
	output wire [31:0] r11,
	output wire [31:0] r12,
	output wire [31:0] r13,
	output wire [31:0] r14,
	output wire [31:0] r15,
	output wire [31:0] r16,
	output wire [31:0] r17,
	output wire [31:0] r18,
	output wire [31:0] r19,
	output wire [31:0] r20,
	output wire [31:0] r21,
	output wire [31:0] r22,
	output wire [31:0] r23,
	output wire [31:0] r24,
	output wire [31:0] r25,
	output wire [31:0] r26,
	output wire [31:0] r27,
	output wire [31:0] r28,
	output wire [31:0] r29,
	output wire [31:0] r30,
	output wire [31:0] r31
);
	reg [31:0] register [1:31]; 		// r1 - r31
   integer i;

	assign rdata_A = (R_addr_A == 0) ? 0 : register[R_addr_A];	    	// read
	assign rdata_B = (R_addr_B == 0) ? 0 : register[R_addr_B];   	// read

	always @(negedge clk or posedge rst) 
		begin   
			if (rst == 1)  for (i=1; i<32; i=i+1)  register[i] <= 0; 		// reset
		   else if ((Wt_addr != 0) && (L_S == 1)) 
					register[Wt_addr] <= wt_data;      			// write
		end
	assign r1 = register[1];
	assign r2 = register[2];
	assign r3 = register[3];
	assign r4 = register[4];
	assign r5 = register[5];
	assign r6 = register[6];
	assign r7 = register[7];
	assign r8 = register[8];
	assign r9 = register[9];
	assign r10 = register[10];
	assign r11 = register[11];
	assign r12 = register[12];
	assign r13 = register[13];
	assign r14 = register[14];
	assign r15 = register[15];
	assign r16 = register[16];
	assign r17 = register[17];
	assign r18 = register[18];
	assign r19 = register[19];
	assign r20 = register[20];
	assign r21 = register[21];
	assign r22 = register[22];
	assign r23 = register[23];
	assign r24 = register[24];
	assign r25 = register[25];
	assign r26 = register[26];
	assign r27 = register[27];
	assign r28 = register[28];
	assign r29 = register[29];
	assign r30 = register[30];
	assign r31 = register[31];
	assign debug_data = (debug_addr == 0) ? 0 :register[debug_addr];
endmodule
