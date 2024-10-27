`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:01:14 04/04/2024 
// Design Name: 
// Module Name:    two_clk 
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
module two_clk(
	input clk1,
	input clk2,
	input a,
	input b,
	output reg f1,
	output reg f2
    );

	always@(posedge clk1)
		f1 <= a&b;
		
	always@(posedge clk2)
		f2 <= a^b;
endmodule
