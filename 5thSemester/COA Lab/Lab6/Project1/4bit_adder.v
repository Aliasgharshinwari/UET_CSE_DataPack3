module four_bit_adder(in1, in2, Cin, S, Cout);

	//input A0,A1,A2,A3, B0, B1, B2, B3,Cin;
	input [3:0] in1, in2;
	input Cin;
	output [3:0] S;
	output Cout;
	wire carry1, carry2, carry3;
	
	full_adder f1(in1[0], in2[0], Cin, S[0], carry1);
	full_adder f2(in1[1], in2[1], carry1, S[1], carry2);
	full_adder f3(in1[2], in2[2], carry2, S[2], carry3);
	full_adder f4(in1[3], in2[3], carry3, S[3], Cout);

	
endmodule
