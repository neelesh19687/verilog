module testbench (
    
);
    reg clk,rst;
    wire clk_2,clk_4,clk_8,clk_16 ;

    clkd DUT(clk,rst,clk_2,clk_4,clk_8,clk_16);

    initial
    clk=0;
    always #10 clk <= ~clk;

    initial begin
        $dumpfile("clkd.vcd");
        $dumpvars(0,testbench);
        
        reset=0; d=1;
        #480;
        reset=1;
        #60;
        $finish;
    end
endmodule