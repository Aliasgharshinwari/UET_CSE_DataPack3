`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:20 06/25/2024 
// Design Name: 
// Module Name:    sigmoid_approx 
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

module sigmoid_approx(
    input [7:0] x, // 8-bit input with 4 bits integer and 4 bits fractional
    output reg [7:0] y // 8-bit output with 4 bits integer and 4 bits fractional
);
    always @(*) begin
        if (x[7] == 1'b1) begin // Check if x is negative
            if (x[6:4] >= 3'b110) // x <= -2
                y = 8'b0000_0000; // y = 0
            else
                y = 8'b0000_0010; // y = 0.25x + 0.5
        end else begin // x is positive
            if (x[6:4] <= 3'b001) // x <= 2
                y = (x >> 2) + 8'b0000_1000; // y = 0.25x + 0.5
            else
                y = 8'b0001_0000; // y = 1
        end
    end

endmodule
