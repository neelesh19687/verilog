module fxomuxb (
    i,s,Y
);
    input [3:0]i;
    input [1:0]s;
    output Y;

    reg Y ;
     wire [1:0] s;
     wire [3:0] i;

    always @(i or s) begin
        case(s)
            2'b00: Y=i[0];
            2'b01: Y=i[1];
            2'b10: Y=i[2];
            2'b11: Y=i[3];
        endcase
    end
endmodule
 