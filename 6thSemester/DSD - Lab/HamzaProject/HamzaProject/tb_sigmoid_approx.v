`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:10 06/25/2024 
// Design Name: 
// Module Name:    tb_sigmoid_approx 
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
module tb_sigmoid_approx();
	reg [7:0]x;
	wire [7:0]y;
	sigmoid_approx dut(x, y);
	initial begin
	
	x = 8'b00010000;
	#10
	
	x = 8'b10010000;
	#10
	
	x = 8'b01010000;	
	end

endmodule
