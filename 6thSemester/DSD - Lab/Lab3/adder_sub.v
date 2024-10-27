module adder_sub(S, A, B, M);
	input [3:0]A, B;
	input M;
	output [3:0]S;
	
	assign S = M ? A + B: A - B;
	
endmodule


