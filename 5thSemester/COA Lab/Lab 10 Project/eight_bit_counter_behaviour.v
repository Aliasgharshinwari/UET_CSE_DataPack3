module eight_bit_counter_behaviour(rst, Clk, out);

	input rst;
	input Clk;	
	
	output reg [7:0]out;
	
	
	always@(negedge Clk)

	if (rst)
		out <= 1'b0;
		
	else	
		out <= out + 1;
	
	
endmodule



