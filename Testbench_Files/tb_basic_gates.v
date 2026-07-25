module tb_basic_gates;

reg A;
reg B;

wire AND;
wire OR;
wire NOT_A;
wire NAND;
wire NOR;
wire XOR;
wire XNOR;

basic_gates uut(
    .A(A),
    .B(B),
    .AND(AND),
    .OR(OR),
    .NOT_A(NOT_A),
    .NAND(NAND),
    .NOR(NOR),
    .XOR(XOR),
    .XNOR(XNOR)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0,tb_basic_gates);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;

end

endmodule