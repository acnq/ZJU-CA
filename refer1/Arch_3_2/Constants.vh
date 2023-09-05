`define CODE_R_TYPE 6'b000000
`define CODE_J 6'b000010
`define CODE_JAL 6'b000011
`define CODE_BEQ 6'b000100 
`define CODE_BNE 6'b000101 
`define CODE_ADDI 6'b001000 
`define CODE_ADDIU 6'b001001  
`define CODE_SLTI 6'b001010 
`define CODE_SLTIU 6'b001011 
`define CODE_ANDI 6'b001100 
`define CODE_ORI 6'b001101 
`define CODE_XORI 6'b001110 
`define CODE_LUI 6'b001111
`define CODE_LW 6'b100011  
`define CODE_SW 6'b101011 

`define FUNCTION_ADD 6'b100000
`define FUNCTION_ADDU 6'b100001 
`define FUNCTION_SUB 6'b100010 
`define FUNCTION_SUBU 6'b100011 
`define FUNCTION_AND 6'b100100 
`define FUNCTION_OR 6'b000101 
`define FUNCTION_XOR 6'b100110
`define FUNCTION_NOR 6'b100111 
`define FUNCTION_SLT 6'b101010 
`define FUNCTION_SLTU 6'b101011 
`define FUNCTION_SLL 6'b000000 
`define FUNCTION_SRL 6'b000010 
`define FUNCTION_SRA 6'b000011 
`define FUNCTION_SLLV 6'b000100  
`define FUNCTION_SRLV 6'b000110 
`define FUNCTION_SRAV 6'b000111 
`define FUNCTION_JR 6'b001000
`define FUNCTION_JALR 6'b001001

`define ALU_NONE 4'b1111
`define ALU_ADD 4'b0010 
// `define ALU_ADDU 4'b
`define ALU_SUB 4'b0110 
// `define ALU_SUBU 4'b
`define ALU_AND 4'b0000 
`define ALU_OR 4'b0001 
`define ALU_XOR 4'b0011 
`define ALU_NOR 4'b0100 
`define ALU_SLT 4'b0111 
// `define ALU_SLTU 4'b
`define ALU_SLL 4'b1000 
`define ALU_SRL 4'b0101 
// `define ALU_SRA 4'b
// `define ALU_SLLV 4'b
// `define ALU_SRLV 4'b
// `define ALU_SRAV 4'b