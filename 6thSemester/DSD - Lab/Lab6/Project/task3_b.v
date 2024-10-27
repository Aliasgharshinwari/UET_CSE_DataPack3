module top2(
    input clk,         
    input rst,         
    output reg [6:0]O 
);
	wire [7:0]counter_outt;
	rc8 counter8(clk, rst, counter_out);
	
	always @(*)
		case(counter_out)      
			8'b00000001: O = 7'b1111001;
			8'b00000010: O = 7'b0100100;
			8'b00000100: O = 7'b0110000;
			8'b00001000: O = 7'b0011001;
			8'b00010000: O = 7'b0010010;
			8'b00100000: O = 7'b0000010;
			8'b01000000: O = 7'b1111000;
			8'b10000000: O = 7'b0000000;
			default: O = 7'b1111111;
		endcase	
endmodule

