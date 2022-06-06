module dlat (
    en,d,q,rst
);
    input en,d,rst;
    output reg q;

    always @(en,d,rst) begin
        if(rst)
            q=1'b0;
        else if (en) 
            q=d;
        
    end
endmodule