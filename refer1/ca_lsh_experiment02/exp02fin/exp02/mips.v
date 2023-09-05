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
	input wire interrupter  // interrupt source, for future use
	);
	
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
		.mem_din(mem_data_r)
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
