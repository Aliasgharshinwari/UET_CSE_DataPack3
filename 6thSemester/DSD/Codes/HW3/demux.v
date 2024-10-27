module demux_1_2 (x, s, y, z);
	input x, s;
	output y, z;
	
	wire x; 
	reg y;
	reg z;
	
	always @(x or s)
		begin
			if(!s)
				y = x;
			else
				z = x;
		end

endmodule
