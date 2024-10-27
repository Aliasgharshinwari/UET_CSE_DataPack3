module Top( CLK, RST, SEG, EnablePins);
	input CLK;
	input RST;
	output [7:0]SEG;
	output [2:0]EnablePins;
	
	wire [3:0]BCD_SEG_U, BCD_SEG_T, BCD_SEG_H;
	wire [7:0]SEG_U, SEG_T, SEG_H;
	wire [17:0] count;
	wire SLOW_CLK;
	
	clock_divider divider(CLK, SLOW_CLK);
	
	three_BCD three_bcd(SLOW_CLK, RST, BCD_SEG_U, BCD_SEG_T, BCD_SEG_H);

	BCD_to_SevenSeg bcd_dec_1(BCD_SEG_U, SEG_U);
	BCD_to_SevenSeg bcd_dec_2(BCD_SEG_T, SEG_T);
	BCD_to_SevenSeg bcd_dec_3(BCD_SEG_H, SEG_H);
	
	Counter18bit counter18( CLK, RST, count);
	Mux4x1 mux41({count[17],count[16]}, SEG_U, SEG_T, SEG_H, SEG);
	Decoder2x4 decoder({count[17],count[16]}, EnablePins);

endmodule
