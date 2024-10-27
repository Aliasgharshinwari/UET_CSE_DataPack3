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
module traffic_controller(clk, v, FR, HR, count);
	input clk, v;
	output reg [2:0]FR;
	output reg [2:0]HR;
	output [3:0]count;
	
	reg [3:0]count;
	
	reg [2:0]PS, NS;
	parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011 , S4 = 3'b100, S5 = 3'b101;
	parameter GREEN = 3'b001, YELLOW = 3'b010, RED = 3'b100;

	
	always@(posedge clk) begin
		if(v)
			PS <= S0;
		else
			PS <= NS;
		
		count <= (PS == S0)? 4'b0000 : count + 1;
		
	end
	
	always@(*)
		case(PS)
			S0: begin 
				NS = S1;
				HR = GREEN;
				FR = RED;
			end
			
			S1: begin 
				NS = (count < 2 ) ? S1 : S2;
				HR = RED;
				FR = YELLOW;
			end
			
			S2: begin 
				NS = (count < 9 ) ?  S2 : S3;
				HR = RED;
				FR = GREEN;
			end
			
			
			S3: begin 
				NS = (count < 12 ) ? S3 : S0;;
				HR = YELLOW;
				FR = RED;
			end
			
			default: begin
				NS = S0;
			end
			
		endcase
endmodule
