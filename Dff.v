// copy from https://hdlbits.01xz.net/wiki/Dff8r

module Dff(
    input clk,              // Clocks are used in sequential circuits
    input reset,            // Synchronous reset
    input [7:0] d,
    output reg [7:0] q
);
    // Use a clocked always block
    // copy d to q at every positive edge of clk, and reset q to 0 if reset signal is 1
    // Clocked always blocks should use non-blocking assignments

endmodule
