module testbench (
    
);
    reg clk,rst,d;
    wire q;

    sdff DUT(clk,rst,d,q);

    initial
    clk=0;
    always #10 clk= ~clk;

    initial begin
        $dumpfile("sdff.vcd");
        $dumpvars(0,testbench);
        rst=0;
        d=0; #12;
        d=1; #20;
        d=0; #17;
        d=1; #12;
        rst=1; #20;
        rst=0; #20;
        $finish;
    end
endmodule