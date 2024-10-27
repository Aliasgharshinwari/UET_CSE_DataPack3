module PIPO_A (CLK, DIN, Q, LD, CLR);

	input CLK, LD, CLR;
	input [3:0] DIN;
	output [3:0] Q;
	
	reg [3:0] Q;
	
	always @(posedge CLK)
		if (CLR)
			Q = 4'h0;
		else
			if (LD)
				Q = DIN;

endmodule
