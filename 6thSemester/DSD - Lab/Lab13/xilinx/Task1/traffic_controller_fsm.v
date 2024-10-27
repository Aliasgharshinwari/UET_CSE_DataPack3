`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:24 05/24/2024 
// Design Name: 
// Module Name:    traffic_controller 
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
module traffic_controller(clk, rst, out);
	input clk, rst;
	output reg [2:0]out;
	
	
	reg [2:0]PS, NS;
	parameter S0 = 3'b001, S1 = 3'b010, S2 = 3'b100;
	
	
	always@(posedge clk)
		if(rst)
			PS = S0;
		else
			PS = NS;

	always@(PS)
		case(PS)
			S0: begin 
				NS = S1;
				out = S0;
			end
			
			S1: begin 
				NS = S2;
				out = S1;
			end
			
			S2: begin 
				NS = S0;
				out = S2;
			end
			
			default: begin
				NS = S0;
			end
			
		endcase

endmodule
