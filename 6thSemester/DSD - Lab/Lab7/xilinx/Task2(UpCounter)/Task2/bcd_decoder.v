`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:51:54 04/14/2024 
// Design Name: 
// Module Name:    bcd_decoder 
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
module bcd_decoder(
   input [3:0] bcd,
	output reg [10:0] O
	);

	always @(*)

		case(bcd)        // gfedcba
			4'b0000: O = 11'b10000000011;
			4'b0001: O = 11'b11110010011;
			4'b0010: O = 11'b01001000011;
			4'b0011: O = 11'b01100000011;
			4'b0100: O = 11'b00110010011;
			4'b0101: O = 11'b00100100011;
			4'b0110: O = 11'b00000100011;
			4'b0111: O = 11'b11110000011;
			//4'b1000: O = 7'b00000000011;
			//4'b1001: O = 7'b00100000011;
			default: O = 11'b11111111111;
		endcase	
endmodule
