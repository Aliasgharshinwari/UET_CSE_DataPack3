module tst_top;

	reg clk, reset, D0, D1, D2, D3, D4, D5, D6, D7;
	wire OUT;
	
	top t (OUT, clk, reset, D0, D1, D2, D3, D4, D5, D6, D7);

	always
		#5 clk=~clk;
	
	initial
	begin
		reset=0;
		clk=0;
		D0=0; D1=1; D2=1; D3=0; D4=1; D5=1; D6=0; D7=1;
		#10 reset=1; D0=1; D1=1; D2=0; D3=0; D4=0; D5=1; D6=1; D7=1;
		#5 D0=0; D1=0; D2=1; D3=1; D4=1; D5=1; D6=0; D7=1;
		#5 D0=1; D1=1; D2=0; D3=0; D4=1; D5=1; D6=1; D7=1;
	end

endmodule