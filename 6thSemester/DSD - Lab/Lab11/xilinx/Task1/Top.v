module top(CLK_IN, data_in_A, data_in_B, start, done, out);
	input CLK_IN;
	input [3:0]data_in_A;
	input [3:0]data_in_B;
	input start;
	output done;
	output [7:0]out;
	
	
	wire eqz, LdA, LdB, LdP, clrp, decB;
	wire CLK;	
	
	clock_divider divider(CLK_IN, CLK);
	
	controller cp(CLK, eqz, 1'b1, LdA, LdB, LdP, clrp, done);
	product_datapath dp(eqz, LdA, LdB, Ldp, clrp, data_in_A, data_in_B, CLK, out);
endmodule

