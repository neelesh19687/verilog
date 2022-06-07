module testbench (
    
);
    reg clk,rst,u_d;
    
    wire [7:0] count;

    counter DUT(clk,rst,count,u_d);

    initial
    clk=0;
    always #10 clk <= ~clk;

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0,testbench);
        rst=1;u_d=1;
        #120;
        rst=0;
        #40;
        $finish;
    end
endmodule