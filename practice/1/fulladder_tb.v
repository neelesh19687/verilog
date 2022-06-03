`timescale 1ns/1ns
`include "fulladder.v"

module fulladder_tb (
    
);
    reg a,b,c;
    wire carry,sum;

    fulladder uut(a,b,c,carry,sum);
    
    initial begin
        $dumpfile("fulladder_tb.vcd");
        $dumpvars(0,fulladder_tb);

        a=1;b=1;c=1;
        #20;
        a=0;b=0;c=1;
        #20;
        a=1;b=0;c=1;
        #20;
        a=0;b=0;c=0;
        #20;

        $display("Compiled Successsfully");
    end
endmodule