module rc4 (
    input wire clk, // Clock input
    input wire rst, // Reset input
    output wire [3:0] out // 4-bit output
);

    reg [3:0] counter; // 4-bit counter register

    always @(posedge clk or posedge rst) begin
        
		if (rst) begin
            counter <= 4'b0001; // Reset the counter to 0
        end 
		
		else begin
            counter <= {counter[2:0], counter[3]}; // Shift the counter left
        end
    end
    assign out = counter; // Output the counter value
endmodule


