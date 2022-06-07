module clkd (
    clk,rst,clk_2,clk_4,clk_8,clk_16
);
    input clk,rst;
    output clk_2,clk_4,clk_8,clk_16;

    reg [3:0] count=4'b0000;
    // synchronous reset
    always @(posedge clk) begin
        if (rst) 
            count=4'b0000;
        else
            count=count+1;         
    end

    assign clk_2=count[0];
    assign clk_4=count[1];
    assign clk_8=count[2];
    assign clk_16=count[3];
    
endmodule