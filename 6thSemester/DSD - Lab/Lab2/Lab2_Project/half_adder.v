module half_adder(A, B, S, C);
	input A, B;
	output S, C;
	sum s1(A, B, S);
	carry c1(A, B, C);
	
endmodule
