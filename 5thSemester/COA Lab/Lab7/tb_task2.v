module tb_task2();
	reg [3:0] I;
	reg [1:0] Sel;
	wire out;
	task2 my_mux4x1(I, Sel, out);
	
	initial begin
	I = 4'b0101;
	Sel = 2'b00;
	#10;
		
	I = 4'b0101;
	Sel = 2'b01;
	#10;
		
	I = 4'b0101;
	Sel = 2'b10;
	#10;
		
	I = 4'b0101;
	Sel = 2'b11;
	#10;
	end
endmodule

