module testbench (
    
);
    reg A,B,C,D;
    wire Y;

    mydesign DUT(A,B,C,D,Y);

    initial begin
        $monitor($time," A=%b B=%b C=%b D=%b Y=%b",A,B,C,D,Y);
        $dumpfile("mydesign.vcd");
        $dumpvars(0,testbench);

        #5 A=1;B=0;C=0;D=1;
        #5 A=0;B=1;
        #5 C=1;
        #5 $finish;
        $display("Compilled Successfully");
    end
endmodule
