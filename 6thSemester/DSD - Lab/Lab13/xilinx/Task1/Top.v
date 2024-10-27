module top(A, B, C, OUT_SEG);
	input [1:0]A, B, C;
	output [7:0]OUT_SEG;
	
	wire[3:0] S;
	
	CSA csa(S, A, B, C);
	BCD_to_SevenSeg decoder(S,OUT_SEG);
endmodule

