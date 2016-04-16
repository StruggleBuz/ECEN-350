`timescale 1ns / 1ps


// USING THIS TEST BENCH TO GET VALUES FOR THE TABLE IN 6.1


module RegisterFileTest_v;
	// Inputs
	reg [31:0] BusW;
	reg [4:0] RA;
	reg [4:0] RB;
	reg [4:0] RW;
	reg RegWr;
	reg Clk;

	// Outputs
	wire [31:0] BusA;
	wire [31:0] BusB;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile uut (
		.BusA(BusA), 
		.BusB(BusB), 
		.BusW(BusW), 
		.RA(RA), 
		.RB(RB), 
		.RW(RW), 
		.RegWr(RegWr), 
		.Clk(Clk)
	);
initial begin

// initial conditions
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd1, 1'b1, 32'h1};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd2, 1'b1, 32'h2};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd3, 1'b1, 32'h3};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd4, 1'b1, 32'h4};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd5, 1'b1, 32'h5};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd6, 1'b1, 32'h6};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd7, 1'b1, 32'h7};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd8, 1'b1, 32'h8};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd9, 1'b1, 32'h9};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd10, 1'b1, 32'hA};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd11, 1'b1, 32'hB};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd12, 1'b1, 32'hC};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd13, 1'b1, 32'hD};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd14, 1'b1, 32'hE};
#5; Clk = 0; #5; Clk = 1;
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h0, 5'd15, 1'b1, 32'hF};
#5; Clk = 0; #5; Clk = 1;


// modifying conditions & outputs
{RA, RB, RW, RegWr, BusW} = {5'h0, 5'h1, 5'h0, 1'b0, 32'h0};
#5; Clk = 0; #5; Clk = 1;
$display("A: %h, B: %h", BusA, BusB);

{RA, RB, RW, RegWr, BusW} = {5'h2, 5'h3, 5'h1, 1'b0, 32'h1000};
#5; Clk = 0; #5; Clk = 1;
$display("A: %h, B: %h", BusA, BusB);

{RA, RB, RW, RegWr, BusW} = {5'h4, 5'h5, 5'h0, 1'b1, 32'h1000};
#5; Clk = 0; #5; Clk = 1;
$display("A: %h, B: %h", BusA, BusB);

{RA, RB, RW, RegWr, BusW} = {5'h6, 5'h7, 5'hA, 1'b1, 32'h1010};
#5; Clk = 0; #5; Clk = 1;
$display("A: %h, B: %h", BusA, BusB);

{RA, RB, RW, RegWr, BusW} = {5'h8, 5'h9, 5'hB, 1'b1, 32'h103000};
#5; Clk = 0; #5; Clk = 1;
$display("A: %h, B: %h", BusA, BusB);

{RA, RB, RW, RegWr, BusW} = {5'hA, 5'hB, 5'hC, 1'b0, 32'h0};
#5; Clk = 0; #5; Clk = 1;
$display("A: %h, B: %h", BusA, BusB);

{RA, RB, RW, RegWr, BusW} = {5'hC, 5'hD, 5'hD, 1'b1, 32'hABCD};
#5; Clk = 0; #5; Clk = 1;
$display("A: %h, B: %h", BusA, BusB);

{RA, RB, RW, RegWr, BusW} = {5'hE, 5'hF, 5'hE, 1'b0, 32'h09080009};
#5; Clk = 0; #5; Clk = 1;
$display("A: %h, B: %h", BusA, BusB);

$finish;
end
endmodule
