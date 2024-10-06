module task3(A, B, Sel, Out);
	input [3:0] A;
	input [3:0] B;
	input [1:0] Sel;
	
	output [3:0] Out;
	reg  [3:0] Out;
	
	always@(A, B, Sel)
		case(Sel)
			2'b00 : Out = A;
			2'b01 : Out = B;
			2'b10 : Out = A + B;
			2'b11 : Out = A - B;
		endcase
endmodule


