module tb_ha();
	reg X, Y;
	wire Z;
	
	ha ha1(X,Y,Z); //Instantiation
	
	initial begin
	$monitor("X = %b Y = %b Z = %b", X, Y, Z);
		
	X = 0; Y = 0;
	# 10 X = 0; Y = 1;
	# 10 X = 1; Y = 0;
	# 10 X = 1; Y = 1;
	
	end
	
endmodule

