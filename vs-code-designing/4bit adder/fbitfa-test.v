module testbench (
    
);
    reg [3:0]A,B;
    reg C_IN;
    wire [3:0]SUM;
    wire C_OUT;
    fbitfa DUT(A,B,C_IN,C_OUT,SUM);

    initial begin

        $monitor($time," A=%b, B=%b, C_IN=%b, C_OUT=%b, SUM=%b",A,B,C_IN,C_OUT,SUM);
        $dumpfile("fbitfa.vcd");
        $dumpvars(0,testbench);
        A=4'b0000;B=4'b0001;C_IN=1'b0;
        #100
        A=4'b0011;B=4'b0011;C_IN=1'b0;
        #100
        A=4'b1111;B=4'b0001;C_IN=1'b0;
        
        
    end
endmodule