module d_FF(
	input D,
	input clk,
	output reg q = 0,
	output reg qbar = 1
);

	always@(posedge clk)
	begin
		q = D;
		qbar = ~q;
	end
		
endmodule

