module whole(a, b, c , x, y);
	input [2:0] a, b;
	input c;
	output [2:0]x;
	output y;
	
	wire y1, y2;
	
	part p1(a[0] ,b[0] , c, x[0], y1);
	part p2(a[1] ,b[1] , y1, x[1], y2);
	part p3(a[2] ,b[2] , y2, x[2], y);
	
endmodule
