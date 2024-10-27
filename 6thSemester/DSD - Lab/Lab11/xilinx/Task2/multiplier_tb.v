`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:29:17 05/26/2024 
// Design Name: 
// Module Name:    multiplier_tb 
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
module multiplier_tb();

reg [3:0] M;
reg [3:0] Q;
reg RST = 1;
reg CLK = 0;
wire [7:0] P;

multiplier uut (.M(M), .Q(Q), .CLK(CLK), .P(P), .RST(RST));

always # 5 CLK = ~CLK;
	
initial begin
  M = 15;  Q = 15;
  #10
  RST = 1;
  #5
  RST = 1;
  //#10
  
  //RST = 0;  
  //M = 10; Q = 15;
end


endmodule
