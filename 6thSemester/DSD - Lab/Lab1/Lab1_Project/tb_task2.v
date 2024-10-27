module tb_task2();
	reg A;
	wire O;
	task2_nand my_task2(O, A);
	
	initial begin
	$monitor("A = %b O = %b", A, O);
	
	 A = 0;
	#10 A = 1;
	end

endmodule

