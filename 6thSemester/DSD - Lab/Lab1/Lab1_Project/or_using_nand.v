module or_using_nand(O, A, B);

	input A, B;
	output O;
	wire nA, nB;

	nand n3(O, nA, nB);	
	nand n1(nA, A);
	nand n2(nB, B);

endmodule
