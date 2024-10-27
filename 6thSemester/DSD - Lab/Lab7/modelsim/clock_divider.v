module clock_divider( clk_in, clk_out);
   
	input clk_in;         
    output clk_out;
	reg [27:0] counter = 28'd0;
	parameter divisor = 28'd100000000; 
	
    always @(posedge clk_in) begin
		counter <= counter + 28'd1;
        
		if (counter >= (divisor - 1))  
            counter <= 28'd0;
    end
	
	assign clk_out = (counter < 50000000) ? 1'b1: 1'b0; 
											
        
endmodule

