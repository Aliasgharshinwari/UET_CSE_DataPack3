`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:29 05/24/2024 
// Design Name: 
// Module Name:    PIPO2 
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
module PIPO2 (dout, din, ld, clr, clk);
    input [7:0] din;
    input ld, clr, clk;
    output reg [7:0] dout = 8'd0;
    
    always @ (posedge clk)
			if (clr) 
				dout <= 8'b0;
			else if (ld) 
				dout <= din;
				
endmodule

