module gray_ctr2(S, I0, I1, I2, I3, I4, I5, I6, I7, O);
	input [2:0]S; 
	input [7:0]I0, I1, I2, I3, I4, I5, I6, I7;
	
	output reg [7:0]O;
	
	always @(*)

		case(S) 			
			3'b000 : O = I0;
			3'b001 : O = I1;
			3'b010 : O = I2;
			3'b011 : O = I3;
			3'b100 : O = I4;
			3'b101 : O = I5;
			3'b110 : O = I6;
			3'b111 : O = I7;
		endcase
	
endmodule

