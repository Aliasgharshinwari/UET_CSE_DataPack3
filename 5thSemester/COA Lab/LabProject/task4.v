module task4(A, I);

	input [3:0]A;
	
	output [15:0]I;

	wire nA;
	
	not n1(nA, A[3]);

	Decoder_3x8 d1(A[2], A[1], A[0], nA, I[7:0]);
	Decoder_3x8 d2(A[2], A[1], A[0], A[3], I[15:8]);

endmodule


