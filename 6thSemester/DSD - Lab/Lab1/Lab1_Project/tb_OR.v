module tb_OR();

	reg A, B;
	wire O;
	or_using_nand my_or_using_nand(O, A, B);
	
	initial begin
	
	$monitor("A = %b B = %b O = %b", A, B, O);
	
	 A = 0; B = 0;
	#10 A = 0; B = 1;
	#10 A = 1; B = 0;
	#10 A = 1; B = 1;
	
	end

endmodule
