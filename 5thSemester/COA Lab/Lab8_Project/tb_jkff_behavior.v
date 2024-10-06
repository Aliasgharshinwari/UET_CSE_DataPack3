module tb_jkff_behavior();
	reg J, K;
	reg rst;
	reg Clk;
	
	wire Q, QBar; 
	
	jkff_behavior my_jkff_behavior(.J(J), .K(K), .rst(rst), 
	.Clk(Clk), .Q(Q), .QBar(QBar));

	// Clock generation
    always #5 Clk = ~Clk;
	
	initial begin
	
	$display("J K Q Q'");
	rst = 1;
	Clk = 1;
	#10	
	$display("%b %b %b %b", J , K, Q,QBar);

	J = 0;
	K = 0;
	rst = 0;
	#10	
	$display("%b %b %b %b", J , K, Q,QBar);
	
	J = 1;
	K = 0;
	#10	
	$display("%b %b %b %b", J , K, Q,QBar);
		
	J = 0;
	K = 1;
	#10	
	$display("%b %b %b %b", J , K, Q,QBar);
	
	J = 1;
	K = 1;
	#10	
	$display("%b %b %b %b", J , K, Q,QBar);
	
	J = 0;
	K = 0;
	#10	
	$display("%b %b %b %b", J , K, Q,QBar);
	end	

endmodule





