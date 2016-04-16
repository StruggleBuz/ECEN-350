`timescale 1ns / 1ps

module HalfAdd(Cout, Sum, A, B);
input A, B;
output Cout, Sum;

xor x0(Sum, A, B);
and a0(Cout, A, B);

endmodule
