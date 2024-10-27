module mag_comp4(
	input [3:0]A,
	input [3:0]B,
	output ALB, 
	output AGB, 
	output AEB
);

	assign ALB = A < B;
	assign AGB = A > B;
	assign AEB = A == B;
	
endmodule
