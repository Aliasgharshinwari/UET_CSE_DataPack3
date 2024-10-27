module RCA(A, B, Cin, S, C);
	input [3:0] A, B;
	input Cin;
	output [3:0] S;
	output C;
	wire c1, c2, c3;
	
	full_adder f1(A[0], B[0], Cin, S[0], c1);
	full_adder f2(A[1], B[1], c1, S[1], c2);
	full_adder f3(A[2], B[2], c2, S[2], c3);
	full_adder f4(A[3], B[3], c3, S[3], C);
endmodule
