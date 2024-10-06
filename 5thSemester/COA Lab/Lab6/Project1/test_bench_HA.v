module tb_HA();
	wire C, S;
	reg A, B;
	half_adder my_half_adder(A, B, S , C);

initial	begin
	A = 0;
	B = 0;
	#10;
	
	A = 0;
	B = 1;
	#10;

	A = 1;
	B = 0;
	#10;

	A = 1;
	B = 1;
	#10;
	end
endmodule