`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:21 10/28/2019 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
		input wire [31:0] Inst,
		output reg ALUSrc_A,
		output reg ALUSrc_B,
		output reg RegDst,
		output reg [3:0]ALUControl,
		output reg [1:0]DatatoReg,
		output reg Jal,
		output reg [2:0]JumpBranch,
		output reg RegWrite,
		output reg EXTLog,
		output reg MemWrite,
		output reg ReadRs,
		output reg ReadRt
    );
	 
	wire [5:0] OPcode;
	wire [5:0] Fun;
	assign OPcode[5:0] = Inst[31:26];
	assign Fun[5:0] = Inst[5:0];
	
	`define CPU_ctrl_signals {RegDst,ALUControl,ALUSrc_B,DatatoReg,Jal,JumpBranch,RegWrite,MemWrite,ALUSrc_A,EXTLog,ReadRs,ReadRt}
	
	always @* begin
		case(OPcode)
			6'b000000:begin 					//ALU
				case(Fun)
					6'b100000: `CPU_ctrl_signals = 18'b100100000000100011;	//add
					6'b100010: `CPU_ctrl_signals = 18'b101100000000100011;	//sub
					6'b100100: `CPU_ctrl_signals = 18'b100000000000100011; 	//and
					6'b100101: `CPU_ctrl_signals = 18'b100010000000100011; 	//or
					6'b100110: `CPU_ctrl_signals = 18'b100110000000100011; 	//xor
					6'b100111: `CPU_ctrl_signals = 18'b101000000000100011; 	//nor
					6'b101010: `CPU_ctrl_signals = 18'b101110000000100011; 	//slt
					6'b000010: `CPU_ctrl_signals = 18'b101010000000101011; 	//srl
					6'b001000: `CPU_ctrl_signals = 18'b100000000011000010; 	//jr
					//6'b011000: `CPU_ctrl_signals = 18'b10010000011100100;	//eret
					//6'b100001: begin CPU_ctrl_signals = ;   end 	//addu
					//6'b100011: begin CPU_ctrl_signals = ;   end 	//subu
					//6'b101011: begin CPU_ctrl_signals = ;   end 	//sltu
					6'b000000:begin
						if(Inst == 32'h00000000) begin
							`CPU_ctrl_signals = 18'b000000000000000000; //NOP
						end
						else begin
							`CPU_ctrl_signals = 18'b110000000000101011;	//sll
						end
					end
					//6'b000011: begin CPU_ctrl_signals = ;   end 	//sra
					//6'b000100: begin CPU_ctrl_signals = ;   end 	//sllv
					//6'b000110: begin CPU_ctrl_signals = ;   end 	//srlv
					//6'b000111: begin CPU_ctrl_signals = ;   end 	//srav
					//6'b: begin CPU_ctrl_signals = 1010011111100;   end 	//jalr
				endcase
			end
			6'b001000: `CPU_ctrl_signals = 18'b000101000000100110; 	//addi
			//6'b001001: begin CPU_ctrl_signals = ;   end 	//addiu
			6'b001100: `CPU_ctrl_signals = 18'b000001000000100010; 	//andi
			6'b001101: `CPU_ctrl_signals = 18'b000011000000100010; 	//ori
			6'b001110: `CPU_ctrl_signals = 18'b000111000000100010;	//xori
			6'b001111: `CPU_ctrl_signals = 18'b000100100000100000; 	//lui
			6'b100011: `CPU_ctrl_signals = 18'b000101010000100110;  //load
			6'b101011: `CPU_ctrl_signals = 18'b100101000000010111;  //store 
			6'b000100: `CPU_ctrl_signals = 18'b001100000001000111;	//beq
			6'b000101: `CPU_ctrl_signals = 18'b001100000100000111;  //bne
			6'b001010: `CPU_ctrl_signals = 18'b001111000000100110; 	//slti
		//6'b001011: begin CPU_ctrl_signals = ;   end 	//sltiu
			6'b000010: `CPU_ctrl_signals = 18'b000000000010000000; 	//j
			6'b000011: `CPU_ctrl_signals = 18'b000100111010100000; 	//jal
		endcase
	end

endmodule
