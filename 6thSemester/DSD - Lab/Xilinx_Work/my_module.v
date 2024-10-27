`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:38 02/24/2024 
// Design Name: 
// Module Name:    my_module 
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
module task4(
    input x1,
    input x2,
    input x3,
    input x4,
    input x5,
    output z
    );
	
	//wire y1, y2, zp;
	 
	and a1(z, x1, x2);
	//and a2(y1, x3, x4, x5);
	//or o1(zp, y1, y2);
	//not n(z, zp);
	
endmodule
