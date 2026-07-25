module tb_full_adder;

reg A;
reg B;
reg Cin;

wire Sum;
wire Carry;

full_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0,tb_full_adder);

    A=0; B=0; Cin=0; #10;
    A=0; B=0; Cin=1; #10;
    A=0; B=1; Cin=0; #10;
    A=0; B=1; Cin=1; #10;
    A=1; B=0; Cin=0; #10;
    A=1; B=0; Cin=1; #10;
    A=1; B=1; Cin=0; #10;
    A=1; B=1; Cin=1; #10;

    $finish;

end

endmodule