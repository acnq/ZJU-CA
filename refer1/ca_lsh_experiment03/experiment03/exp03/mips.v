`include "define.vh"


/**
 * MIPS CPU wrapper.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */
module mips (
	input wire debug_en,  // debug enable
	input wire debug_step,  // debug step clock
	input wire [6:0] debug_addr,  // debug address
	output wire [31:0] debug_data,  // debug data	`endif
	input wire clk,  // main clock
	input wire rst,  // synchronous reset
	input wire interrupter,  // interrupt source, for future use
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
	assign r29 = mem_data_w;
	assign r28 = mem_wen;
	assign r27 = mem_data_r;
	assign r26 = mem_addr;
	// instruction signals
	wire inst_ren;
	wire [31:0] inst_addr;
	wire [31:0] inst_data;
	
	// memory signals
	wire mem_ren, mem_wen;
	wire [31:0] mem_addr;
	wire [31:0] mem_data_r;
	wire [31:0] mem_data_w;
	
	// CPU
	SCPU MIPS_CORE (
		.clk(clk),
		.rst(rst),
	//	`ifdef DEBUG
		.debug_en(debug_en),
		.debug_step(debug_step),
		.debug_addr(debug_addr),
		.debug_data(debug_data),
	//	`endif
		.inst_ren(inst_ren),
		.inst_addr(inst_addr),
		.inst_data(inst_data),
		.mem_ren(mem_ren),
		.mem_wen(mem_wen),
		.mem_addr(mem_addr),
		.mem_dout(mem_data_w),
		.mem_din(mem_data_r),
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
		.r30(r30),
		.r31(r31),
		.IF_Inst(IF_Inst),
		.ID_Inst(ID_Inst),
		.EXE_Inst(EXE_Inst),
		.MEM_Inst(MEM_Inst),
		.WB_Inst(WB_Inst)
		);
	
//	inst_rom INST_ROM (
//		.clk(clk),
//		.addr({2'b0, inst_addr[31:2]}),
//		//.addr(inst_addr),
//		.dout(inst_data)
//		);
	INST_ROM inst_rom (
		.a(inst_addr[11:2]), // input [9 : 0] a
		.spo(inst_data) // output [31 : 0] spo	
	);
	DATA_RAM your_instance_name (
	  .clka(~clk), // input clka
	  .wea(mem_wen), // input [0 : 0] wea
	  .addra(mem_addr[11:2]), // input [9 : 0] addra
	  .dina(mem_data_w), // input [31 : 0] dina
	  .douta(mem_data_r) // output [31 : 0] douta
	);
endmodule
