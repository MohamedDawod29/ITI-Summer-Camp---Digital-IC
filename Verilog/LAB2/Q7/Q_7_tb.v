`timescale 1ns / 1ps

module Dividers_TB;

    reg clk;
    reg rst;
    wire clk_out;
    clk_divider_by_3_counter DUT (
        .clk(clk),
        .rst(rst),
        .clk_out(clk_out)
    );


    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Test sequence
    initial begin
       
        rst = 0;
        #10 rst = 1;
        #100 
        #200 $stop;
    end

    // Monitor the signals
    initial begin
        $monitor("Time: %0d, clk: %b, rst: %b, clk_out: %b", 
                 $time, clk, rst, clk_out);
    end

endmodule
