 module designn (
     A,B,C,D,E,F,Y
 );
    input A,B,C,D,E,F;
    output Y;
    wire T1,T2,T3,T4,T5,T6;

    and #1 g1(T1,A,B);
    or #1 g2(T2,C,D);
    nand #1 g3(T3,E,F);
    xor #1 g4(T4,T1,T2);
    not #1 g5(T5,T3);
    nor #1 g6(T6,T4,T5);
    not #1 g7(Y,T6);
 endmodule