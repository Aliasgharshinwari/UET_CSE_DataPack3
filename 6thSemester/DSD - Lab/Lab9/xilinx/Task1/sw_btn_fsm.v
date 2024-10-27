`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:18 05/06/2024 
// Design Name: 
// Module Name:    sw_btn_fsm 
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
module sw_btn_fsm(
	input btn,
	input clk,
	input RST,
	output reg led
 );
	reg state;
	parameter s0 = 1'b0, s1 = 1'b1;
	
	always@(posedge clk) begin
		if(RST) 
			state <= s0;
		else 
			case(state) 
				s0:state <= (btn) ? s1 : s0;
				s1:state <= (btn) ? s0 : s1;	
			endcase	
	end
	
	always@(*) 
		case(state) 
			s0:led = 0;
			s1:led = 1;
		endcase	
endmodule
