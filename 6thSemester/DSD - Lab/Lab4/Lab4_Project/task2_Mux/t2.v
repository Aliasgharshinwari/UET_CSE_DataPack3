`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:10:43 03/04/2024 
// Design Name: 
// Module Name:    t2 
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
module t2( S, I, O);

	input S;
	input [1:0]I;
	output O;
	
	assign O = S ? I[0] : I[1];
	
endmodule
