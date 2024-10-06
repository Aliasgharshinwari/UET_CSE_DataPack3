module tb_task3();
	reg [3:0] I1;
	reg [3:0] I2;
	reg [1:0] Sel;
	wire [3:0] out;
	task3 my_task3(I1, I2, Sel, out);

	initial begin
	I1 = 4'b1000;
	I2 = 4'b0010;
	Sel = 2'b00;
	#10;
		
	I1 = 4'b1000;
	I2 = 4'b0010;
	Sel = 2'b01;
	#10;
		
	I1 = 4'b1000;
	I2 = 4'b0010;
	Sel = 2'b10;
	#10;
		
	I1 = 4'b1000;
	I2 = 4'b0010;
	Sel = 2'b11;
	#10;
	end
endmodule


