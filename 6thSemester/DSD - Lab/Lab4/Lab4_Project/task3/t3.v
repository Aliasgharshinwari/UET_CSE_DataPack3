`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:28:44 03/04/2024 
// Design Name: 
// Module Name:    t3 
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
module t3( S, I, O);

	input [1:0]S;
	input [3:0]I;
	output reg O;
	
		always @(S or I) 
		
			case(S)
				2'b00: O = I[0];
				2'b01: O = I[1];
				2'b10: O = I[2];
				2'b11: O = I[3];
			endcase
		
endmodule
