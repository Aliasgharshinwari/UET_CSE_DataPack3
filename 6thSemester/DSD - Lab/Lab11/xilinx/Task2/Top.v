module top(CLK_IN, data_in, start, done);
	input CLK_IN;
	input [7:0]data_in;
	input start;
	output done;

	wire eqz, LdA, LdB, LdP, clrp, decB;
	wire CLK;	
	
	clock_divider divider(CLK_IN, CLK);
	
	controller cp(CLK, eqz, start, LdA, LdB, LdP, clrp, decB, done);
	product_datapath dp(eqz, LdA, LdB, Ldp, clrp, decB, data_in, CLK);
	//BCD_to_SevenSeg(bcd, O);

endmodule

