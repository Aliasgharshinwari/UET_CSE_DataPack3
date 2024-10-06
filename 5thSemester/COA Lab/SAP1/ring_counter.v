module ring_counter (
    input wire clk,
    input wire rst,
    output reg [5:0] count
);
    // Initialize the counter
    initial count = 6'b000001;

    // Shift the bits on each clock cycle
    always @(posedge clk) begin
        if (rst) begin
            count <= 6'b000001;
        end else begin
            count <= count << 1;
            if (count == 6'b000000) begin
                count <= 6'b000001;
            end
        end
    end
endmodule

