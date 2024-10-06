module SR_FlipFlop(S, R,Clk, Q, QBar);
	
	input S;
	input R;
	input Clk;
	
	output Q;
	output QBar;
	
	wire nA;
	wire nB;

	nand n1(nA, S, Clk);
	nand n2(nB, R, Clk);
	
	nand n3(Q, nA, QBar);
	nand n4(QBar, nB, Q);
	
	

endmodule

