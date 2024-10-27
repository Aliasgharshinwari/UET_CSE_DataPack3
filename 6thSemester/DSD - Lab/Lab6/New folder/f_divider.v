module f_divider(
	input clk,
	output out
);
	wire qbar;
	
	
	d_FF DUT1(qbar, clk, out, qbar);
	//d_FF DUT2(qbar, clk, out, qbar);

endmodule
