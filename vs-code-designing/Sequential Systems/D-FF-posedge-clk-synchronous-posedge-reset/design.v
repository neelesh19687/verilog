module designn (
    clk,d,rst,q
);
    input clk,d,rst;
    output reg q;
    /* in case of synchronous 
    circuit reset signal will 
    have effect only when there
     is positive triggered in the
      global clock signal.
      */

    always @(posedge clk) begin
        if (rst) 
            q <=1'd0;
        else
            q<=d;
    end
endmodule