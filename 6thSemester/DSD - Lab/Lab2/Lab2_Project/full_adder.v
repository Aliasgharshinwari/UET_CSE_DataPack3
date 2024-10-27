module full_adder(A, B, Cin, S, C);
	input A, B, Cin;
	output S, C;
	wire s1, c1,c2;
	
	half_adder h1(A, B, s1, c1);
	half_adder h2(Cin, s1, S, c2);
	or o1(C, c2, c1);
	
endmodule

