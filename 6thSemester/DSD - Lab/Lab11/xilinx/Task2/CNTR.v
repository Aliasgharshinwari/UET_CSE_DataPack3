`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:01 05/24/2024 
// Design Name: 
// Module Name:    CNTR 
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
module DECREMENTER (dout, din, ld, dec, clk);
  input [7:0] din;
  input ld, dec, clk;
  output reg [7:0] dout;

  always @(posedge clk) begin
    if (ld)
      dout <= din;
    else if (dec)
      dout <= dout - 1;
  end
endmodule