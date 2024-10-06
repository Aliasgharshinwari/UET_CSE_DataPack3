module tb_SR_Latch();
	
	reg S; 
	reg R;
	wire Q; 
	wire QBar;
	
	SR_Latch my_SR_Latch(S, R, Q, QBar);

	initial begin
	$display("S R Q QBar");

	S = 0;
	R = 1;
	#10	
	$display("%b %b %b %b", S , R, Q,QBar);

	
	S = 1;
	R = 0;
	#10	
	$display("%b %b %b %b", S , R, Q,QBar);
	
	S = 1;
	R = 1;
	#10	
	$display("%b %b %b %b", S , R, Q,QBar);
	
	
	S = 0;
	R = 0;
	#10
	$display("%b %b %b %b", S , R, Q,QBar);
	
	end
	
endmodule
