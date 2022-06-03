module mux41 (
    s0,s1,i0,i1,i2,i3,y
);
    input s0,s1;
    input i0,i1,i2,i3;
    output y;
    wire t1,t2,t3,t4,t5,t6;

    not #1 g1(t1,s0);
    not #1 g2(t2,s1);
    and #1 g3(t3,t1,t2,i0);
    and #1 g4(t4,t1,s1,i1);
    and #1 g5(t5,s0,t2,i2);
    and #1 g6(t6,s0,s1,i3);
    or #1 g7(y,t3,t4,t5,t6);

endmodule