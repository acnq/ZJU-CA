`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:24 03/19/2014 
// Design Name: 
// Module Name:    and32 
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
module  or_bit_32(input [31:0] A,
						output o
					  );
					  
	assign o = |A;		//32位数“位或”输出（32位数=0，输出o=1）

endmodule
