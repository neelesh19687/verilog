module testbench (
    
);
    reg en,d,rst;
    wire q;

    dlat DUT(en,d,q,rst);

    initial begin
        $dumpfile("dlat.vcd");
        $dumpvars(0,testbench);
    // normal systems can be viewed just by commenting out reset signal

        rst=0;
        en=1;d=0;#5;
        en=1;d=1;#15;
        en=0;d=1;#5;
        en=0;d=0;#15;
        rst=1;
        en=1;d=0;#5;
        en=1;d=1;#15;
        en=0;d=1;#5;
        en=0;d=0;#15;
        en=1;d=0;#20;

        $finish;
        $display("compilled successfullly");
        

    end
endmodule