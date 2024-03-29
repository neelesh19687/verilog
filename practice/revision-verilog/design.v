// sync d flip flop with positive triggered clock
module sdff (
    clk,rst,d,q
);
    input clk,rst,d;
    output reg q;

    always @(posedge clk) begin
        if(rst)
            q=1'b0;
        else
            q=d; 
    end
endmodule