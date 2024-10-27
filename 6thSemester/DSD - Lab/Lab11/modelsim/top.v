module top(CLK, data_in, start, done);

	input CLK;
	input [7:0]data_in;
	input start;
	output done;

	wire eqz, LdA, LdB, LdP, clrp, decB;
	
	controller cp(CLK, eqz, start, LdA, LdB, LdP, clrp, decB, done);
	product_datapath dp(eqz, LdA, LdB, Ldp, clrp, decB, data_in, CLK);

endmodule

