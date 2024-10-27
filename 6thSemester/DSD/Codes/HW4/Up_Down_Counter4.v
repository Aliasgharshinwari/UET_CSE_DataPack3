module Up_Down_Counter4(
	input CLK,
	input RST,
	input LD,
	input UP_DN,
	input [2:0]DIN,
	output reg [2:0]Q
		
);
	always@(posedge CLK or RST)
		
		if(!RST)
			Q = 3'd3;
		else
			if(UP_DN)
				Q = Q - 1;
			else
				Q = Q + 1;

	always@(LD)
		if(LD)
			Q = DIN;
	
endmodule
