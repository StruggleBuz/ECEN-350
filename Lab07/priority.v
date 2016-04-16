`timescale 1ns / 1ps

module priority(input [3:0] a,
output reg [3:0] y);
always @(a)
if (a[3]) y = 4'b1000;
else if (a[2]) y = 4'b0100;
else if (a[1]) y = 4'b0010;
else if (a[0]) y = 4'b0001;
endmodule
