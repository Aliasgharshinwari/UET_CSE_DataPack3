module top(CLK_IN, RST, OUT_LED1, OUT_LED2, OUT_SEG);
	input CLK_IN, RST;
	output [2:0]OUT_LED1;
	output [2:0]OUT_LED2;
	
	output [7:0]OUT_SEG;
	
	wire [3:0]COUNT;
	wire CLK;	
	
	clock_divider divider(CLK_IN, CLK);
	traffic_controller dut(CLK, RST, OUT_LED1, OUT_LED2, COUNT);
	BCD_to_SevenSeg bcd_dec(COUNT,OUT_SEG);

endmodule

