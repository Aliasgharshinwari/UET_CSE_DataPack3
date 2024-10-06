module mux4x1(I, Sel, Out);
	input [3:0] I;
	input [1:0] Sel;
	
	output Out;
	reg Out;
	
	always@(I, Sel)
		
		case(Sel)
			2'b00 : Out = I[0];
			2'b01 : Out = I[1];
			2'b10 : Out = I[2];
			2'b11 : Out = I[3];
		endcase
		
endmodule
