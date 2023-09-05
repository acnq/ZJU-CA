`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:27:12 12/16/2019 
// Design Name: 
// Module Name:    MemStage 
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
module MemStage (

		input clock,
		input reset,

		input [31:0] aluOutput,
		input shouldWriteMemory,
		input [31:0] registerRtOrZero,
		input [31:0] memoryData
	);
/*
	DataMemory dataMemory(
		.clka(~clock),
		.addra(aluOutput[9:2]),
		.douta(memoryData[31:0]),
		.wea(shouldWriteMemory),
		.dina(registerRtOrZero[31:0])
	);
	*/
endmodule
