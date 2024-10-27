module m81 (OUT, I0, I1, I2, I3, I4, I5, I6, I7, Sel);

	input I0, I1, I2, I3, I4, I5, I6, I7;
	input [2:0] Sel;
	output OUT;
	
	reg OUT;
	
	always @(*)
		case (Sel)
			0: OUT=I0;
			1: OUT=I1;
			2: OUT=I2;
			3: OUT=I3;
			4: OUT=I4;
			5: OUT=I5;
			6: OUT=I6;
			7: OUT=I7;
		endcase

endmodule