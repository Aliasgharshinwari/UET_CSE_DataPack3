module top (OUT, clk, reset, D0, D1, D2, D3, D4, D5, D6, D7);

	input clk, reset, D0, D1, D2, D3, D4, D5, D6, D7;
	output OUT;
	
	wire [2:0] out;
	
	counter c (clk, reset, out);
	m81 m (OUT, D0, D1, D2, D3, D4, D5, D6, D7, out);

endmodule