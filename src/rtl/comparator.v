module comparator (
    input  ref_sig,
    input  test_sig,
    output pulse
);
    assign pulse = ref_sig ^ test_sig;
endmodule
