`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:53:05 06/03/2024 
// Design Name: 
// Module Name:    bus_driver 
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
module bus_driver(in, out, enable);
	input enable;
	input [0:7]in;
	output reg [0:7]out;
	
	always@(*)
		if(enable)
			out = in;
		else
			out = 8'bz;
endmodule
