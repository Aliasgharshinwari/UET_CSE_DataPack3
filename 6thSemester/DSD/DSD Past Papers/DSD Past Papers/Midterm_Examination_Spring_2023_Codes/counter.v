module counter (clock, reset, out);

	input clock, reset; output [2:0] out;
	// Write your code here
	wire [2:0] Qn;
	
	
	DFF dff0 (out[2], clock, reset, out[0], Qn[0]);
	DFF dff1 (~(out[0]|out[2]), clock, reset, out[1], Qn[1]);
	DFF dff2 (out[1]& Qn[2], clock, reset, out[2], Qn[2]);

endmodule
