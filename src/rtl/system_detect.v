module system_detect (
    input  [3:0] a,
    input  [3:0] b,
    input        cin,

    output [3:0] sum,
    output       cout,

    output       p01_dbg,
    output       p12_dbg,
    output       p23_dbg,

    output       pulse
);

    wire [3:0] sum_internal;
    wire       cout_internal;

    wire s0_delayed;
    wire s1_delayed;
    wire s2_delayed;

    wire p01;
    wire p12;
    wire p23;
    wire pulse_raw;

    adder4_ht u_adder (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum_internal),
        .cout(cout_internal)
    );

    assign sum  = sum_internal;
    assign cout = cout_internal;


    assign p01 = sum_internal[0] ^ sum_internal[1];
    assign p12 = sum_internal[1] ^ sum_internal[2];
    assign p23 = sum_internal[2] ^ sum_internal[3];

    assign pulse_raw = p01 | p23 | p12;

    assign p01_dbg = p01;
    assign p12_dbg = p12;
    assign p23_dbg = p23;

    assign pulse = pulse_raw;

endmodule
