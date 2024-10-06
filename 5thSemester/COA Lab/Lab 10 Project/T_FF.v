module U_T_FF(rst, Clk, Q, QBar);
		
		input rst;
		input Clk;
		
		output Q;
		output QBar;

		wire n1;
		
		not n(n1, Q);
		D_FF my_D_FF(n1, rst, Clk, Q, QBar);

endmodule 

