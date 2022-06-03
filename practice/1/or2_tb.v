`timescale 1ns/1ns
`include "or2.v"

module or2_tb (
    
);
    reg a,b;
    wire c;

    or2 uut(a,b,c);

    initial begin
        $dumpfile("or2.vcd");
        $dumpvars(0,or2_tb);

        a=1;b=1;#20;
        a=0;b=1;#20;

        $display("Compiled successfully");
    end
endmodule