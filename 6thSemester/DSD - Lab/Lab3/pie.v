module pie(x, y, a, b, c);

	input a, b, c;
	output x, y;
	
	wire t1, t2;
	
	xor x1(t1, a, b);
	not n1(x, t1);
	and a1(t2, x, c);
	or o1(y, t2, b);
	
endmodule
