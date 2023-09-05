`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:24 10/21/2019 
// Design Name: 
// Module Name:    SCPU 
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
module SCPU(
	input wire clk,  // main clock
	input wire rst,  // synchronous reset
	// debug
	//`ifdef DEBUG
	input wire debug_en,  // debug enable
	input wire debug_step,  // debug step clock
	input wire [6:0] debug_addr,  // debug address
	output wire [31:0] debug_data,  // debug data
	//`endif
	// instruction interfaces
	output wire inst_ren,  // instruction read enable signal
	output wire [31:0] inst_addr,  // address of instruction needed
	input wire [31:0] inst_data,  // instruction fetched
	// memory interfaces
	output wire mem_ren,  // memory read enable signal
	output wire mem_wen,  // memory write enable signal
	output wire [31:0] mem_addr,  // address of memory
	output wire [31:0] mem_dout,  // data writing to memory
	input wire [31:0] mem_din,
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
	output wire [31:0] r31,
	output wire [31:0] IF_Inst,
	output wire [31:0] ID_Inst,
	output wire [31:0] EXE_Inst,
	output wire [31:0] MEM_Inst,
	output wire [31:0] WB_Inst
	);
	assign r12 = WB_MemData;
	assign r13 = MEM_REALMe;
	wire [31:0] Current_PC;
	wire [31:0] Next_PC;
	wire [1:0] FINAL_PC;
	
	wire [31:0] IF_PCFour;
	//wire [31:0] IF_Inst;
	wire PC_shouldstall;
	
	wire [1:0] IF_shouldstall;
	wire ID_ALUSrcA;
	wire ID_ALUSrcB;
	wire ID_EXTLog;
	wire ID_RegDst;
	wire ID_Jal;
	wire [3:0] ID_ALUControl;
	wire [2:0] ID_JumpBranch;
	wire [1:0] ID_DatatoReg;
	wire ID_RegWrite;
	wire ID_MemWrite;
	wire ID_ReadRs;
	wire ID_ReadRt;
	wire [31:0] ID_PCFour;
	//wire [31:0] ID_Inst;
	wire [4:0] ID_Rt;
	wire [4:0] ID_Rd;
	wire [31:0] ID_RDataA;
	wire [31:0] ID_RDataB;
	wire [31:0] ID_Tmp_RDataA;
	wire [31:0] ID_Tmp_RDataB;
	wire [31:0] ID_JumpPC;
	wire [15:0] ID_Imm_16;
	wire ID_LW;
	wire ID_SW;
	
	wire ID_shouldstall;
	wire EXE_ALUSrcA;
	wire EXE_ALUSrcB;
	wire EXE_EXTLog;
	wire EXE_RegDst;
	wire EXE_Jal;
	wire [3:0] EXE_ALUControl;
	wire [2:0] EXE_JumpBranch;
	wire [1:0] EXE_DatatoReg;
	wire EXE_RegWrite;
	wire EXE_MemWrite;
	wire [31:0] EXE_PCFour;
	wire [4:0] EXE_Rt;
	wire [4:0] EXE_Rd;
	wire [4:0] EXE_Rdes;
	wire [31:0] EXE_RDataA;
	wire [31:0] EXE_RDataB;
	wire [31:0] EXE_JumpPC;
	wire [15:0] EXE_Imm_16;
	wire [31:0] EXE_BranchPC;
	wire EXE_Zero;
	wire [31:0] EXE_Res;
	wire [31:0] EXE_LuiData;
	//wire [31:0] EXE_Inst;
	wire EXE_LW;
	wire EXE_REALMe;
	
	wire EXE_shouldstall;
	wire [2:0] MEM_JumpBranch;
	wire [1:0] MEM_DatatoReg;
	wire MEM_RegWrite;
	wire MEM_MemWrite;
	wire [31:0] MEM_PCFour;
	wire [4:0] MEM_Rdes;
	wire [31:0] MEM_RDataA;
	wire [31:0] MEM_RDataB;
	wire [31:0] MEM_JumpPC;
	wire [31:0] MEM_BranchPC;
	wire MEM_Zero;
	wire [31:0] MEM_Res;
	wire [31:0] MEM_MemData;
	wire [31:0] MEM_LuiData;
	//wire [31:0] MEM_Inst;
	wire MEM_LW;
	wire MEM_REALMe;
	
	wire [1:0] WB_DatatoReg;
	wire WB_RegWrite;
	wire [31:0] WB_PCFour;
	wire [4:0] WB_Rdes;
	wire [31:0] WB_Res;
	wire [31:0] WB_MemData;
	wire [31:0] WB_LuiData;
	//wire [31:0] WB_Inst;
	
	wire [1:0] REALRs;
	wire [1:0] REALRt;
	wire REALMe;
	wire [31:0] EXE_ALUOut;
	wire [31:0] MEM_ALUOut;
	wire [31:0] MEM_MEMOut;
	
	assign inst_addr[31:0] = Current_PC[31:0];
	assign IF_Inst[31:0] = inst_data[31:0];
	assign inst_ren = 1'b1;
	assign mem_ren = 1'b1;
	assign mem_wen = MEM_MemWrite;
	//assign mem_dout[31:0] = MEM_RDataB[31:0];
	assign mem_addr[31:0] = MEM_Res[31:0];
	assign MEM_MemData[31:0] = mem_din[31:0];
	wire [31:0] debug_data_reg;
	wire [31:0] FINAL_RegData;
	wire clk_pc;
	assign clk_pc = debug_en ? debug_step : clk;
	// debug
	reg debug_step_prev;
	
	always @(posedge clk) begin
		debug_step_prev <= debug_step;
	end
	reg cpu_rst;
	reg cpu_en;
	always @(*) begin
		cpu_rst = 0;
		cpu_en = 1;
		if (rst) begin
			cpu_rst = 1;
		end  // suspend and step execution
		else if ((debug_en) && ~(~debug_step_prev && debug_step)) begin
			cpu_en = 0;
		end
	end
	
	reg [31:0] debug_data_signal;
	
	always @(posedge clk) begin
		case (debug_addr[4:0])
			0: debug_data_signal <= inst_addr;
			1: debug_data_signal <= inst_data;
			2: debug_data_signal <= ID_Inst;
			3: debug_data_signal <= EXE_Inst;
			4: debug_data_signal <= MEM_Inst;
			5: debug_data_signal <= WB_Inst;
			6: debug_data_signal <= EXE_Rdes;
			7: debug_data_signal <= MEM_Rdes;
			8: debug_data_signal <= {27'b0, inst_data[25:21]};
			9: debug_data_signal <= ID_RDataA;
			10: debug_data_signal <= {27'b0, inst_data[20:16]};
			11: debug_data_signal <= ID_RDataB;
			12: debug_data_signal <= Imm_32;
			13: debug_data_signal <= A;
			14: debug_data_signal <= B;
			15: debug_data_signal <= EXE_Res;
			16: debug_data_signal <= WB_Inst;
			17: debug_data_signal <= {12'b0,2'b0,FINAL_PC,3'b0,MEM_Zero,1'b0,MEM_JumpBranch,1'b0,EXE_JumpBranch,1'b0,ID_JumpBranch};
			18: debug_data_signal <= {19'b0, inst_ren, 7'b0, mem_ren, 3'b0, mem_wen};
			19: debug_data_signal <= mem_addr;
			20: debug_data_signal <= mem_din;
			21: debug_data_signal <= mem_dout;
			22: debug_data_signal <= {27'b0, WB_Rdes};
			23: debug_data_signal <= FINAL_RegData;
			24: debug_data_signal <= ID_Inst[20:16];
			25: debug_data_signal <= ID_Inst[15:11];
			26: debug_data_signal <= EXE_Rt;
			27: debug_data_signal <= EXE_Rd;
			28: debug_data_signal <= Rtmp;
			29: debug_data_signal <= EXE_Rdes;
			30: debug_data_signal <= {WB_RegWrite,26'b0,WB_Rdes};
			31: debug_data_signal <= FINAL_RegData;
			default: debug_data_signal <= 32'hFFFF_FFFF;
		endcase
	end
	
	assign
		debug_data = debug_addr[5] ? debug_data_signal : debug_data_reg;
	STALL STALL(
		.FINAL_Branch(FINAL_PC),
		.EXE_JumpBranch(EXE_JumpBranch),
		.ReadRs(ID_ReadRs),
		.ReadRt(ID_ReadRt),
		.EXE_Rdes(EXE_Rdes),
		.MEM_Rdes(MEM_Rdes),
		.EXE_RegWrite(EXE_RegWrite),
		.MEM_RegWrite(MEM_RegWrite),
		.Rs(ID_Inst[25:21]),
		.Rt(ID_Inst[20:16]),
		.PC_shouldstall(PC_shouldstall),
		.ID_shouldstall(ID_shouldstall),
		.IF_shouldstall(IF_shouldstall),
		.EXE_shouldstall(EXE_shouldstall),
		.EXE_LW(EXE_LW),
		.MEM_LW(MEM_LW),
		.ID_SW(ID_SW),
		.REALRs(REALRs),
		.REALRt(REALRt),
		.REALMe(REALMe)
		);
	REG32 PC(
		.clk(clk_pc),
		.rst(rst),
		.CE(1'b1),
		.D(Next_PC),
		.Q(Current_PC),
		.PC_shouldstall(PC_shouldstall)
		);

	add_32 CALC_PC_4(
		.a(Current_PC),
		.b({32'b00000000_00000000_00000000_00000100}),
		.c(IF_PCFour)
		);
	
	MUX4T1_32 Nxt_PC(
		.s(FINAL_PC),
		.I0(IF_PCFour),
		.I1(MEM_BranchPC),
		.I2(MEM_JumpPC),
		.I3(MEM_RDataA),
		.o(Next_PC)
		);
		
	IF_ID_Latches IF_ID (
		.IF_PCFour(IF_PCFour),
		.ID_PCFour(ID_PCFour),
		.IF_Inst(IF_Inst),
		.ID_Inst(ID_Inst),
		.clk(clk_pc),
		.rst(rst),
		.IF_shouldstall(IF_shouldstall)
		);
	
	CPU_CTRL CPU_CTRL(
		.Inst(ID_Inst),
		.ALUSrc_A(ID_ALUSrcA),
		.ALUSrc_B(ID_ALUSrcB),
		.EXTLog(ID_EXTLog),
		.RegDst(ID_RegDst),
		.Jal(ID_Jal),
		.ALUControl(ID_ALUControl),
		.JumpBranch(ID_JumpBranch),
		.DatatoReg(ID_DatatoReg),
		.RegWrite(ID_RegWrite),
		.MemWrite(ID_MemWrite),
		.ReadRs(ID_ReadRs),
		.ReadRt(ID_ReadRt),
		.LW(ID_LW),
		.SW(ID_SW)
		);	
	Regs U2_2(
		.clk(clk_pc),
		.rst(rst),
		.R_addr_A(ID_Inst[25:21]),
		.R_addr_B(ID_Inst[20:16]),
		.Wt_addr(WB_Rdes),
		.wt_data(FINAL_RegData),
		.rdata_B(ID_Tmp_RDataB[31:0]),
		.rdata_A(ID_Tmp_RDataA[31:0]),
		.L_S(WB_RegWrite),
		.debug_addr(debug_addr),
		.debug_data(debug_data_reg),
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
		.r20(r20),
		.r31(r31)
		);
	
	MUX4T1_32 Real_Rs(
		.s(REALRs),
		.I0(ID_Tmp_RDataA),
		.I1(EXE_ALUOut),
		.I2(MEM_ALUOut),
		.I3(MEM_MemData),
		.o(ID_RDataA)
		);
		
	MUX4T1_32 Real_Rt(
		.s(REALRt),
		.I0(ID_Tmp_RDataB),
		.I1(EXE_ALUOut),
		.I2(MEM_ALUOut),
		.I3(MEM_MemData),
		.o(ID_RDataB)
		);
		
	ID_EXE_Latches ID_EXE (
		.ID_ALUSrcA(ID_ALUSrcA),
		.EXE_ALUSrcA(EXE_ALUSrcA),
		.ID_ALUSrcB(ID_ALUSrcB),
		.EXE_ALUSrcB(EXE_ALUSrcB),
		.ID_EXTLog(ID_EXTLog),
		.EXE_EXTLog(EXE_EXTLog),
		.ID_RegDst(ID_RegDst),
		.EXE_RegDst(EXE_RegDst),
		.ID_Jal(ID_Jal),
		.EXE_Jal(EXE_Jal),
		.ID_ALUControl(ID_ALUControl),
		.EXE_ALUControl(EXE_ALUControl),
		.ID_JumpBranch(ID_JumpBranch),
		.EXE_JumpBranch(EXE_JumpBranch),
		.ID_DatatoReg(ID_DatatoReg),
		.EXE_DatatoReg(EXE_DatatoReg),
		.ID_RegWrite(ID_RegWrite),
		.EXE_RegWrite(EXE_RegWrite),
		.ID_MemWrite(ID_MemWrite),
		.EXE_MemWrite(EXE_MemWrite),
		.ID_PCFour(ID_PCFour),
		.EXE_PCFour(EXE_PCFour),
		.ID_Rt(ID_Inst[20:16]),
		.EXE_Rt(EXE_Rt),
		.ID_Rd(ID_Inst[15:11]),
		.EXE_Rd(EXE_Rd),
		.ID_RDataA(ID_RDataA),
		.EXE_RDataA(EXE_RDataA),
		.ID_RDataB(ID_RDataB),
		.EXE_RDataB(EXE_RDataB),
		.ID_JumpPC({ID_PCFour[31:28],ID_Inst[25:0],2'b00}),
		.EXE_JumpPC(EXE_JumpPC),
		.ID_Imm_16(ID_Inst[15:0]),
		.EXE_Imm_16(EXE_Imm_16),
		.clk(clk_pc),
		.rst(rst),
		.ID_shouldstall(ID_shouldstall),
		.ID_Inst(ID_Inst),
		.EXE_Inst(EXE_Inst),
		.ID_LW(ID_LW),
		.EXE_LW(EXE_LW),
		.ID_REALMe(REALMe),
		.EXE_REALMe(EXE_REALMe)
		);
	wire [31:0] Imm_32;	
	wire [31:0] A;
	wire [31:0] B;
	Ext_32 Ext32 (
		.logi(EXE_EXTLog),
		.imm_16(EXE_Imm_16), 
		.Imm_32(Imm_32)
		);
		
	MUX2T1_32 BorImm(
		.s(EXE_ALUSrcB),
		.I0(EXE_RDataB),
		.I1(Imm_32),
		.o(B)
		);
						  
	MUX2T1_32 AorShamt(
		.s(EXE_ALUSrcA),
		.I0(EXE_RDataA),
		.I1({27'b0,EXE_Imm_16[10:6]}),
		.o(A)
		);
	alu myalu(
		.A(A),
		.B(B),
		.ALU_operation(EXE_ALUControl),
		.zero(EXE_Zero),
		.res(EXE_Res),
		.overflow()
		);
	add_32 CALC_PC_Branch(
		.a(EXE_PCFour),
		.b({Imm_32[29:0],2'b00}),
		.c(EXE_BranchPC)
		);
	wire [4:0] Rtmp;
	wire [31:0] ALUOne;
	MUX2T1_5 MUXD1(
		.s(EXE_Jal),
		.I0(EXE_Rt),
		.I1({5'b11111}),
		.o(Rtmp)
		);
	
	MUX2T1_5 MUXD2(
		.s(EXE_RegDst),
		.I0(Rtmp),
		.I1(EXE_Rd),
		.o(EXE_Rdes)
		);
	MUX2T1_32 ALU_1(
		.s(EXE_DatatoReg[1] & (~EXE_DatatoReg[0])),//Lui
		.I0(EXE_Res),
		.I1({EXE_Imm_16[15:0],16'h0000}),
		.o(ALUOne)
	);
	MUX2T1_32 ALU_2(
		.s(EXE_DatatoReg[1] & EXE_DatatoReg[0]), //Jal
		.I0(ALUOne),
		.I1(EXE_PCFour),
		.o(EXE_ALUOut)
	);
	EXE_MEM_Latches EXE_MEM (
		.EXE_shouldstall(EXE_shouldstall),
		.EXE_JumpBranch(EXE_JumpBranch),
		.MEM_JumpBranch(MEM_JumpBranch),
		.EXE_DatatoReg(EXE_DatatoReg),
		.MEM_DatatoReg(MEM_DatatoReg),
		.EXE_RegWrite(EXE_RegWrite),
		.MEM_RegWrite(MEM_RegWrite),
		.EXE_MemWrite(EXE_MemWrite),
		.MEM_MemWrite(MEM_MemWrite),
		.EXE_PCFour(EXE_PCFour),
		.MEM_PCFour(MEM_PCFour),
		.EXE_Rdes(EXE_Rdes),
		.MEM_Rdes(MEM_Rdes),
		.EXE_RDataA(EXE_RDataA),
		.MEM_RDataA(MEM_RDataA),
		.EXE_RDataB(EXE_RDataB),
		.MEM_RDataB(MEM_RDataB),
		.EXE_JumpPC(EXE_JumpPC),
		.MEM_JumpPC(MEM_JumpPC),
		.EXE_BranchPC(EXE_BranchPC),
		.MEM_BranchPC(MEM_BranchPC),
		.EXE_Zero(EXE_Zero),
		.MEM_Zero(MEM_Zero),
		.EXE_Res(EXE_Res),
		.MEM_Res(MEM_Res),
		.EXE_LuiData({EXE_Imm_16[15:0],16'h0000}),
		.MEM_LuiData(MEM_LuiData),
		.EXE_ALUOut(EXE_ALUOut),
		.MEM_ALUOut(MEM_ALUOut),
		.clk(clk_pc),
		.rst(rst),
		.EXE_Inst(EXE_Inst),
		.MEM_Inst(MEM_Inst),
		.EXE_LW(EXE_LW),
		.MEM_LW(MEM_LW),
		.EXE_REALMe(EXE_REALMe),
		.MEM_REALMe(MEM_REALMe)
		);
	CHECK_BRANCH M_B(
		.Branch(MEM_JumpBranch),
		.zero(MEM_Zero),
		.out(FINAL_PC)
	);
	MUX2T1_32(
		.s(MEM_REALMe),
		.I0(MEM_RDataB),
		.I1(WB_MemData),
		.o(mem_dout)
	);
	MEM_WB_Latches MEM_WB (
		.MEM_DatatoReg(MEM_DatatoReg),
		.WB_DatatoReg(WB_DatatoReg),
		.MEM_RegWrite(MEM_RegWrite),
		.WB_RegWrite(WB_RegWrite),
		.MEM_PCFour(MEM_PCFour),
		.WB_PCFour(WB_PCFour),
		.MEM_Rdes(MEM_Rdes),
		.WB_Rdes(WB_Rdes),
		.MEM_Res(MEM_Res),
		.WB_Res(WB_Res),
		.MEM_MemData(MEM_MemData),
		.WB_MemData(WB_MemData),
		.MEM_LuiData(MEM_LuiData),
		.WB_LuiData(WB_LuiData),
		.clk(clk_pc),
		.rst(rst),
		.MEM_Inst(MEM_Inst),
		.WB_Inst(WB_Inst)
		);
	MUX4T1_32 MUXD3(
		.s(WB_DatatoReg[1:0]),
		.I0(WB_Res),
		.I1(WB_MemData),
		.I2(WB_LuiData),
		.I3(WB_PCFour),
		.o(FINAL_RegData)
		);
	
endmodule
