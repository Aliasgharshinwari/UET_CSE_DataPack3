`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:42:03 04/14/2024 
// Design Name: 
// Module Name:    ud_ctr 
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
module up_ctr( Clk, Rst, COUNT);
    	
   	input Clk, Rst;
   	output reg [2:0] COUNT;
		
		wire clk_out;
		
		clock_divider c1(Clk, clk_out);
		
     	always @(posedge clk_out or posedge Rst)
     		if(Rst)   //Active high R
        			COUNT <= 0;
        	else    
            	COUNT <= COUNT - 3'b001; //Increment Counter
            					 
endmodule
