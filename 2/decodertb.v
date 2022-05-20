`timescale 1ns/1ns
`include "decoder.v"

module decodertb (
    
);
    reg e,h0,h1;
    wire u0,u1,u2,u3;

    decoder uut(e,h0,h1,u0,u1,u2,u3);

    initial begin
        $dumpfile("decodertb.vcd");
        $dumpvars(0,decodertb);

        e=0;h0=1;h1=1;
        #30;
        e=1;h0=0;h1=0;
        #30;
        e=1;h0=1;h1=0;
        #30;
        e=1;h0=0;h1=1;
        #30;
        e=1;h0=1;h1=1;
        #30;

        $display("Compiled Successfully");

    end
endmodule