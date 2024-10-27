module TB_STRUCT_CIRCUIT ();

	reg a, b, c, en;
	wire [0:7] d;
	
	STRUCT_CIRCUIT SC(a, b, c, en, d);
	
	initial begin
	#10 {a, b, c, en} = 4'b0000;
	#10 {a, b, c, en} = 4'b0011;
	#10 {a, b, c, en} = 4'b1001;
	#10 {a, b, c, en} = 4'b1000;
	
	end
endmodule
