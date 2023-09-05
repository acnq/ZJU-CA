`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:02:55 09/30/2019 
// Design Name: 
// Module Name:    IF 
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
module IF(
	input clk,
	input if_branch,
	input [31:0]NPC,//next_pc
	input [31:0]BPC,//branch_pc
	input [31:0]PC,
	input [31:0]IF_inst,
	output [31:0]IF_inst_out,
	output [31:0]PC_4
    );

	add_32 add(.a(1'd4),
				  .b(PC),
				  .c(PC_4)
				  );
				  
	inst_mem inst_mem(.A(IF_inst),
							.inst(IF_inst_out)
							);
	
	MUX2T1_32 Mux1(.I0(PC_4),
						.I1(BPC),
						.s(if_branch),
						.o(NPC)
						);
				  
endmodule
