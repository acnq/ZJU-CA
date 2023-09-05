module EXE_Stage
(
    input clk,
    input rst,
    input [31:0] ID_A,
    input [31:0] ID_B,
    input [2:0] ID_ALU_Control,
    input ID_ALUSrc_B,
    input ID_ALUSrc_A,
    input [15:0] ID_Imm,
    input [31:0] ID_PC,
    input [4:0] ID_Shift,
    input [4:0] ID_DstReg,
    input ID_sign,
    input ID_RegWrite,
    input ID_MemWrite,
    input [1:0] ID_DatatoReg,
    input [31:0] ID_Inst,
    input ID_Forward_sw,
    output reg EXE_RegWrite,
    output reg EXE_MemWrite,
    output reg EXE_DatatoReg,
    output reg [31:0] EXE_Result,
    output reg [31:0] EXE_B,
    output reg [4:0] EXE_DstReg,
    output reg [31:0] EXE_PC,
    output reg [31:0] EXE_Inst,
    output reg [31:0] EXE_Data,
    //For forwarding
    output reg [31:0] EXE_Forward_Data,
    output reg EXE_Forward_sw
);
    wire overflow;
    wire [31:0] ALU_out;
    wire [31:0] A;
    wire [31:0] B;
    wire [31:0] Imm;
    //assign ID_DstReg =  ID_jal  ? 5'b 11111 : ID_RegDst ? ID_rd : ID_rt;
    always @*
    case(ID_DatatoReg)
    2'b00: EXE_Forward_Data = ALU_out;
    2'b01: EXE_Forward_Data = 32'd0;
    2'b10: EXE_Forward_Data = {ALU_out[15:0],16'd0};
    2'b11: EXE_Forward_Data = ID_PC;
    endcase
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            EXE_Result <= 32'd0;
            EXE_B <= 32'd0;
            EXE_DstReg <= 5'd0;
            EXE_RegWrite <= 1'd0;
            EXE_MemWrite <= 1'd0;
            EXE_DatatoReg <= 2'd0;
            EXE_PC <= 32'd0;
            EXE_Inst <= 32'd0;
            EXE_Data <= 32'd0;
            EXE_Forward_sw <= 1'd0;
        end
        else
        begin
            EXE_Result <= ALU_out;
            EXE_B <= ID_B;
            EXE_DstReg <= ID_DstReg;
            EXE_RegWrite <= ID_RegWrite;
            EXE_MemWrite <= ID_MemWrite;
            EXE_DatatoReg <= ID_DatatoReg==2'b01;
            EXE_PC <= ID_PC;
            EXE_Inst <= ID_Inst;
            EXE_Data <= EXE_Forward_Data;
            EXE_Forward_sw <= ID_Forward_sw;
        end
    end
    
    ALU  ALU
    (
        .A(A), 
        .ALU_operation(ID_ALU_Control), 
        .B(ID_ALUSrc_B?Imm:B), 
        .overflow(overflow), 
        .res(ALU_out), 
        .zero()
    );
    
    MUX2T1_32  AMUX
    (
        .I0(ID_A), 
        .I1({{27{1'b0}},ID_Shift}), 
        .s(ID_ALUSrc_A), 
        .o(A)
    );
    
    MUX2T1_32  BMUX
    (
        .I0(ID_B), 
        .I1(Imm), 
        .s(ID_ALUSrc_B), 
        .o(B)
    );
    
    Ext_32 Ext
    (
        .Imm_16(ID_Imm),
        .sign(ID_sign),
        .Imm_32(Imm)
    );
    
     
endmodule
