`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:00:04 10/21/2019 
// Design Name: 
// Module Name:    CHECK_BRANCH 
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
module CHECK_BRANCH(
		input wire [2:0] Branch,
		input wire zero,
		output reg [1:0] out
    );
	always@*begin
		case(Branch)
			3'b000:
				begin
					out <= Branch[1:0];	//PC+4
				end
			3'b001:
				begin
					if(zero) begin
						out <= Branch[1:0];
					end
					else begin
						out <= 2'b00;
					end						//Beq
				end
			3'b010:
				begin
					out <= Branch[1:0];	//J or Jal
				end
			3'b011:
				begin
					out <= Branch[1:0]; //Jr
				end
			3'b100:
				begin
					if(zero) begin
						out <= 2'b00;
					end
					else begin
						out <= 2'b01;
					end
				end						//Bne
			3'b101:
				begin
					out <= 2'b00;
				end
			3'b110:
				begin
					out <= 2'b00;
				end
			3'b111:
				begin
					out <= 2'b00;
				end
		endcase
	end

endmodule
