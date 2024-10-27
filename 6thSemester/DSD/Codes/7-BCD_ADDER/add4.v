module add4 (c, s, a, b);

	output [3:0] s;
	output c;
	input [3:0] a, b;
	
	assign {c, s} = a + b;
	
endmodule