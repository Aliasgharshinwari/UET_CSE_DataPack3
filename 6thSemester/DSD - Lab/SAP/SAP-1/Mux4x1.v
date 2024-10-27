`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:07:13 04/28/2024 
// Design Name: 
// Module Name:    Mux4x1 
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
module Mux4x1(
 input [1:0]S,
	input [7:0]seg1,
	input [7:0]seg2,
	input [7:0]seg3,
	output reg [7:0]Out
    );
	 
	always@(*)
		case(S)
			2'b00: Out = seg1;
			2'b01: Out = seg2;
			2'b10: Out = seg3;
			default: Out = seg1;
		endcase

endmodule
