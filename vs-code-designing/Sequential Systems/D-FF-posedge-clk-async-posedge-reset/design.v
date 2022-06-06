module designn (
    clk,d,rst,q
);
    input clk,d,rst;
    output reg q;
/*
    in case of asynchronous 
    circuit reset signal will 
    have effect  when there
     is positive triggered in the
      reset signal independent of
      global clock signal.
    */
    always @(posedge clk,posedge rst) begin
        if (rst) 
            q <=1'd0;
        else
            q<=d;
    end
endmodule