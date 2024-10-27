module gray_ctr2(C, R, OUT);
	input C; 
	input R;
	output reg [2:0]OUT;
	
	always @(posedge C)

	if(R)
		OUT = 3'b00;
	else
		case(OUT) 			
			3'b000 : OUT = 3'b001;
			3'b001 : OUT = 3'b011;
			3'b011 : OUT = 3'b010;
			3'b010 : OUT = 3'b110;
			3'b110 : OUT = 3'b111;
			3'b111 : OUT = 3'b101;
			3'b101 : OUT = 3'b100;
			3'b100 : OUT = 3'b000;
			
			default : OUT = 3'b000;
		endcase
	
endmodule
