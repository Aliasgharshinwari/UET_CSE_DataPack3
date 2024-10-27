module top1(
    input clk,         
    input rst,         
    output reg [6:0]O
);
	wire [3:0]counter_out;
	rc4 dut(clk, rst, counter_out);
	
	always @(*)

		case(counter_out)
			4'b0001: O = 7'b1111001;
			4'b0010: O = 7'b0100100;
			4'b0100: O = 7'b0110000;
			4'b1000: O = 7'b0011001;
			default: O = 7'b1111111;
		endcase	
		
	
endmodule
