module tb_task4();
	reg x1, x2, x3, x4, x5;
	wire z;
	task4 my_task4(z, x1, x2, x3, x4, x5);
	
	initial begin
	$monitor("x1 = %b, x2 = %b, x3 = %b, x4 = %b, x5 = %b, z = %b", x1, x2, x3, x4, x5, z);
	
	#10 {x1, x2, x3, x4, x5} = 5'b00000;
	#10 {x1, x2, x3, x4, x5} = 5'b10100;
	#10 {x1, x2, x3, x4, x5} = 5'b11010;
	#10 {x1, x2, x3, x4, x5} = 5'b00111;
	 
	end

endmodule


