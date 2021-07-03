//created by ivy on 2021/7/3
/*
    ans:
    1

*/
`include "module_p.v"

module top_module();
    reg in1, in2;
    wire out;
    initial begin
        in1 = 1;
        in2 = 1;
    end
    module_p a1(
        .in1(in1),
        .in2(in2),
        .out(out)
    );
    always @(*) begin
        $display(out);
    end
endmodule