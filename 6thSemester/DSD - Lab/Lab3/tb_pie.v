module tb_pie();

	reg a, b, c;
	wire x, y;
	
	pie p(x, y, a, b, c);
	
	initial begin
	
	# 10 {a, b, c} = 3'b000;
	# 10 {a, b, c} = 3'b100;
	# 10 {a, b, c} = 3'b010;
	end
endmodule

