`timescale 1ns / 1ps

module Decode24(out, in);
input [1:0] in;
output [3:0] out;

wire notA, notB;

not n0(notA, in[0]);
not n1(notB, in[1]);


and a0(out[0], notA, notB);
and a1(out[1], in[0], notB);
and a2(out[2], notA, in[1]);
and a3(out[3], in[0], in[1]);

endmodule

