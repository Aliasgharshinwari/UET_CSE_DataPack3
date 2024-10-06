module task3(rst, Clk, out, QBar);

	input rst;
	input Clk;	
	
	output [3:0]out;
	output [3:0]QBar;
	
	
	U_T_FF f1(rst, Clk, out[0], QBar[0]);
	U_T_FF f2(rst, out[0] , out[1], QBar[1]);
	U_T_FF f3(rst, out[1], out[2], QBar[2]);
	U_T_FF f4(rst, out[2], out[3], QBar[3]);
	
	//U_T_FF f4(rst, n[2], n[3]);
	//U_T_FF f3(rst, n[1], n[2]);
	//U_T_FF f2(rst, n[0] , n[1]);
	//U_T_FF f1(rst, Clk, n[0]);
	
	//assign out = n;
	
endmodule
