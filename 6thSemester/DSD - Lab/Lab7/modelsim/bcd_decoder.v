module bcd_decoder(in,O);

	input [2:0] in;
	output reg [10:0] O;
	
	always @(in)

		case(in)      
			3'b000: O = 11'b10000000011;
			3'b001: O = 11'b11110010011;
			3'b010: O = 11'b01001000011;
			3'b011: O = 11'b01100000011;
			3'b100: O = 11'b00110010011;
			3'b101: O = 11'b00100100011;
			3'b110: O = 11'b00000100011;
			3'b111: O = 11'b11110000011;
			default: O = 11'b11111111111;
		endcase	
endmodule
