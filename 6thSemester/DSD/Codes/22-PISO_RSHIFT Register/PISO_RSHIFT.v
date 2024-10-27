module PISO_RSHIFT (CLK, CLR, SHL, DIN, Q);

	input CLK, CLR, SHL;
	input [7:0] DIN;
	output Q;
	reg Q;
	reg [7:0] SHIFTER;

	always @ (posedge CLK)
		if (CLR)
			SHIFTER = 8'b0;
		else			
			if (~SHL)
				SHIFTER = DIN;
			else
				begin
					Q = SHIFTER[0];    
					SHIFTER = {1'b0, SHIFTER[7:1]};
				end
			
endmodule