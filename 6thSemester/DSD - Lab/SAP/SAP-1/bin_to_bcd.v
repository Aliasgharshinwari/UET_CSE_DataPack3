`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:53 04/28/2024 
// Design Name: 
// Module Name:    bin_to_bcd 
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
module bin2bcd
  ( input      [7:0] bin   ,  // binary
    output reg [9:0] bcd ); // bcd {...,thousands,hundreds,tens,ones}

  integer i,j;

  always @(bin) begin
    for(i = 0; i <= 9; i = i+1) bcd[i] = 0;     // initialize with zeros
    bcd[7:0] = bin;                                   // initialize with input vector
    for(i = 0; i <= 4; i = i+1)                       // iterate on structure depth
      for(j = 0; j <= i/3; j = j+1)                     // iterate on structure width
        if (bcd[8-i+4*j -: 4] > 4)                      // if > 4
          bcd[8-i+4*j -: 4] = bcd[8-i+4*j -: 4] + 4'd3; // add 3
  end

endmodule
