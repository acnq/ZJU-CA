`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:57 05/07/2019 
// Design Name: 
// Module Name:    Multi_CPU 
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
module Multi_CPU(
	input clk,
	input reset,
	input [31:0]Data_in,
	input MIO_ready,
	input INT,
	output [31:0]inst_out,
	output [31:0]PC_out,
	output [31:0]Addr_out,
	output [31:0]Data_out,
	output mem_w,
	output CPU_MIO,
	output [4:0]state
   );
	
	wire zero;
	wire overflow;
	wire IorD;
	wire IRWrite;
	wire [1:0]RegDst;
	wire RegWrite;
	wire [1:0]MemtoReg;
	wire ALUSrcA;
	wire [1:0]ALUSrcB;
	wire [1:0]PCSource;
	wire PCWrite;
	wire PCWriteCond;
	wire Branch;
	wire [2:0]ALU_operation;
	wire MemRead;
	wire MemWrite;
	
	assign mem_w = MemWrite && (~MemRead); 
	 
	M_datapath DataPath (.clk(clk),
								.reset(reset),
								.MIO_ready(MIO_ready),
								.IorD(IorD),
								.IRWrite(IRWrite),
								.RegDst(RegDst[1:0]),
								.RegWrite(RegWrite),
								.MemtoReg(MemtoReg[1:0]),
								.ALUSrcA(ALUSrcA),
								.ALUSrcB(ALUSrcB[1:0]),
								.PCSource(PCSource[1:0]),
								.PCWrite(PCWrite),
								.PCWriteCond(PCWriteCond),
								.Branch(Branch),
								.ALU_operation(ALU_operation[2:0]),
								.PC_Current(PC_out[31:0]),
								.data2CPU(Data_in[31:0]),
								.Inst(inst_out[31:0]),
								.data_out(Data_out[31:0]),
								.M_addr(Addr_out[31:0]),
								.zero(zero),
								.overflow(overflow)
								);
	
	ctrl Contoller (.clk(clk),
						 .reset(reset),
						 .Inst_in(inst_out[31:0]),
						 .zero(zero),
						 .overflow(overflow),
						 .MIO_ready(MIO_ready),
						 .MemRead(MemRead),
						 .MemWrite(MemWrite),
						 .ALU_operation(ALU_operation[2:0]),
						 .state_out(state[4:0]),
						 .CPU_MIO(CPU_MIO),
						 .IorD(IorD),
						 .IRWrite(IRWrite),
						 .RegDst(RegDst[1:0]),
						 .RegWrite(RegWrite),
						 .MemtoReg(MemtoReg[1:0]),
						 .ALUSrcA(ALUSrcA),
						 .ALUSrcB(ALUSrcB[1:0]),
						 .PCSource(PCSource[1:0]),
						 .PCWrite(PCWrite),
						 .PCWriteCond(PCWriteCond),
						 .Branch(Branch)
						 );


endmodule
