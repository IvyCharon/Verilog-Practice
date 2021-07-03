// created by ivy on 2021/7/3
/*
    ans:
    At time                    0, clk = 0, rst = 1, in = 01, out = xx
    At time                    1, clk = 1, rst = 0, in = 01, out = 01
    At time                    2, clk = 0, rst = 0, in = 02, out = 01
    At time                    3, clk = 1, rst = 0, in = 03, out = 03
    At time                    4, clk = 0, rst = 0, in = 03, out = 03
    At time                    5, clk = 1, rst = 1, in = 03, out = 00
    At time                    6, clk = 0, rst = 0, in = 04, out = 00
    At time                    7, clk = 1, rst = 0, in = 04, out = 04
    At time                    8, clk = 0, rst = 0, in = 04, out = 04

*/

`include "Dff.v"
`timescale 1ns/1ns

module top_module();
    parameter time_period = 2;
    reg clk;
    reg [7:0]in;
    reg rst;
    wire [7:0]out;
    initial begin
        clk = 0;
        in = 8'd1;
        #2 in = 8'd2;
        #1 in = 8'd3;
        #3 in = 8'd4;
    end
    initial begin
        rst = 1;
        #1 rst = 0;
        #4 rst = 1;
        #1 rst = 0;
    end
    always begin
        #(time_period / 2) clk = ~clk;
    end

    Dff a(
        .clk(clk),
        .reset(rst),
        .d(in),
        .q(out) 
    );

    initial
        $monitor("At time %t, clk = %d, rst = %d, in = %h, out = %h",$time, clk, rst, in, out);


    initial begin
        #8 $finish;
    end
    
endmodule