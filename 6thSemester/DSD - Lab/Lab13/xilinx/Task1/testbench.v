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
module testbench_fulladder();
	
	reg [1:0]a = 0, b = 0, c = 0;
	wire [3:0]S;
	reg clk = 0;
	
	always #5 clk = ~clk;
	//full_adder dut(S, C, a, b, cin);
	
	CSA csa(S, a, b, c);
	initial begin
	#10 a = 2'b00; b = 2'b00; c = 2'b00;
	#10 a = 2'b11; b = 2'b11; c = 2'b11;
	end
	
endmodule

