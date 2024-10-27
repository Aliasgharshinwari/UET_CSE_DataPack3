module task4(z, x1, x2, x3, x4, x5);

	input x1, x2, x2, x3, x4, x5;
	output z;
	wire y1, y2, zp;
	
	and a1(y1, x1, x2);
	and a2(y2, x3, x4, x5);
	
	or o1(zp, y1, y2);
	not n1(z, zp);
	
endmodule


