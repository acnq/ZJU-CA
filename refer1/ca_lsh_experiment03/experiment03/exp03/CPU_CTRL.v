`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:24:22 10/18/2019 
// Design Name: 
// Module Name:    CPU_CTRL 
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
module CPU_CTRL(
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
		output reg ReadRt,
		output reg LW,
		output reg SW
    );
	wire [5:0] OPcode;
	wire [5:0] Fun;
	assign OPcode[5:0] = Inst[31:26];
	assign Fun[5:0] = Inst[5:0];
	
	`define CPU_ctrl_signals {RegDst,ALUControl,ALUSrc_B,DatatoReg,Jal,JumpBranch,RegWrite,MemWrite,ALUSrc_A,EXTLog,ReadRs,ReadRt,LW,SW}
	always @* begin
		case(OPcode)
			6'b000000:begin 					//ALU
				case(Fun)
					6'b100000: `CPU_ctrl_signals = 20'b10010000000010001100;	//add
					6'b100010: `CPU_ctrl_signals = 20'b10110000000010001100;	//sub
					6'b100100: `CPU_ctrl_signals = 20'b10000000000010001100; 	//and
					6'b100101: `CPU_ctrl_signals = 20'b10001000000010001100; 	//or
					6'b100110: `CPU_ctrl_signals = 20'b10011000000010001100; 	//xor
					6'b100111: `CPU_ctrl_signals = 20'b10100000000010001100; 	//nor
					6'b101010: `CPU_ctrl_signals = 20'b10111000000010001100; 	//slt
					6'b000010: `CPU_ctrl_signals = 20'b10101000000010101100; 	//srl
					6'b001000: `CPU_ctrl_signals = 20'b10000000001100001000; 	//jr
					//6'b011000: `CPU_ctrl_signals = 20'b10010000011100100;	//eret
					//6'b100001: begin CPU_ctrl_signals = ;   end 	//addu
					//6'b100011: begin CPU_ctrl_signals = ;   end 	//subu
					//6'b101011: begin CPU_ctrl_signals = ;   end 	//sltu
					6'b000000:begin
						if(Inst == 32'h00000000) begin
							`CPU_ctrl_signals = 20'b00000000000000000000; //NOP
						end
						else begin
							`CPU_ctrl_signals = 20'b11000000000010101100;	//sll
						end
					end
					//6'b000011: begin CPU_ctrl_signals = ;   end 	//sra
					//6'b000100: begin CPU_ctrl_signals = ;   end 	//sllv
					//6'b000110: begin CPU_ctrl_signals = ;   end 	//srlv
					//6'b000111: begin CPU_ctrl_signals = ;   end 	//srav
					//6'b: begin CPU_ctrl_signals = 1010011111100;   end 	//jalr
				endcase
			end
			6'b001000: `CPU_ctrl_signals = 20'b00010100000010011000; 	//addi
			//6'b001001: begin CPU_ctrl_signals = ;   end 	//addiu
			6'b001100: `CPU_ctrl_signals = 20'b00000100000010001000; 	//andi
			6'b001101: `CPU_ctrl_signals = 20'b00001100000010001000; 	//ori
			6'b001110: `CPU_ctrl_signals = 20'b00011100000010001000;	//xori
			6'b001111: `CPU_ctrl_signals = 20'b00010010000010000000; 	//lui
			6'b100011: `CPU_ctrl_signals = 20'b00010101000010011010;  //load
			6'b101011: `CPU_ctrl_signals = 20'b10010100000001011101;  //store 
			6'b000100: `CPU_ctrl_signals = 20'b00110000000100011100;	//beq
			6'b000101: `CPU_ctrl_signals = 20'b00110000010000011100;  //bne
			6'b001010: `CPU_ctrl_signals = 20'b00111100000010011000; 	//slti
		//6'b001011: begin CPU_ctrl_signals = ;   end 	//sltiu
			6'b000010: `CPU_ctrl_signals = 20'b00000000001000000000; 	//j
			6'b000011: `CPU_ctrl_signals = 20'b00010011101010000000; 	//jal
		endcase
	end

endmodule
