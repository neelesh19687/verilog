`timescale 1ns/1ns
`include "halfadder.v"

module halfadder_tb (
    
);
    
reg a,b;
wire carry,sum;

halfadder uut(a,b,carry,sum);

initial begin
    
    $dumpfile("halfadder_tb.vcd");
    $dumpvars(0,halfadder_tb);

    a=1;b=1;
    #20;

    a=0;b=1;
    #20;

    a=1;b=0;
    #20;

    a=0;b=0;
    #20;

    $display("Compiled Successfully");
    

end

endmodule