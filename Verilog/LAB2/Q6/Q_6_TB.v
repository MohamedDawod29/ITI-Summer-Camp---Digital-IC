`timescale 1ns / 1ps

module Divider_TB;

    reg clk;
    reg rst;
    wire Divide_2;
    wire Divide_4;
    wire Divide_8;
    wire Divide_16;

   
    clk_Divider DUT (
        .clk(clk),
        .rst(rst),
        .Divide_2(Divide_2),
        .Divide_4(Divide_4),
        .Divide_8(Divide_8),
        .Divide_16(Divide_16)
    );

  
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
       
        rst = 0;

  
        #10 rst = 1;

      
        #200 rst = 0;  
        #10 rst = 1;   

       
        #400 $stop;
    end

  
    initial begin
        $monitor("Time: %0d, clk: %b, rst: %b, Divide_2: %b, Divide_4: %b, Divide_8: %b, Divide_16: %b", 
                 $time, clk, rst, Divide_2, Divide_4, Divide_8, Divide_16);
    end

endmodule
