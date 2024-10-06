module task4(T, rst, Clk, out, QBar);

	input rst;
	input Clk;	
	input T;	
	
	output [3:0]out;
	output [3:0]QBar;
	
	
	C_T_FF f1(T, rst, Clk, out[0], QBar[0]);
	C_T_FF f2(T, rst, out[0] , out[1], QBar[1]);
	C_T_FF f3(T, rst, out[1], out[2], QBar[2]);
	C_T_FF f4(T, rst, out[2], out[3], QBar[3]);
	
endmodule
