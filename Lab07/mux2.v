`timescale 1ns / 1ps

module mux2(input [3:0] d0, d1,
input s,
output reg [3:0] y);

always @(s)
if (s) y = d1;
else y = d0;
endmodule
