module top(clk,CLR,segment);
	
	input clk, CLR;
	output [10:0] segment;
	
	wire [2:0] COUNT;
	
	down_ctr ctr( clk, CLR,  COUNT);
	bcd_decoder my_decoder(COUNT , segment);

endmodule
