module tb();

wire O;
reg A, B;
OR_Gate myOR(A, B, O);


initial	begin
	$display("A B O");
	A = 0;
	B = 0;
	#10;

	$display("%b, %b, %b",A,B,O);

	A = 0;
	B = 1;
	#10;


	$display("%b, %b, %b",A,B,O);
	A = 1;
	B = 0;
	#10;


	$display("%b, %b, %b",A,B,O);
	A = 1;
	B = 1;
	#10;

//	$display("%b, %b, %b",A,B,O);
	end

endmodule