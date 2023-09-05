`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:39:04 10/28/2019
// Design Name:   STALL
// Module Name:   C:/E/study/thi_autwin/ca/pro/experiment02/exp02fin/exp02/test_STALL.v
// Project Name:  exp02
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: STALL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_STALL;

	// Inputs
	reg [1:0] FINAL_Branch;
	reg [2:0] EXE_JumpBranch;
	reg ReadRs;
	reg ReadRt;
	reg [4:0] EXE_Rdes;
	reg [4:0] MEM_Rdes;
	reg EXE_RegWrite;
	reg MEM_RegWrite;
	reg [4:0] Rt;
	reg [4:0] Rs;

	// Outputs
	wire PC_shouldstall;
	wire ID_shouldstall;
	wire [1:0] IF_shouldstall;

	// Instantiate the Unit Under Test (UUT)
	STALL uut (
		.FINAL_Branch(FINAL_Branch), 
		.EXE_JumpBranch(EXE_JumpBranch), 
		.ReadRs(ReadRs), 
		.ReadRt(ReadRt), 
		.EXE_Rdes(EXE_Rdes), 
		.MEM_Rdes(MEM_Rdes), 
		.EXE_RegWrite(EXE_RegWrite), 
		.MEM_RegWrite(MEM_RegWrite), 
		.Rt(Rt), 
		.Rs(Rs), 
		.PC_shouldstall(PC_shouldstall), 
		.ID_shouldstall(ID_shouldstall), 
		.IF_shouldstall(IF_shouldstall)
	);

	initial begin
		// Initialize Inputs
		FINAL_Branch = 0;
		EXE_JumpBranch = 0;
		ReadRs = 0;
		ReadRt = 0;
		EXE_Rdes = 0;
		MEM_Rdes = 0;
		EXE_RegWrite = 0;
		MEM_RegWrite = 0;
		Rt = 0;
		Rs = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here   
		// Add $s4,$zero,$zero;  MEM
		// Beq $s0,$s1,Init;		 EXE
		// Add $s0,$zero,$zero;  ID
		// Init:Addi $s0,$zero,1;
      FINAL_Branch = 2'b00;//add
		EXE_JumpBranch = 3'b001;//beq
		ReadRs = 1'b1;
		Rs = 5'b00000;//add
		ReadRt = 1'b1;
		Rt = 5'b00000;//add
		EXE_Rdes = 5'b00000;
		EXE_RegWrite = 0;
		MEM_RegWrite = 1;
		MEM_Rdes = 5'b10100;
		// Expectation PC 1 IF 01 ID 1
		#50;
		// NOP						MEM
		// Add $s1,$zero,$zero; EXE
		// Beq $s0,$s1,Init;		ID
		// Add $s0,$zero,$zero;
		// Init:Addi $s0,$zero,1;
      FINAL_Branch = 2'b00;
		MEM_RegWrite = 0;
		MEM_Rdes = 5'b00000;
		EXE_JumpBranch = 3'b000;//add
		EXE_Rdes = 5'b10001;
		EXE_RegWrite = 1;
		ReadRs = 1'b1;
		Rs = 5'b10000;//beq
		ReadRt = 1'b1;
		Rt = 5'b10001;//beq
		// Expectation PC 1 IF 01 ID 1
		#50;
		// Beq $s0,$s1,Init;		MEM
		// Nop						EXE
		// Sub $s1,$s0,$s2;		ID
		// Add $s0,$zero,$zero;
		// Init:Addi $s0,$zero,1;
      FINAL_Branch = 2'b01;
		MEM_RegWrite = 0;
		MEM_Rdes = 5'b00000;
		EXE_JumpBranch = 3'b000;//add
		EXE_Rdes = 5'b00000;
		EXE_RegWrite = 0;
		ReadRs = 1'b1;
		Rs = 5'b10000;//beq
		ReadRt = 1'b1;
		Rt = 5'b10010;//beq
		// Expectation PC 0 IF 10 ID 1
		#50;
		// Add $s0,$s1,$s2;		MEM
		// Beq $s3,$zero,Init;	EXE
		// Sub $s1,$s0,$s2;		ID
		// Init:Addi $s0,$zero,1;
		FINAL_Branch = 2'b00;
		MEM_RegWrite = 1;
		MEM_Rdes = 5'b10000;
		EXE_JumpBranch = 3'b001;//add
		EXE_Rdes = 5'b00000;
		EXE_RegWrite = 0;
		ReadRs = 1'b1;
		Rs = 5'b10000;//beq
		ReadRt = 1'b1;
		Rt = 5'b10010;//beq
		//Expectation PC 1 IF 01 ID 1
		#50;
		FINAL_Branch = 0;
		EXE_JumpBranch = 0;
		ReadRs = 0;
		ReadRt = 0;
		EXE_Rdes = 0;
		MEM_Rdes = 0;
		EXE_RegWrite = 0;
		MEM_RegWrite = 0;
		Rt = 0;
		Rs = 0;
	end
      
endmodule

