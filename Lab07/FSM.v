`timescale 1ns / 1ps


module FSM(input clk,reset,
input a,
output reg out1, out2);
reg state, nextstate;

//state register
always @(posedge clk, posedge reset)
if (reset)
state <= 1'b0;
else
state <= nextstate;

// next state logic
always @(*)
case (state)
1'b0: if (a) nextstate <=1'b1;
else nextstate <= 1'b0;
1'b1: if (~a) nextstate <=1'b0;
else nextstate <= 1'b1;
endcase

// output logic (combinational)
always @(*)
if (state == 0) out1 = 1'b1;
else		out2 = 1'b1;
endmodule
