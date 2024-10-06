module alu(Su, Eu, A, B, Out);
	
	input [7:0]A;
	input [7:0]B;
	input Su;
	input Eu;
	output [7:0]Out;
	
	assign Out = (Su) ? A - B : A + B;
	
endmodule
