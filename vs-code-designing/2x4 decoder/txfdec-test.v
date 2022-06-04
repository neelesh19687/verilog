module testbench (
    
);
    reg [1:0] i;
    wire [3:0] y;

    txfdec DUT(i,y);

    initial begin
        $monitor($time," i=%b, y=%b",i,y);
        $dumpfile("txfdec.vcd");
        $dumpvars(0,testbench);

        i=2'b00; #50;
        i=2'b01; #50;
        i=2'b10; #50;
        i=2'b11; #50;
    end
endmodule