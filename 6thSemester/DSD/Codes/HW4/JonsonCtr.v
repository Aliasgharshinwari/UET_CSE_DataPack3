module JS_Counter (CLK, CLR, Q);
	input CLK, CLR;
	output [3:0] Q;
	
	wire Qbar[3:0];
	
	DFF d0(Qbar[1], CLK, CLR, Q[0], Qbar[0]);
	DFF d1(Q[0], CLK, CLR, Q[1], Qbar[1]);
	DFF d2(Q[1], CLK, CLR, Q[2], Qbar[2]);
	DFF d3(Q[2], CLK, CLR, Q[3], Qbar[3]);

endmodule
