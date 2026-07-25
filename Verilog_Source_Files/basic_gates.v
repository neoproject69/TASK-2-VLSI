module basic_gates(
    input A,
    input B,
    output AND,
    output OR,
    output NOT_A,
    output NAND,
    output NOR,
    output XOR,
    output XNOR
);

assign AND  = A & B;
assign OR   = A | B;
assign NOT_A = ~A;
assign NAND = ~(A & B);
assign NOR  = ~(A | B);
assign XOR  = A ^ B;
assign XNOR = ~(A ^ B);

endmodule