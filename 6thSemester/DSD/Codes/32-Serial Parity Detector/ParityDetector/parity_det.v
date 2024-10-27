`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:00 05/28/2024 
// Design Name: 
// Module Name:    parity_det 
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
module parity_det (x, clk, z);
	input x, clk;
	output z; reg z;
	
	reg even_odd;
	
	parameter EVEN = 0, ODD = 1;
	
	always @(posedge clk)
		case (even_odd)
			EVEN: begin
				z <= x? 1:0;
				even_odd <= x? ODD:EVEN;
			end
			ODD: begin
				z <= x? 0:1;
				even_odd <= x? EVEN:ODD;
			end
			default: even_odd <= EVEN;
		endcase

endmodule
