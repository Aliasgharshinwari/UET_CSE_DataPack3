module demux(s0,s1,I, d0,d1,d2,d3);
	input s0,s1,I;
	output d0,d1,d2,d3;
	
	assign d0 = ~s0&& ~s1 && I;
	assign d1 = ~s0&& s1 && I;
	assign d2 = s0 && ~s1 && I;
	assign d3 = s0 && s1 && I;

endmodule
