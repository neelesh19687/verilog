module testbench (
    
);
    reg [1:0] s;
    reg [3:0] i;
    wire Y;

    fxomuxb DUT(i,s,Y);

    initial begin
        $monitor($time," i=%b, s=%b, Y=%b",i,s,Y);
        $dumpfile("fxomuxb.vcd");
        $dumpvars(0,testbench);

        i=4'b0000; s=2'b00; #50;
        i=4'b0001; s=2'b00; #50;
        i=4'b1000; s=2'b01; #50;
        i=4'b1000; s=2'b11; #50;
        $finish;
        $display("Compilled Sucessfully");

    end
endmodule