`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:55 03/20/2024 
// Design Name: 
// Module Name:    adder 
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
module adder( 
	input a,
	input b,
	input cin,
	output cout,
	output sum
    );

	wire w1, w2, w3, w4;
	
	xor #(10)(w1, a, b);
	xor #(10)(sum, w1, cin);
	
	and #(8)(w2, a, b);
	and #(8)(w3, a, cin);
	and #(8)(w4, b, cin);
	
	or #(10)(cout, w2, w3, w4);
	
endmodule
