module tb_clock_divider;
    reg clk_in = 0;
    wire clk_out; 

    // Instantiate the clock divider module
    clock_divider uut (.clk_in(clk_in), .clk_out(clk_out));

    always #5 clk_in = ~clk_in; //100 GHz signal

endmodule

