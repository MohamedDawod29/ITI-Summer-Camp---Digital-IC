`timescale 1ns / 1ps

module Dividers_TB;

    reg clk;
    reg rst;
    wire clk_out;
    clk_divide_by_6_counter DUT (
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
       
        rst = 1;
        #10 rst = 0;
        #100 
        #200 $stop;
    end

    
endmodule
