`timescale 1ns / 1ps

module floprsen(input clk,
input reset,
input  set,
input [3:0] d,
output reg [3:0] q);

always @(posedge clk, posedge reset, set)
if (reset) 	q <= 0;
else if (set) 	q <= 1;
else 	   	q <= d;

endmodule
