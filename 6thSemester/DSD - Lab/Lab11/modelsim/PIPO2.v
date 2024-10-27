module PIPO2 (dout, din, ld, clr, clk);

        input [7:0] din;
        input ld, clr, clk;
        output reg [7:0] dout;
        always @ (posedge clk)
			if (clr) 
				dout <= 8'b0;
			else if (ld) 
				dout <= din;
endmodule
