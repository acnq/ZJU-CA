`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:37 12/16/2019 
// Design Name: 
// Module Name:    WbStage 
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
module WbStage (
		input shouldWriteMemoryElseAluOutputToRegister, 	// WM2REG
		input [31:0] memoryData,
		input [31:0] aluOutput,
		output [31:0] registerWriteData
	);

	assign registerWriteData = shouldWriteMemoryElseAluOutputToRegister ? memoryData : aluOutput;
endmodule

