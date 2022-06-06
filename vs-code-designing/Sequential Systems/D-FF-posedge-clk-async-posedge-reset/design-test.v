module testbench (
    
);
    reg clk,d,rst;
    wire q;

    designn DUT(clk,d,rst,q);

    
    initial begin
        $dumpfile("designn.vcd");
        $dumpvars(0,testbench);
        rst=0;
        d=0;clk=0;#20;
        d=1;clk=0;#10;
        d=1;clk=1;#10;
        d=0;clk=1;#10;
        d=0;clk=0;#10;
        rst=1;
        d=1;clk=0;#20;
        d=1;clk=0;#10;
        d=0;clk=1;#10;
        d=1;clk=1;#10;
        d=1;clk=0;#10;
        d=0;clk=0;#20;
        $finish;
        $display("compilled successfully");
    end
endmodule