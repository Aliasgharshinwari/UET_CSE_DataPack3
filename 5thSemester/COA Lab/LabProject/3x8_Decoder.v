module Decoder_3x8(A, B, C, E, I);
	input A;
	input B;
	input C;
	input E;
	output [7:0]I;

	wire nA;
	wire nB;
	wire nC;
	
	not n1(nA, A);
	not n2(nB, B);
	not n3(nC, C);
	
	and a1(I[0], nA, nB, nC, E);
	and a2(I[1], nA, nB, C, E);
	and a3(I[2], nA, B, nC, E);
	and a4(I[3], nA, B, C, E);
	and a5(I[4], A, nB, nC, E);
	and a6(I[5], A, nB, C, E);
	and a7(I[6], A, B, nC, E);
	and a8(I[7], A, B, C, E);
	
endmodule

