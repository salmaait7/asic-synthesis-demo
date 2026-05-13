(* keep_hierarchy = "yes" *)
module delay_line_4 (
    input  in,
    output out
);
    wire t1, t2, t3;

    sky130_fd_sc_hd__buf_1 b0 (.A(in), .X(t1));
    sky130_fd_sc_hd__buf_1 b1 (.A(t1), .X(t2));
    sky130_fd_sc_hd__buf_1 b2 (.A(t2), .X(t3));
    sky130_fd_sc_hd__buf_1 b3 (.A(t3), .X(out));
endmodule
