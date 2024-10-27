`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:42 05/24/2024 
// Design Name: 
// Module Name:    ADD 
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
module ADD (out, in1, in2);                                                            
	input [7:0] in1, in2;
    output reg [7:0] out;
	
	always @ (*)
    begin
		out = in1 * in2;
    end
endmodule                 

