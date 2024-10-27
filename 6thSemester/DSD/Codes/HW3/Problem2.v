module Problem2( 
	input [7:0]A,
	input [7:0]B,
	input cin,
	output cout,
	output [7:0]S );

	wire c1, c2, c3, c4, c5, c6, c7;
	adder a1( .a(A[0]), .b(B[0]), .cin(cin), .cout(c1), .sum(S[0]));
	adder a2( .a(A[1]), .b(B[1]), .cin(c1), .cout(c2), .sum(S[0]));
	adder a3( .a(A[2]), .b(B[2]), .cin(c2), .cout(c3), .sum(S[0]));
	adder a4( .a(A[3]), .b(B[3]), .cin(c3), .cout(c4), .sum(S[0]));
	adder a5( .a(A[4]), .b(B[4]), .cin(c4), .cout(c5), .sum(S[0]));
	adder a6( .a(A[5]), .b(B[5]), .cin(c5), .cout(c6), .sum(S[0]));
	adder a7( .a(A[6]), .b(B[6]), .cin(c6), .cout(c7), .sum(S[0]));
	adder a8( .a(A[7]), .b(B[7]), .cin(c7), .cout(cout), .sum(S[0]));
	
endmodule



