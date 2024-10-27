module PIPO1 (dout, din, ld, clk);
    input [7:0] din;
    input ld, clk;
    output reg [7:0] dout;
        
	always @ (posedge clk)
		if (ld) 
			dout <= din;  
endmodule

