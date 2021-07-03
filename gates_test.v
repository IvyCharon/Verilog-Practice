// created by ivy on 2021/6/30
/*
    ans:
    0
    1

*/

`include "gates.v"

module top_module();
    reg in0;
    reg in1;
    wire out0;
    wire out1;
    initial begin
        assign in0 = 1;
        assign in1 = 0;
    end
    not_gate a(
        .in         (in0),
        .out        (out0)
    ), b(
        .in         (in1),
        .out        (out1)
    );
    always @(*) begin
        $display(out0);
        $display(out1);
    end
endmodule