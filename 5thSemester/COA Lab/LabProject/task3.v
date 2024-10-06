module task3(A, B, C, I);

	input A;
	input B;
	input C;
	output [7:0]I;

	wire nA;
	
	not n1(nA, A);

	Decoder_2x4 d1(B, C, nA, {I[3], I[2], I[1], I[0]});
	Decoder_2x4 d2(B, C, A, {I[7], I[6], I[5], I[4]});

endmodule

