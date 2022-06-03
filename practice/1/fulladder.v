module fulladder (
    a,b,c,carry,sum
);
    input a,b,c;
    output carry,sum;

    assign carry=a&b | b&c | a&c;
    assign sum = a^b^c;
    
endmodule