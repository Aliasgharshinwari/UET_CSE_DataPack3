module T_FlipFlop(T, rst, Clk,  Q, Qbar);

	input T;
	input rst;
	input Clk;
	output Q;
	output Qbar;
	
	wire O;
	
	xor(O, T, Q);
	D_FlipFlop my_D_FlipFlop(O, rst, Clk, Q, Qbar);
	

endmodule
