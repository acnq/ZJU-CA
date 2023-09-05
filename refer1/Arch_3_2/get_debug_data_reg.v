`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:47:43 12/16/2019 
// Design Name: 
// Module Name:    get_debug_data_reg 
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
module get_debug_data_reg(
	input wire[4:0] debug_addr,
	input wire[32*32-1:0] debug_id_registers,
	output wire[31:0] debug_data_reg
    );
	 
	 assign debug_data_reg = (debug_addr == 0) ? 0 : debug_id_registers[(32*(debug_addr)+31):32*(debug_addr)];

endmodule
