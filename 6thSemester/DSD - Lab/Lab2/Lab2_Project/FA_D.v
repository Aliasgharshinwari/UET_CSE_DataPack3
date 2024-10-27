module FA_D(A, B, Cin, S, C);
	input A, B;
	input Cin;
	output S;
	output C;

	assign S = A^B^Cin;
	assign C = (A & B) | (B & Cin) | (A & Cin);
	
endmodule

