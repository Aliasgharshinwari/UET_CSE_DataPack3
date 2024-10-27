`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:32 04/22/2024 
// Design Name: 
// Module Name:    Counter18bit 
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
module Counter18bit(
    input CLK,
	 input RST,
	 output reg[17:0] count
	);
	
	 always @(negedge CLK) begin
		if(count == 18'b111111111111111111)
			count <= 18'd0;
		else
		
		count <= count + 1;    
	 end

endmodule
