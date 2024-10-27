`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:26:13 03/11/2024 
// Design Name: 
// Module Name:    task 
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
// BCD to 7-Seg Decoder
//////////////////////////////////////////////////////////////////////////////////
module task1(I, En, EnOut, O);
	
	input [3:0] I;
	input En;
	output EnOut;
	output reg [6:0]O;
	
	always @(*)
		case(I)         // gfedcba
			4'b0000: O = 7'b1000000;
			4'b0001: O = 7'b1111001;
			4'b0010: O = 7'b0100100;
			4'b0011: O = 7'b0110000;
			4'b0100: O = 7'b0011001;
			4'b0101: O = 7'b0010010;
			4'b0110: O = 7'b0000010;
			4'b0111: O = 7'b1111000;
			4'b1000: O = 7'b0000000;
			4'b1001: O = 7'b0010000;
			default: O = 7'b0000000;
		endcase
	assign  EnOut = En;
endmodule
