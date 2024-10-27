`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:57:02 04/14/2024 
// Design Name: 
// Module Name:    top 
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
module top(
	input clk,
	input Rst,
	output [10:0] seg
	);
	
	wire [2:0] COUNT;
	
	up_ctr ctr( clk, Rst,  COUNT);
	bcd_decoder my_decoder({1'b0,COUNT} , seg);

endmodule
