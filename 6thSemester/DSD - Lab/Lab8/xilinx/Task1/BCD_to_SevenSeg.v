module BCD_to_SevenSeg(
    input [3:0] bcd,
	output reg [7:0] O
	);
	always @(*)
		case(bcd)        //hgfedcba
			4'b0000: O = 8'b11000000;
			4'b0001: O = 8'b11111001;
			4'b0010: O = 8'b10100100;
			4'b0011: O = 8'b10110000;
			4'b0100: O = 8'b10011001;
			4'b0101: O = 8'b10010010;
			4'b0110: O = 8'b10000010;
			4'b0111: O = 8'b11111000;
			4'b1000: O = 8'b10000000;
			4'b1001: O = 8'b10010000;
			default: O = 8'b11111111;
		endcase	

endmodule
