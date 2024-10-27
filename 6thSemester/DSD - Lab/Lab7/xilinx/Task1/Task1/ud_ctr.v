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
module ud_ctr( Clk, CLR, RST,  COUNT);
    	
   	input Clk, CLR, RST;
   	output reg [2:0] COUNT;
		
		wire clk_out;
		
		clock_divider c1(Clk, clk_out);
		
     	always @(posedge clk_out or posedge CLR)
     		if(CLR)   //Active high CLR
        			COUNT <= 0;
        		else    
            			if(RST)   //Up mode selected
                				COUNT <= COUNT + 3'b001; //Increment Counter
            			else  //Down mode selected
                				COUNT <= COUNT - 3'b001; //Decrement Counter
                				 
endmodule
