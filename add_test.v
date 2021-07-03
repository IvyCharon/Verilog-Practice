// created by ivy on 2021/6/30
/*
    ans:
    00000000000000000000000000000011
  
*/

`include "add.v"

module top_module();
    reg [31:0]in0;
    reg [31:0]in1;
    wire clk;
    wire [31:0]sum;
    initial begin
        assign in0 = 100'd1;
        assign in1 = 100'd2;
    end
    Add a(
        .a          (in0),
        .b          (in1),
        .sum        (sum)
    );
    always @(*) begin
        $display("%b", sum);
    end
endmodule