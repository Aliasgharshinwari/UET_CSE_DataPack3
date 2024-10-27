`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:28:19 03/11/2024 
// Design Name: 
// Module Name:    task2 
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
module task2 (O, a, b);
	input [3:0] a, b;
	output reg [6:0] O;
	wire [3:0] s;
	
	assign s = a + b;
	always @(*)

		case(s)         // gfedcba
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
			// 4'h0: O = 7'h40;
			// 4'h1: O = 7'h79;
			// 4'h2: O = 7'h24;
			// 4'h3: O = 7'h30;
			// 4'h4: O = 7'h19;
			// 4'h5: O = 7'h12;
			// 4'h6: O = 7'h02;
			// 4'h7: O = 7'h78;
			// 4'h8: O = 7'h00;
			// 4'h9: O = 7'h10;
		endcase	
endmodule
