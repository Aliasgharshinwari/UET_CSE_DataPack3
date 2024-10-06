module D_FlipFlop(D,rst, Clk, Q, QBar);
	input D, Clk, rst;
	
	output Q, QBar;
	
	reg Q,QBar;
	
	always@(posedge Clk)

		if (rst)
			begin
				Q <= 1'b0;
				QBar <= 1'b1;
			end
		
		else
			begin
				Q <= D;
				QBar <= ~D;
			end		
endmodule

