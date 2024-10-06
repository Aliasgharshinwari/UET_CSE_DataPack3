module tb3x8_using2x4;
  reg [2:0] A;
  wire [7:0] I;

  // Instantiate the decoder module
  decoder dec1(A, I);

  initial begin
    $monitor("A=%b I=%b %b %b %b %b %b %b %b", A, I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]);

    #10;
    A = 3'b000;
    #10;
    A = 3'b001;
    #10;
    A = 3'b010;
    #10;
    A = 3'b011;
    #10;
    A = 3'b100;
    #10;
    A = 3'b101;
    #10;
    A = 3'b110;
    #10;
    A = 3'b111;
  
  end
endmodule
