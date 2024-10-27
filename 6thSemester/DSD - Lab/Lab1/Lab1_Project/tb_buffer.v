module tb_buffer();

	reg I;
	wire O;
	
	buffer b(I, O);
	
	initial begin
	$monitor("I = %b O = %b", I, O);
	I = 0;
	
	#10 I = 1;
	
	end

endmodule
