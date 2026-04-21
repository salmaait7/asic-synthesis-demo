module system_detect (
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    input        rst,
    output [3:0] sum_clean,
    output [3:0] sum_ht,
    output       pulse,
    output       error
);
    wire cout_clean, cout_ht;

    adder4_clean u_clean (
        .a(a), .b(b), .cin(cin),
        .sum(sum_clean), .cout(cout_clean)
    );

    adder4_ht u_ht (
        .a(a), .b(b), .cin(cin),
        .sum(sum_ht), .cout(cout_ht)
    );

    comparator cmp (
        .ref_sig(sum_clean[0]),
        .test_sig(sum_ht[0]),
        .pulse(pulse)
    );

    sensing_unit sen (
        .pulse(pulse),
        .rst(rst),
        .error(error)
    );
endmodule
