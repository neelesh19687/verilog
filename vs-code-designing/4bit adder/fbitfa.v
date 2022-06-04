module fbitfa (
    A,B,C_IN,C_OUT,SUM
);
    input [3:0]A,B;
    input C_IN;
    output [3:0]SUM;
    output C_OUT;

    assign {C_OUT,SUM}=A+B+C_IN;
endmodule