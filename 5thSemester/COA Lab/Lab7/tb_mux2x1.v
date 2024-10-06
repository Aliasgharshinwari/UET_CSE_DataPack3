module tb_mux2x1();
	reg [1:0] I;
	reg Sel;
	wire out;

	mux2x1 my_mux2x1(I, Sel, out);

	initial begin
	I = 2'b00;
	Sel = 0;
	#10;
	
	I = 2'b01;
	Sel = 1;
	#10;
	
	I = 2'b10;
	Sel = 1;
	#10;
	end
	
endmodule
