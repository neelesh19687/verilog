module testbench (
    
);
    reg A,B,C,D,E,F;
    wire Y;

    designn DUT(A,B,C,D,E,F,Y);

    initial begin
        $monitor($time," a=%b, b=%b, c=%b, d=%b, e=%b, f=%b, y=%b",A,B,C,D,E,F,Y);
        $dumpfile("design.vcd");
        $dumpvars(0,testbench);

        #5 A=0;B=0;C=0;D=0;E=0;F=0;
        #5 A=1;B=1;F=1;
        #5 E=1;
        #5 $finish;
        $display("compilled successfully");

    end

endmodule