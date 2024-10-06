module tb_FA();

wire C, S;
reg A, B , Cin;
full_adder my_full_adder(A, B, Cin, S , C);

initial	begin
	
	A = 0;
	B = 0;
	Cin = 0;
	#10;

	A = 0;
	B = 0;
	Cin = 1;
	#10;
	
	A = 0;
	B = 1;
	Cin = 0;
	#10;

	A = 0;
	B = 1;
	Cin = 1;
	#10;
	
	A = 1;
	B = 0;
	Cin = 0;
	#10;
	
	A = 1;
	B = 0;
	Cin = 1;
	#10;
	
	A = 1;
	B = 1;
	Cin = 0;
	#10;
	
	A = 1;
	B = 1;
	Cin = 1;
	#10;	
	end

endmodule
