module three_BCD(
	input CLK,
	input CLR,
	output [3:0] BCDU,
	output [3:0] BCDT,
	output [3:0] BCDH
 );
			bcd_counter bcdU(CLK,CLR,BCDU);
			bcd_counter bcdT(BCDU[3],CLR,BCDT);
			bcd_counter bcdH(BCDT[3],CLR,BCDH);
			
endmodule
