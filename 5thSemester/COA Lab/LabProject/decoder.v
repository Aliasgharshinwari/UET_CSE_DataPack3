module decoder (A,I);
  input [2:0]A;
  output [7:0]I;
  not n(n1, A[0]);
  decoder2x4 dec1(A[2], A[1], A[0], I[7:4]);
  decoder2x4 dec2(A[2], A[1], n1, I[3:0]);

endmodule
