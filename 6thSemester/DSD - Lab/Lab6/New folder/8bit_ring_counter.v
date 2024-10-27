module eight_bit_ring_counter (
    input clk,         
    input reset,         
    output reg [7:0]out 
);
	wire clk_out;
	
	clock_divider clk_div(.clk_in(clk), .clk_out(clk_out));
	
    always @(posedge clk_out) begin
		if(reset) begin
			out = 8'b00000001;
		end
		else begin
			out = {out[6:0], out[7]};								
		end
	end
endmodule



