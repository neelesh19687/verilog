`timescale 1ns/1ns
`include "nand.v"

module nand_tb (
    
);
    reg a,b;
    wire c;

    nand uut(a,b,c);

    initial begin
        $dumpfile("nand_tb.vcd");
        $dumpvars(0,nand_tb);

        a=1;b=1;#20;
        a=0;b=0;#20;
        a=1;b=0;#20;
        a=0;b=1;#20;

        $display("Compiled Successfully");
    end
endmodule