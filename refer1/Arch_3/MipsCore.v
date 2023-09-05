`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:12 12/16/2019 
// Design Name: 
// Module Name:    MipsCore 
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
module MipsCore(
	input wire clk,
	input wire rst, 
	
	input wire debug_en,  // debug enable
	input wire debug_step,  // debug step clock
	input wire [6:0] debug_addr,  // debug address
	output wire [31:0] debug_data,  // debug data	
	
	output wire inst_ren,  // instruction read enable signal
	output wire [31:0] inst_addr,  // address of instruction needed
	input wire [31:0] inst_data,  // instruction fetched
	// memory interfaces
	output wire mem_ren,  // memory read enable signal
	output wire mem_wen,  // memory write enable signal
	output wire [31:0] mem_addr,  // address of memory
	output wire [31:0] mem_dout,  // data writing to memory
	input wire [31:0] mem_din
    );
	 
	wire [31:0] if_pc;

	wire [31:0] if_pc_4;
	wire [31:0] if_instruction;
	wire [31:0] if_nextPc;

	wire [31:0] id_pc_4;
	wire [31:0] id_instruction;

	wire id_shouldJumpOrBranch;
	wire [31:0] id_jumpOrBranchPc;
	wire [31:0] id_shiftAmount;
	wire [31:0] id_immediate;
	wire [31:0] id_registerRsOrPc_4;
	wire [31:0] id_registerRtOrZero;
	wire [3:0] id_aluOperation;
	wire id_shouldAluUseShiftAmountElseRegisterRsOrPc_4;
	wire id_shouldAluUseImmeidateElseRegisterRtOrZero;
	wire id_shouldWriteRegister;
	wire [4:0] id_registerWriteAddress;
	wire id_shouldWriteMemoryElseAluOutputToRegister;
	wire id_shouldWriteMemory;
	wire id_shouldStall;

	wire [31:0] ex_instruction;
	wire [31:0] ex_shiftAmount;
	wire [31:0] ex_immediate;
	wire [31:0] ex_registerRsOrPc_4;
	wire [31:0] ex_registerRtOrZero;
	wire [3:0] ex_aluOperation;
	wire ex_shouldAluUseShiftAmountElseRegisterRsOrPc_4;
	wire ex_shouldAluUseImmeidateElseRegisterRtOrZero;
	wire ex_shouldWriteRegister;
	wire [4:0] ex_registerWriteAddress;
	wire ex_shouldWriteMemoryElseAluOutputToRegister;
	wire ex_shouldWriteMemory;

	wire [31:0] ex_aluOutput;

	wire [31:0] mem_instruction;
	wire mem_shouldWriteRegister;
	wire [4:0] mem_registerWriteAddress;
	wire mem_shouldWriteMemoryElseAluOutputToRegister;
	wire [31:0] mem_aluOutput;
	wire mem_shouldWriteMemory;
	wire [31:0] mem_registerRtOrZero;

	wire [31:0] mem_memoryData;

	wire [31:0] wb_instruction;
	wire wb_shouldWriteRegister;
	wire [4:0] wb_registerWriteAddress;
	wire wb_shouldWriteMemoryElseAluOutputToRegister;
	wire [31:0] wb_memoryData;
	wire [31:0] wb_aluOutput;

	wire [31:0] wb_registerWriteData;
	
	wire clock_pc;
	assign clock_pc = debug_en ? debug_step : clk;
	
	assign inst_addr = if_pc;
	assign if_instruction = inst_data;
	assign inst_ren = 1'b1;
	assign mem_ren = 1'b1;
	assign mem_wen = mem_shouldWriteRegister;
	assign mem_addr = ex_aluOutput;
	assign mem_dout = mem_registerRtOrZero;
	assign mem_memoryData = mem_din;
	
	/*
	wire[31:0] inst_addr;
	wire[31:0] inst_data;
	wire[31:0] ID_Inst;
	wire[31:0] EXE_Inst;
	wire[31:0] MEM_Inst;
	wire[31:0] WB_Inst;
	wire[31:0] EXE_Rdes;
	wire[31:0] MEM_Reds;
	
	assign inst_addr = if_pc;
	assign inst_data = if_instruction;
	assign ID_Inst = id_instruction;
	assign EXE_Inst = ex_instruction;
	assign MEM_Inst = mem_instruction;
	assign WB_Inst = wb_instruction;
	assign EXE_Rdes = ex_registerWriteAddress;
	assign MEM_Rdes = mem_registerWriteAddress;
	
	assign R_addr_A = id_instruction[25:21];
	assign R_addr_B = id_instruction[20:16];
	assign ID_RDataA = (R_addr_A == 0) ? 0 : register[R_addr_A];	    	
	assign ID_RDataB = (R_addr_B == 0) ? 0 : register[R_addr_B]; 
	*/
	assign Imm_32 = id_immediate;
	assign A = id_shouldAluUseShiftAmountElseRegisterRsOrPc_4 ? id_shiftAmount : id_registerRsOrPc_4;
	assign B = id_shouldAluUseImmeidateElseRegisterRtOrZero ? id_immediate : id_registerRtOrZero;
	assign EXE_Res = ex_aluOutput;
	assign WB_Inst = wb_instruction;
	assign FINAL_PC = id_shouldJumpOrBranch;
	
	wire[31:0] debug_ex_aluInputA;
	wire[31:0] debug_ex_aluInputB;
	wire debug_id_shouldForwardRegisterRs;
	wire debug_id_shouldForwardRegisterRt;
	wire[32 * 32 - 1 : 0] debug_id_registers;
	
	
	// debug
	reg debug_step_prev;
	
	always @(posedge clk) begin
		debug_step_prev <= debug_step;
	end
	
	reg [31:0] debug_data_signal;
	
	always @(posedge clk) begin
		case (debug_addr[4:0])
			0: debug_data_signal <= if_pc;
			1: debug_data_signal <= if_instruction;
			2: debug_data_signal <= id_instruction;
			3: debug_data_signal <= ex_instruction;
			4: debug_data_signal <= mem_instruction;
			5: debug_data_signal <= wb_instruction;
			6: debug_data_signal <= ex_registerWriteAddress;
			7: debug_data_signal <= mem_registerWriteAddress;
			8: debug_data_signal <= {27'b0, if_instruction[25:21]};
			9: debug_data_signal <= debug_ex_aluInputA[31:0];
			10: debug_data_signal <= {27'b0, if_instruction[20:16]};
			11: debug_data_signal <= debug_ex_aluInputB[31:0];
			12: debug_data_signal <= Imm_32;
			13: debug_data_signal <= debug_ex_aluInputA[31:0];
			14: debug_data_signal <= debug_ex_aluInputB[31:0];
			15: debug_data_signal <= EXE_Res;
			16: debug_data_signal <= WB_Inst;
			/*
			0: debug_data_signal <= inst_addr;
			1: debug_data_signal <= inst_data;
			2: debug_data_signal <= ID_Inst;
			3: debug_data_signal <= EXE_Inst;
			4: debug_data_signal <= MEM_Inst;
			5: debug_data_signal <= WB_Inst;
			6: debug_data_signal <= EXE_Rdes;
			7: debug_data_signal <= MEM_Rdes;
			8: debug_data_signal <= {27'b0, inst_data[25:21]};
			9: debug_data_signal <= debug_ex_aluInputA[31:0];
			10: debug_data_signal <= {27'b0, inst_data[20:16]};
			11: debug_data_signal <= debug_ex_aluInputB[31:0];
			12: debug_data_signal <= Imm_32;
			13: debug_data_signal <= debug_ex_aluInputA[31:0];
			14: debug_data_signal <= debug_ex_aluInputB[31:0];
			15: debug_data_signal <= EXE_Res;
			16: debug_data_signal <= WB_Inst;*/
			/*
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
			*/
			/////////////////////////////////
			17: debug_data_signal <= 32'h0;
			18: debug_data_signal <= 32'h0;
			19: debug_data_signal <= 32'h0;
			20: debug_data_signal <= 32'h0;
			21: debug_data_signal <= 32'h0;
			22: debug_data_signal <= 32'h0;
			23: debug_data_signal <= 32'h0;
			24: debug_data_signal <= 32'h0;
			25: debug_data_signal <= 32'h0;
			26: debug_data_signal <= 32'h0;
			27: debug_data_signal <= 32'h0;
			28: debug_data_signal <= 32'h0;
			29: debug_data_signal <= 32'h0;
			30: debug_data_signal <= 32'h0;
			31: debug_data_signal <= 32'h0;
			
			//17: debug_data_signal <= {12'b0,2'b0,FINAL_PC,3'b0,MEM_Zero,1'b0,MEM_JumpBranch,1'b0,EXE_JumpBranch,1'b0,ID_JumpBranch};
			//18: debug_data_signal <= {19'b0, inst_ren, 7'b0, mem_ren, 3'b0, mem_wen};
			//19: debug_data_signal <= mem_addr;
			//20: debug_data_signal <= mem_din;
			//21: debug_data_signal <= mem_dout;
			//22: debug_data_signal <= {27'b0, WB_Rdes};
			//23: debug_data_signal <= FINAL_RegData;
			//24: debug_data_signal <= ID_Inst[20:16];
			//25: debug_data_signal <= ID_Inst[15:11];
			//26: debug_data_signal <= EXE_Rt;
			//27: debug_data_signal <= EXE_Rd;
			//28: debug_data_signal <= Rtmp;
			//29: debug_data_signal <= EXE_Rdes;
			//30: debug_data_signal <= {WB_RegWrite,26'b0,WB_Rdes};
			//31: debug_data_signal <= FINAL_RegData;
			default: debug_data_signal <= 32'hFFFF_FFFF;
		endcase
	end
	
	assign
		//debug_data = debug_addr[5] ? debug_data_signal : debug_data_reg;
		debug_data = debug_data_signal;

	Pc pc (

		.clock(clock_pc),
		.reset(rst),

		.id_shouldStall(id_shouldStall),

		.nextPc(if_nextPc[31:0]),
		.pc(if_pc[31:0])
	);

	IfStage ifStage (

		.clock(clk),

		.pc(if_pc[31:0]),

		.id_shouldJumpOrBranch(id_shouldJumpOrBranch),
		.id_jumpOrBranchPc(id_jumpOrBranchPc[31:0]),

		.pc_4(if_pc_4[31:0]),

		.instruction(if_instruction[31:0]),

		.nextPc(if_nextPc[31:0])
	);

	IfIdRegisters ifIdRegisters (

		.clock(clk),
		.reset(rst),

		.id_shouldStall(id_shouldStall),

		.if_pc_4(if_pc_4[31:0]),

		.if_instruction(if_instruction[31:0]),

		.id_pc_4(id_pc_4[31:0]),

		.id_instruction(id_instruction[31:0])
	);

	IdStage idStage (

		.clock(clk),
		.reset(rst),

		.pc_4(id_pc_4[31:0]),

		.instruction(id_instruction[31:0]),

		.shouldJumpOrBranch(id_shouldJumpOrBranch),
		.jumpOrBranchPc(id_jumpOrBranchPc[31:0]),

		.shiftAmount(id_shiftAmount[31:0]),
		.immediate(id_immediate[31:0]),

		.registerRsOrPc_4(id_registerRsOrPc_4[31:0]),
		.registerRtOrZero(id_registerRtOrZero[31:0]),

		.aluOperation(id_aluOperation[3:0]),
		.shouldAluUseShiftAmountElseRegisterRsOrPc_4(id_shouldAluUseShiftAmountElseRegisterRsOrPc_4),
		.shouldAluUseImmeidateElseRegisterRtOrZero(id_shouldAluUseImmeidateElseRegisterRtOrZero),

		.shouldWriteRegister(id_shouldWriteRegister),
		.registerWriteAddress(id_registerWriteAddress[4:0]),
		.shouldWriteMemoryElseAluOutputToRegister(id_shouldWriteMemoryElseAluOutputToRegister),

		.shouldWriteMemory(id_shouldWriteMemory),

		.wb_shouldWriteRegister(wb_shouldWriteRegister),
		.wb_registerWriteAddress(wb_registerWriteAddress[4:0]),
		.wb_registerWriteData(wb_registerWriteData[31:0]),

		.ex_shouldWriteRegister(ex_shouldWriteRegister),
		.ex_registerWriteAddress(ex_registerWriteAddress[4:0]),
		.ex_shouldWriteMemoryElseAluOutputToRegister(ex_shouldWriteMemoryElseAluOutputToRegister),
		.ex_aluOutput(ex_aluOutput[31:0]),
		.mem_shouldWriteRegister(mem_shouldWriteRegister),
		.mem_registerWriteAddress(mem_registerWriteAddress[4:0]),
		.mem_shouldWriteMemoryElseAluOutputToRegister(mem_shouldWriteMemoryElseAluOutputToRegister),
		.mem_aluOutput(mem_aluOutput[31:0]),
		.mem_memoryData(mem_memoryData[31:0]),
		.shouldStall(id_shouldStall),

		.debug_shouldForwardRegisterRs(debug_id_shouldForwardRegisterRs),
		.debug_shouldForwardRegisterRt(debug_id_shouldForwardRegisterRt),
		.debug_registers(debug_id_registers[32 * 32 - 1 : 0])
	);

	IdExRegisters idExRegisters (

		.clock(clk),
		.reset(rst),

		.id_shouldStall(id_shouldStall),

		.id_instruction(id_instruction[31:0]),

		.id_shiftAmount(id_shiftAmount[31:0]),
		.id_immediate(id_immediate[31:0]),

		.id_registerRsOrPc_4(id_registerRsOrPc_4[31:0]),
		.id_registerRtOrZero(id_registerRtOrZero[31:0]),

		.id_aluOperation(id_aluOperation[3:0]),
		.id_shouldAluUseShiftAmountElseRegisterRsOrPc_4(id_shouldAluUseShiftAmountElseRegisterRsOrPc_4),
		.id_shouldAluUseImmeidateElseRegisterRtOrZero(id_shouldAluUseImmeidateElseRegisterRtOrZero),

		.id_shouldWriteRegister(id_shouldWriteRegister),
		.id_registerWriteAddress(id_registerWriteAddress[4:0]),
		.id_shouldWriteMemoryElseAluOutputToRegister(id_shouldWriteMemoryElseAluOutputToRegister),

		.id_shouldWriteMemory(id_shouldWriteMemory),

		.ex_instruction(ex_instruction[31:0]),

		.ex_shiftAmount(ex_shiftAmount[31:0]),
		.ex_immediate(ex_immediate[31:0]),

		.ex_registerRsOrPc_4(ex_registerRsOrPc_4[31:0]),
		.ex_registerRtOrZero(ex_registerRtOrZero[31:0]),

		.ex_aluOperation(ex_aluOperation[3:0]),
		.ex_shouldAluUseShiftAmountElseRegisterRsOrPc_4(ex_shouldAluUseShiftAmountElseRegisterRsOrPc_4),
		.ex_shouldAluUseImmeidateElseRegisterRtOrZero(ex_shouldAluUseImmeidateElseRegisterRtOrZero),

		.ex_shouldWriteRegister(ex_shouldWriteRegister),
		.ex_registerWriteAddress(ex_registerWriteAddress[4:0]),
		.ex_shouldWriteMemoryElseAluOutputToRegister(ex_shouldWriteMemoryElseAluOutputToRegister),

		.ex_shouldWriteMemory(ex_shouldWriteMemory)
	);

	ExStage exStage (

		.shiftAmount(ex_shiftAmount[31:0]),
		.immediate(ex_immediate[31:0]),

		.aluOperation(ex_aluOperation[3:0]),
		.shouldAluUseShiftAmountElseRegisterRsOrPc_4(ex_shouldAluUseShiftAmountElseRegisterRsOrPc_4),
		.shouldAluUseImmeidateElseRegisterRtOrZero(ex_shouldAluUseImmeidateElseRegisterRtOrZero),

		.registerRsOrPc_4(ex_registerRsOrPc_4[31:0]),
		.registerRtOrZero(ex_registerRtOrZero[31:0]),

		.aluOutput(ex_aluOutput[31:0]),

		.debug_aluInputA(debug_ex_aluInputA[31:0]),
		.debug_aluInputB(debug_ex_aluInputB[31:0])
	);

	ExMemRegisters exMemRegisters (

		.clock(clk),
		.reset(rst),

		.ex_instruction(ex_instruction[31:0]),

		.ex_shouldWriteRegister(ex_shouldWriteRegister),
		.ex_registerWriteAddress(ex_registerWriteAddress[4:0]),
		.ex_shouldWriteMemoryElseAluOutputToRegister(ex_shouldWriteMemoryElseAluOutputToRegister),

		.ex_aluOutput(ex_aluOutput[31:0]),
		.ex_shouldWriteMemory(ex_shouldWriteMemory),
		.ex_registerRtOrZero(ex_registerRtOrZero[31:0]),

		.mem_instruction(mem_instruction[31:0]),

		.mem_shouldWriteRegister(mem_shouldWriteRegister),
		.mem_registerWriteAddress(mem_registerWriteAddress[4:0]),
		.mem_shouldWriteMemoryElseAluOutputToRegister(mem_shouldWriteMemoryElseAluOutputToRegister),

		.mem_aluOutput(mem_aluOutput[31:0]),
		.mem_shouldWriteMemory(mem_shouldWriteMemory),
		.mem_registerRtOrZero(mem_registerRtOrZero[31:0])
	);
/*
	MemStage memStage (

		.clock(clk),
		.reset(rst),

		.aluOutput(mem_aluOutput[31:0]),
		.shouldWriteMemory(mem_shouldWriteMemory),
		.registerRtOrZero(mem_registerRtOrZero[31:0]),
		.memoryData(mem_memoryData[31:0])
	);*/

	MemWbRegisters memWbRegisters (

		.clock(clk),
		.reset(rst),

		.mem_instruction(mem_instruction[31:0]),

		.mem_shouldWriteRegister(mem_shouldWriteRegister),
		.mem_registerWriteAddress(mem_registerWriteAddress[4:0]),
		.mem_shouldWriteMemoryElseAluOutputToRegister(mem_shouldWriteMemoryElseAluOutputToRegister),
		.mem_memoryData(mem_memoryData[31:0]),
		.mem_aluOutput(mem_aluOutput[31:0]),

		.wb_instruction(wb_instruction[31:0]),

		.wb_shouldWriteRegister(wb_shouldWriteRegister),
		.wb_registerWriteAddress(wb_registerWriteAddress[4:0]),
		.wb_shouldWriteMemoryElseAluOutputToRegister(wb_shouldWriteMemoryElseAluOutputToRegister),
		.wb_memoryData(wb_memoryData[31:0]),
		.wb_aluOutput(wb_aluOutput[31:0])
	);

	WbStage wbStage (
		.shouldWriteMemoryElseAluOutputToRegister(wb_shouldWriteMemoryElseAluOutputToRegister),
		.memoryData(wb_memoryData[31:0]),
		.aluOutput(wb_aluOutput[31:0]),
		.registerWriteData(wb_registerWriteData[31:0])
	);

endmodule

