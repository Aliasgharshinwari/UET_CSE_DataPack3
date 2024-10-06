module tb_task4();

	reg [3:0]A; 
	wire [15:0]I;
	
	task4 my_3x8_Decoder(A,I);
		
	initial begin
	A = 4'b0001;
	#10
	
	A = 4'b0010;
	#10
	
	A = 4'b0011;
	#10
	
	A = 4'b0100;
	#10
	
	A = 4'b0101;
	#10
	
	A = 4'b0110;
	#10
	A = 4'b0111;
	#10
	A = 4'b1000;
	#10
	
	A = 4'b1001;
	#10
	
	A = 4'b1010;
	#10
	
	A = 4'b1011;
	#10
	
	A = 4'b1110;
	#10
	
	A = 4'b1111;
	end
endmodule



