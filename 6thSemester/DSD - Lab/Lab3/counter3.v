module counter3(clock, reset, out);
	input clock, reset; 
	output [2:0] out; 
	
	wire [2:0] Qn;

	DFF dff0(.D(out[2]), .clock(clock), .reset(reset), .Q(out[0]), .Qn(Qn[0]));
	DFF dff1(.D(~(out[0] | out[2])), .clock(clock), .reset(reset), .Q(out[1]), .Qn(Qn[1]));
	DFF dff2(.D(out[1] & Qn[2]), .clock(clock), .reset(reset), .Q(out[2]), .Qn(Qn[2]));
endmodule
