`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:08:22 04/28/2024 
// Design Name: 
// Module Name:    Decoder2x4 
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
module Decoder2x4(
	input [1:0]S,
	output reg[2:0] Out
    );
	always@(*)
		case(S)
			2'b00: Out = 3'b110;
			2'b01: Out = 3'b101;
			2'b10: Out = 3'b011;
			2'b11: Out = 3'b110;
			
		endcase
endmodule