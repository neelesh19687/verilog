module testbench (
    
);
    reg s0,s1,i0,i1,i2,i3;
    wire y;
    mux41 DUT(s0,s1,i0,i1,i2,i3,y);

    initial begin
        $monitor($time," s0=%b, s1=%b, i0=%b, i1=%b, i2=%b, i3=%b, y=%b",s0,s1,i0,i1,i2,i3,y);

        $dumpfile("mux41.vcd");
        $dumpvars(0,testbench);

        #5 s0=0;s1=0;i0=1;i1=0;i2=0;i3=1;
        #5 s0=1;s1=0;
        #5 s0=0;s1=1;
        #5 s0=1;s1=1;
        #5 $finish;
        $display("compilled successfully");

    end

endmodule