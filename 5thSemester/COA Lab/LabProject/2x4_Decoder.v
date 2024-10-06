module Decoder_2x4(A, B, E, I);

	input A;
	input B;
	input E;
	output [3:0]I;

	wire nA;
	wire nB;
	
	not n1(nA, A);
	not n2(nB, B);
	
	and a1(I[0], nA, nB, E);
	and a2(I[1], nA, B, E);
	and a3(I[2], A, nB, E);
	and a4(I[3], A, B, E);
endmodule
