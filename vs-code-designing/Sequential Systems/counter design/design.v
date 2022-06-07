module counter (
    clk,rst,count,u_d
);
    
    input clk,rst,u_d;
    output [7:0]count;
    reg [7:0] count_temp=8'b0000000;

    always @(posedge clk) 
        if (!rst) 
            count_temp <= 8'd0;
        else if(u_d)
            count_temp <= count_temp+1;
        else
            count_temp <= count_temp-1;
    

    assign count =count_temp;

        
    
endmodule