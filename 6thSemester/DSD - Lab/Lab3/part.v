module part(a ,b , c, x, y);
	input a ,b , c;
	output x, y;
	wire b_bar;
	
	not (b_bar, b);
	and(x ,a, b_bar);
	or(y,x,c);
endmodule
