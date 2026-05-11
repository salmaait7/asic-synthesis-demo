module full_adder_ht (
    input  a,
    input  b,
    input  cin,
    output sum,
    output cout
);
    wire x1;
    wire x2;
    wire x3;
    wire x4;

    wire trigger;

    assign x1 = a ^ b;
    assign x2 = x1 ^ cin;

    assign x3 = a & b;
    assign x4 = cin & x1;
    assign cout = x3 | x4;

    assign trigger = a & b & cin;

    
    assign sum = x2 ^ trigger;

endmodule
