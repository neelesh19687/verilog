module mydesign (
    A,B,C,D,Y
);
    input A,B,C,D;
    output Y;
    wire t1,t2,Y;

    nand #1 G1(t1,A,B);
    and #1 G2(t2,C,D);
    or #1 G3(Y,t1,t2);


endmodule