`timescale 1ns / 1ps

module full_adder(S,Cout,A,B,Cin);

output wire S,Cout;
input wire A,B,Cin;

wire andBCin, andACin,andAB;

assign S=A^B^Cin;
assign andAB=A&B;
assign andBCin=B&Cin;
assign andACin=A&Cin;
assign Cout=andAB |andBCin| andACin;

endmodule