module task3(
    input clk,         
    input reset,         
    output reg [6:0]Out 
);
	wire [3:0]ctr_out;
	four_bit_ring_counter counter4(clk, reset, ctr_out);
	
	always @(*)

		case(ctr_out)      // gfedcba
			4'b0001: Out = 7'b1111001;
			4'b0010: Out = 7'b0100100;
			4'b0100: Out = 7'b0110000;
			4'b1000: Out = 7'b0011001;
			default: Out = 7'b1111001;
		endcase	
		
	
endmodule
