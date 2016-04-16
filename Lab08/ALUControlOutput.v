`timescale 1ns / 1ps

module ALUControlOutput;
	reg [3:0] ALUop;
	reg [5:0] FuncCode;
	
	wire [3:0] ALUCtrl;

ALUControl uut ( 
	.ALUCtrl(ALUCtrl),
	.ALUop(ALUop),
	.FuncCode(FuncCode)
);

initial begin

{ALUop,FuncCode} = {4'b0010, 6'bXXXXXX};
#5 $display("ALUop: %h | FuncCode %h | ALUCtrl %h",ALUop, FuncCode, ALUCtrl);


{ALUop,FuncCode} = {4'b0110, 6'bXXXXXX};
#5 $display("ALUop: %h | FuncCode %h | ALUCtrl %h",ALUop, FuncCode, ALUCtrl);


{ALUop,FuncCode} = {4'b1111, 6'b000000};
#5 $display("ALUop: %h | FuncCode %h | ALUCtrl %h",ALUop, FuncCode, ALUCtrl);


{ALUop,FuncCode} = {4'b1111, 6'b000010};
#5 $display("ALUop: %h | FuncCode %h | ALUCtrl %h",ALUop, FuncCode, ALUCtrl);


{ALUop,FuncCode} = {4'b1111, 6'b100000};
#5 $display("ALUop: %h | FuncCode %h | ALUCtrl %h",ALUop, FuncCode, ALUCtrl);


{ALUop,FuncCode} = {4'b1111, 6'b100010};
#5 $display("ALUop: %h | FuncCode %h | ALUCtrl %h",ALUop, FuncCode, ALUCtrl);


{ALUop,FuncCode} = {4'b1111, 6'b100100};
#5 $display("ALUop: %h | FuncCode %h | ALUCtrl %h",ALUop, FuncCode, ALUCtrl);


{ALUop,FuncCode} = {4'b1111, 6'b100101};
#5 $display("ALUop: %h | FuncCode %h | ALUCtrl %h",ALUop, FuncCode, ALUCtrl);


{ALUop,FuncCode} = {4'b1111, 6'b101010};
#5 $display("ALUop: %h | FuncCode %h | ALUCtrl %h",ALUop, FuncCode, ALUCtrl);

end

endmodule
