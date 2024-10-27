module four_bit_ring_counter (
    input clk,         
    input reset,         
    output reg [3:0]out 
);
	wire clk_out;
	clock_divider clk_div(.clk_in(clk), .clk_out(clk_out));
	
    always @(posedge clk_out) begin
		if(reset) begin
			out = 4'b0001;
		end
		else begin
			out = {out[2:0], out[3]};								
		end
	end
	
endmodule


