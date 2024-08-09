module clk_divider_by_3_counter (
    input wire clk_in,   // Input clock
    input wire reset,    // Reset signal
    output reg clk_out   // Output clock (divided by 3)
);

reg [1:0] count;  // 2-bit counter to count from 0 to 2

always @(posedge clk_in or posedge reset) begin
    if (reset) begin
        count <= 2'b00;
        clk_out <= 0;
    end else begin
        if (count == 2'b10) begin
            count <= 2'b00;
            clk_out <= ~clk_out;
        end else begin
            count <= count + 1;
        end
    end
end

endmodule
