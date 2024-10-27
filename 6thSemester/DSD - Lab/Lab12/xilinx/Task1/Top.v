module top(CLK_IN, RST, OUT_LED, OUT_SEG);
	input CLK_IN, RST;
	output [2:0]OUT_LED;
	output [7:0]OUT_SEG;
	wire [2:0]OUT_LED_WIRE;
	wire CLK;	
	
	clock_divider divider(CLK_IN, CLK);
	traffic_controller dut(CLK, RST, OUT_LED_WIRE);
	BCD_to_SevenSeg bcd_dec({1'b0,OUT_LED_WIRE},OUT_SEG);

	assign OUT_LED = OUT_LED_WIRE;
endmodule