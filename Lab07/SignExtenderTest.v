module SignExtenderTest();
reg [15:0] Imm16;
reg Ctrl;
wire [31:0] BusImm;

SignExtender DUT (.BusImm(BusImm), .Imm16(Imm16), .Ctrl(Ctrl) );

initial
begin

// If most significant bit is 0, and sign extention is enabled,
// then the most significant bit of the 32 reg should be 0
// (sign extention)
#10 Ctrl = 0;
#10 Imm16 = 16'b0;
#10 if (BusImm[31] != 0) $display("error test 1");

// If most significant bit is 1, and sign extention is enabled,
// then the most significant bit of the 32 bit reg should be 1
// (sign extention)
#10 Imm16 = 16'b1111111111111111;
#10 if (BusImm[31] != 1) $display("error test 2");

// If most significant bit is 0, and sign extnention is disabled,
// then the most signifcant bit of the 32 bit reg should be 0
// (zero extention)
#10 Ctrl = 1;
#10 Imm16 = 16'b0;
#10 if (BusImm[31] != 0) $display("error test 3");

// If most significant bit is 1, and sign extention is disabled,
// then the most significant bit of the 32 bit reg should be 0
// (zero extention)
#10 Imm16[15] = 16'b1111111111111111;
#10 if (BusImm[31] != 0) $display("error4, %b", BusImm);

$finish;
end 
endmodule
