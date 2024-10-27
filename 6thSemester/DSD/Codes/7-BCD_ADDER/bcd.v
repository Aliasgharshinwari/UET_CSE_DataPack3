module bcd (c, s, a, b);

	output [3:0] s;
	output c;
	input [3:0] a, b;

	wire cy, cz;
	wire [3:0] sum;
	
	add4 a1 (cy, sum, a, b);
	assign c = cy | (sum[3]&sum[2]) | (sum[3]&sum[1]);
	add4 a2 (cz, s, {1'b0, c, c, 1'b0}, sum);
	
endmodule