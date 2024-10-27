module CNTR (dout, din, ld, dec, clk);
  input [7:0] din;
  input ld, dec, clk;
  output reg [7:0] dout;

  always @(posedge clk) begin
    if (ld)
      dout <= din;
    else if (dec)
      dout <= dout - 1;
  end
endmodule

