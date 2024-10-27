module bcd_to_seven_seg(
	input [3:0] inp,
	output reg [6:0] Out
);
	always @(*)

		case(inp)          // gfedcba
			4'b0000: Out = 7'b1000000;
			4'b0001: Out = 7'b1111001;
			4'b0010: Out = 7'b0100100;
			4'b0011: Out = 7'b0110000;
			4'b0100: Out = 7'b0011001;
			4'b0101: Out = 7'b0010010;
			4'b0110: Out = 7'b0000010;
			4'b0111: Out = 7'b1111000;
			4'b1000: Out = 7'b0000000;
			4'b1001: Out = 7'b0010000;
			default: Out = 7'b1111111;
		endcase	
endmodule
