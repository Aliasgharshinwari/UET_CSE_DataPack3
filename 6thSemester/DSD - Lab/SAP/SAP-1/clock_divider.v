`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:57:57 04/15/2024 
// Design Name: 
// Module Name:    clock_divider 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clock_divider(
        input clk_in,          
    output clk_out
);
   reg [27:0] counter = 28'd0;
	parameter divisor = 28'd100000000; //Divides the input clock by 100. 
	
    always @(posedge clk_in) begin
		counter <= counter + 28'd1;
        
		if (counter >= (divisor - 1))  
            counter <= 28'd0;
    end
	
	assign clk_out = (counter < 50000000); // Assign 1 for half cycle and 0 for 
											// the other half
endmodule
