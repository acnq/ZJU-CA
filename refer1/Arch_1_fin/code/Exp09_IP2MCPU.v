`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:57 05/07/2019 
// Design Name: 
// Module Name:    Exp09_IP2MCPU 
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
module Exp09_IP2MCPU(
	input RSTN,
	input [3:0]BTN_y,
	output [4:0]BTN_x,
	input [15:0]SW,
	input clk_100mhz,
	output CR,
	output RDY,
	output readn,
	output seg_clk,
	output seg_sout,
	output SEG_PEN,
	output seg_clrn,
	output led_clk,
	output led_sout,
	output LED_PEN,
	output led_clrn,
	output [7:0]SEGMENT,
	output [3:0]AN,
	output [7:0]LED,
	output Buzzer
    );
	
	wire V5;
	wire N0;
	
	GND G(.G(N0));
	VCC V(.P(V5));
	
	//U1
	wire Clk_CPU;
	wire rst;
	wire INT;
	wire [31:0]inst;
	wire [31:0]PC;
	wire mem_w;
	wire [31:0]Addr_out;
	wire [31:0]Data_in;
	wire [31:0]Data_out;
	wire [4:0]State;
	wire CPU_MIO;
	
	Multi_CPU U1(.clk(Clk_CPU),
					 .reset(rst),
					 .inst_out(inst[31:0]),
					 .INT(INT),
					 .PC_out(PC[31:0]),
					 .mem_w(mem_w),
					 .Addr_out(Addr_out[31:0]),
					 .Data_in(Data_in[31:0]),
					 .Data_out(Data_out[31:0]),
					 .state(State[4:0]),
					 .CPU_MIO(CPU_MIO),
					 .MIO_ready(V5)
					 );
					 
	//U3
	wire [9:0]addra;
	wire [0:0]wea;
	wire [31:0]dina;
	wire [31:0]douta;
	
	RAM_B U3(.addra(addra[9:0]),
				.wea(wea[0:0]),
				.dina(dina[31:0]),
				.clka(clk_100mhz),
				.douta(douta[31:0])
				);
	
	//U4
	wire [3:0]BTN_OK;
	wire [15:0]SW_OK;
	wire [31:0]CPU2IO;
	wire GPIOE0;
	wire GPIOF0;
	wire [15:0]LED_out;
	wire [31:0]Counter_out;
	wire counter2_out;
	wire counter1_out;
	wire counter0_out;
	wire counter_we;
	
	MIO_BUS U4(.clk(clk_100mhz),
				  .rst(rst),
				  .BTN(BTN_OK[3:0]),
				  .SW(SW_OK[15:0]),
				  .mem_w(mem_w),
				  .addr_bus(Addr_out[31:0]),
				  .Cpu_data4bus(Data_in[31:0]),
				  .Cpu_data2bus(Data_out[31:0]),
				  .ram_data_in(dina[31:0]),
				  .data_ram_we(wea[0:0]),
				  .ram_addr(addra[9:0]),
				  .ram_data_out(douta[31:0]),
				  .Peripheral_in(CPU2IO[31:0]),
				  .GPIOe0000000_we(GPIOE0),
				  .GPIOf0000000_we(GPIOF0),
				  .led_out(LED_out[15:0]),
				  .counter_out(Counter_out[31:0]),
				  .counter2_out(counter2_out),
				  .counter1_out(counter1_out),
				  .counter0_out(counter0_out),
				  .counter_we(counter_we)
				  );
	
	//U5
	wire IO_clk;
	wire [31:0]Disp_num;
	wire [7:0]point_out;
	wire [7:0]LE_out;
	wire [31:0]Div;
	
	assign IO_clk = ~Clk_CPU;
	
	Multi_8CH32 U5(.clk(IO_clk),
						.rst(rst),
						.EN(GPIOE0),
						.Test(SW_OK[7:5]),
						.point_in({Div[31:0],Div[31:13],State[4:0],N0,N0,N0,N0,N0,N0,N0,N0}),
						.LES({64{1'b0}}),
						.Data0(CPU2IO[31:0]),
						.data1({N0,N0,PC[31:2]}),
						.data2(inst[31:0]),
						.data3(Counter_out[31:0]),
						.data4(Addr_out[31:0]),
						.data5(Data_out[31:0]),
						.data6(Data_in[31:0]),
						.data7(PC[31:0]),
						.Disp_num(Disp_num[31:0]),
						.point_out(point_out[7:0]),
						.LE_out(LE_out[7:0])
						);
	
	//U6
	SSeg7_Dev U6(.clk(clk_100mhz),
					 .rst(rst),
					 .Start(Div[20]),
					 .SW0(SW_OK[0]),
					 .flash(Div[25]),
					 .Hexs(Disp_num[31:0]),
					 .point(point_out[7:0]),
					 .LES(LE_out[7:0]),
					 .seg_clk(seg_clk),
					 .seg_sout(seg_sout),
					 .SEG_PEN(SEG_PEN),
					 .seg_clrn(seg_clrn)
					 );
	
	//U7 
	wire [1:0]counter_set;
	wire [13:0]GPIOf0;
	
	SPIO U7(.clk(IO_clk),
			  .rst(rst),
			  .Start(Div[20]),
			  .EN(GPIOF0),
			  .P_Data(CPU2IO[31:0]),
			  .counter_set(counter_set[1:0]),
			  .LED_out(LED_out[15:0]),
			  .led_clk(led_clk),
			  .led_sout(led_sout),
			  .led_clrn(led_clrn),
			  .LED_PEN(LED_PEN),
			  .GPIOf0(GPIOf0[13:0])
			  );
	
	//U8
	clk_div U8(.clk(clk_100mhz),
				  .rst(rst),
				  .SW2(SW_OK[2]),
				  .clkdiv(Div[31:0]),
				  .Clk_CPU(Clk_CPU)
				  );
								
	//U9
	wire readn;
	wire [4:0]Key_out;
	wire [3:0]Pulse;
	
	SAnti_jitter U9(.RSTN(RSTN),
						 .readn(readn),
						 .clk(clk_100mhz),
						 .Key_y(BTN_y[3:0]),
						 .Key_x(BTN_x[4:0]),
						 .SW(SW[15:0]),
						 .Key_out(Key_out[4:0]),
						 .Key_ready(RDY),
						 .pulse_out(Pulse[3:0]),
						 .BTN_OK(BTN_OK[3:0]),
						 .SW_OK(SW_OK[15:0]),
						 .CR(CR),
						 .rst(rst)
						 );
	
	Counter_x U10(.clk(IO_clk),
					  .rst(rst),
					  .clk0(Div[8]),
					  .clk1(Div[9]),
					  .clk2(Div[11]),
					  .counter_we(counter_we),
					  .counter_val(CPU2IO[31:0]),
					  .counter_ch(counter_set[1:0]),
					  .counter0_OUT(counter0_out),
					  .counter1_OUT(counter1_out),
					  .counter2_OUT(counter2_out),
					  .counter_out(Counter_out[31:0])
					  );
	
	Seg7_Dev U61(.Scan({SW_OK[1],Div[19:18]}),
					 .SW0(SW_OK[0]),
					 .flash(Div[25]),
					 .Hexs(Disp_num[31:0]),
					 .point(point_out[7:0]),
					 .LES(LE_out[7:0]),
					 .SEGMENT(SEGMENT[7:0]),
					 .AN(AN[3:0])
					 );
	
	PIO U71(.clk(IO_clk),
			  .rst(rst),
			  .EN(GPIOF0),
			  .PData_in(CPU2IO[31:0]),
			  .LED_out(LED[7:0])
			  );
	
	//M4
	wire [31:0]Ai;
	wire [31:0]Bi;
	wire [7:0]blink;
	
	SEnter_2_32 M4(.clk(clk_100mhz),
						.Din(Key_out[4:0]),
						.D_ready(RDY),
						.BTN(BTN_OK[2:0]),
						.Ctrl({SW_OK[7:5],SW_OK[15],SW_OK[0]}),
						.readn(readn),
						.Ai(Ai[31:0]),
						.Bi(Bi[31:0]),
						.blink(blink[7:0])
						);
	
	BUF buffer (.I(V5),
					.O(Buzzer)
					);

endmodule
