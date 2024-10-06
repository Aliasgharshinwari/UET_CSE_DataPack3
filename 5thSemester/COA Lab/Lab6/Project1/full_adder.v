module full_adder(A,B,Cin,S,Cout);

	input A,B,Cin;
	output S,Cout;
	wire sum1, carry1, carry2;
	
	half_adder ha1(A, B, sum1, carry1);
	half_adder ha2(Cin, sum1, S, carry2);
	or o(Cout, carry1,carry2);
	
endmodule
