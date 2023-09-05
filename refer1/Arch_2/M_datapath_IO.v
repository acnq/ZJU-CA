`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:44 04/06/2010 
// Design Name: 
// Module Name:    path 
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
module M_datapath(input clk,
					   input reset,
					  
					   input MIO_ready,		//=1
					   input IorD,
					   input IRWrite,
					   input[1:0] RegDst,
					   input RegWrite,
					   input[1:0]MemtoReg,
					   input ALUSrcA,
					  
					   input[1:0]ALUSrcB,
					   input[1:0]PCSource,
					   input PCWrite,
					   input PCWriteCond,	
					   input Branch,
					   input[2:0]ALU_operation,
					  
					   output[31:0]PC_Current,
					   input[31:0]data2CPU,
					   output[31:0]Inst,
					   output[31:0]data_out,
					   output[31:0]M_addr,
					  
					   output zero,
					   output overflow
					  );	
				
	wire N0;
	wire G5;
	
	GND G(.G(N0));
	VCC V(.P(V5));			
	
	//Ext32
	wire [15:0]Imm_16;
	wire [31:0]Imm_32;
	
	assign Imm_16 = Inst[15:0];
	
	Ext_32 Ext32(.imm_16(Imm_16[15:0]),
					 .Imm_32(Imm_32[31:0])
					 );
			 
	//U1		
	wire [31:0]A;
	wire [31:0]B;
	wire [31:0]res;
	
	ALU U1(.A(A[31:0]),
			 .B(B[31:0]),
			 .zero(zero),
			 .res(res[31:0]),
			 .overflow(overflow),
			 .ALU_operation(ALU_operation[2:0])
			 );
			 
	//U2
	wire [4:0]rs;
	wire [4:0]rt;
	wire [4:0]rd;
	wire [4:0]Wt_addr;
	wire [31:0]Wt_data;
	wire [31:0]ALU_Out;
	wire [31:0]mdr;
	wire [31:0]rdata_A;
	wire [31:0]four;
	wire [31:0]offset;
	wire [31:0]lui;
	wire [31:0]jr;
	
	assign rs = Inst[25:21];
	assign rt = Inst[20:16];
	assign rd = Inst[15:11];
	assign four = {N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0};
	assign offset = {Imm_32[29:0],N0,N0};
	assign jr = PC_Current;
	assign lui = {Inst[15:0], 16'h0000};
	
	MUX4T1_5 Mux1(.I0(rt[4:0]),
					  .I1(rd[4:0]),
					  .I2(5'b11111),
					  .I3(5'b00000),
					  .o(Wt_addr[4:0]),
					  .s(RegDst[1:0])
					  );
					  
	MUX4T1_32 Mux2(.I0(ALU_Out[31:0]),
						.I1(mdr[31:0]),
						.I2(lui),
						.I3(jr),
						.s(MemtoReg[1:0]),
						.o(Wt_data[31:0])
						);
	
	Regs U2(.clk(clk),
			  .rst(reset),
			  .R_addr_A(rs[4:0]),
			  .R_addr_B(rt[4:0]),
			  .Wt_addr(Wt_addr[4:0]),
			  .Wt_data(Wt_data[31:0]),
			  .L_S(RegWrite),
			  .rdata_A(rdata_A[31:0]),
			  .rdata_B(data_out)
				);
				
	MUX2T1_32 Mux3(.I0(PC_Current[31:0]),
						.I1(rdata_A[31:0]),
						.s(ALUSrcA),
						.o(A[31:0])
						);
	
	MUX4T1_32 Mux4(.I0(data_out),
						.I1(four[31:0]),
						//.I1(PC_4[31:0]),
						.I2(Imm_32[31:0]),
						.I3(offset[31:0]),
						.s(ALUSrcB[1:0]),
						.o(B[31:0])
						);
	
	//ALUOut
	REG32 ALUOut(.clk(clk),
					 .rst(N0),
					 .CE(V5),
					 .D(res[31:0]),
					 .Q(ALU_Out[31:0])
					 );
	
	MUX2T1_32 Mux5(.I0(PC_Current[31:0]),
						.I1(ALU_Out[31:0]),
						.s(IorD),
						.o(M_addr[31:0])
						);
	
	//PC
	wire CE;
	wire [31:0]PC_4;
	wire [31:0]Branch_pc;
	wire [31:0]Jump_addr;
	wire [31:0]pcD;
	
	assign Jump_addr = {PC_Current[31:28],Inst[25:0],N0,N0};
	assign Branch_pc = ALU_Out[31:0];
	assign CE = (((zero && Branch) && PCWriteCond) || PCWrite) && MIO_ready;
	assign PC_4 = res[31:0];
	
	REG32 PC(.clk(clk),
				.rst(reset),
				.CE(CE),
				.D(pcD[31:0]),
				.Q(PC_Current[31:0])
				);
		
	MUX4T1_32 Mux6(.I0(PC_4[31:0]),
						.I1(Branch_pc[31:0]),
						.I2(Jump_addr[31:0]),
						.I3(ALU_Out[31:0]),
						.s(PCSource[1:0]),
						.o(pcD[31:0])
						);
	
	//IR
	REG32 IR(.clk(clk),
				.rst(reset),
				.CE(IRWrite),
				.D(data2CPU[31:0]),
				.Q(Inst[31:0])
				);
	
	//MDR
	REG32 MDR(.clk(clk),
				 .rst(N0),
				 .CE(V5),
				 .D(data2CPU[31:0]),
				 .Q(mdr[31:0])
				 );
	

					  	 
endmodule
