`timescale 1ns/1ns
`include "mux14.v"

module mux14tb (
    
);
    reg s0,s1,i0,i1,i2,i3;
    wire y;

    mux14 uut(y,s0,s1,i0,i1,i2,i3);

    initial begin

        $dumpfile("mux14tb.vcd");
        $dumpvars(0,mux14tb);
        i0=1;i1=0;i2=0;i3=1;
        s0=0;s1=0;
        #30;

        s0=0;s1=1;
        #30;

        s0=1;s1=1;
        #30;

        s0=1;s1=0;
        #30;

        $display("Compiled Successfully");

    end
endmodule