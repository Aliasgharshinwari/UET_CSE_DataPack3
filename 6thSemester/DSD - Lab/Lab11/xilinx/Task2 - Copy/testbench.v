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
	reg [7:0]data_in;
	reg start;
	reg [2:0] state = 3'b000;
	
	wire done;
	wire [7:0]out;
	wire P_eqz, A_eqz, LdA, LdB, LdP, clrp;
	
	controller cp(CLK, P_eqz, A_eqz, start, LdA, LdB, LdP, clrp, done, state);
	product_datapath dp(P_eqz, A_eqz, LdA, LdB, LdP, clrp, data_in, CLK);
	
	always # 5 CLK = ~CLK;
	assign out = dp.Z;
	
	initial begin
		$monitor("%d, Data=%d, X=%d, Y=%d, Z=%d , ", $time, data_in, dp.X, dp.Y, dp.Z);
		data_in = 8'd5;
		
		#10
		start = 1;

		#15
		data_in = 8'd10;
		#10
		data_in = 8'd15;
		
	end
endmodule

