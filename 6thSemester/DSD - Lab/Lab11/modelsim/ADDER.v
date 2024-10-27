module ADD (out, in1, in2);                                                            
	input [7:0] in1, in2;
    output reg [7:0] out = 8'h00;
	
	always @ (*)
    begin
		out = in1 + in2;
    end
endmodule                 

