`timescale 1ns/1ns
`include "orgate.v"



module orgate_tb (
    
);
    reg a,b;
    wire c;

    orgate uut(a,b,c);

    initial begin
        
        $dumpfile("orgate_tb.vcd");
        $dumpvars(0,orgate_tb);

        a=1;
        b=1;

        #20

        a=0;
        b=1;

        #20

        a=0;
        b=0;

        #20

        $display("Compiled Successfully");
    end

endmodule