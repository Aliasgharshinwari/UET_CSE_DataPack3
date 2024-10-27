module clock_divider (
    input clk_in,          
    output clk_out
	//output reg [27:0] counter = 28'd0
);
    reg [6:0] counter = 7'd0;
	parameter divisor = 7'd100; //Divides the input clock by 100. 
	
    always @(posedge clk_in) begin
		counter <= counter + 7'd1;
        
		if (counter >= (divisor - 1))  
            counter <= 7'd0;
    end
	
	assign clk_out = (counter < 50); // Assign 1 for half cycle and 0 for 
											// the other half
        
endmodule

