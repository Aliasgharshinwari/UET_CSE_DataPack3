module C_T_FF(T, rst, Clk, Q, QBar);
		
		input rst;
		input Clk;
		input T;
		output Q;
		output QBar;

		wire n1;
		
		xor n(n1, Q, T);
		D_FF my_D_FF(n1, rst, Clk, Q, QBar);

endmodule 


