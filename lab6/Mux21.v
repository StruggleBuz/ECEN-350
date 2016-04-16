`timescale 1ns / 1ps

module Mux21(out, in, sel);

input [1:0] in;
input sel;
output out;
wire notsel, Asel, Bnotsel;

and a0(Asel, in[1], sel);
not n0(notsel, sel);
and a1(Bnotsel, notsel, in[0]);
or  r0(out, Asel, Bnotsel);

endmodule
