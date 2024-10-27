module mux2x1 (
  input [7:0] bcd0,
  input [7:0] bcd1,
  input select,
  output reg [7:0] out
);

  always @(*) begin
    case (select)
      2'b0: out = bcd0;
      2'b1: out = bcd1;
      default: out = 8'b00000000;
    endcase
  end

endmodule
