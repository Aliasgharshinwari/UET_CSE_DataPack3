`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:15 05/24/2024 
// Design Name: 
// Module Name:    testbench 
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
module testbench();
	
	reg CLK = 0;
	reg RST = 1;
	wire [2:0]FR;
	wire [2:0]HR;
	wire [3:0]count;

	traffic_controller dut(CLK, RST, FR, HR, count);
	
	always # 5 CLK = ~CLK;
	initial begin
	#30 RST = 0;
	end
	
endmodule

