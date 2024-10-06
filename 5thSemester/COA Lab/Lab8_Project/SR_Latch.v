module SR_Latch(S, R, Q, QBar);
	
	input S;
	input R;
	
	output Q;
	output QBar;
	
	//reg Q,QBar;
	
	assign Q = ~(S & QBar);
	assign QBar = ~(R & Q);
	

endmodule
