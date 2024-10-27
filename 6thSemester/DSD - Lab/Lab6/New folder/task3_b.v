module task3_b(
    input clk,         
    input reset,         
    output reg [6:0]Out 
);
	wire [7:0]ctr_out;
	eight_bit_ring_counter counter4(clk, reset, ctr_out);
	
	always @(*)
		case(ctr_out)        // gfedcba
			8'b00000001: Out = 7'b1111001;
			8'b00000010: Out = 7'b0100100;
			8'b00000100: Out = 7'b0110000;
			8'b00001000: Out = 7'b0011001;
			8'b00010000: Out = 7'b0010010;
			8'b00100000: Out = 7'b0000010;
			8'b01000000: Out = 7'b1111000;
			8'b10000000: Out = 7'b0000000;
			default: Out = 7'b1111111;
		endcase	
endmodule

