module pc(CLK, CLR, Cp, out);

	input CLR;
	input CLK;	
	input Cp;
	
	reg [3:0]value = 4'b0;
	output [3:0]out;
	
	always @(negedge CLK) begin
		
		if (CLR) 
			value <= 4'b0000;
		
		else if (Cp)
			value <= value + 4'b0001;

		
	end
		
		assign	out = value;

endmodule
