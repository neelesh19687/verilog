module andgate (
    a,b,c
);
    input a,b;
    output c;

    // and(c,a,b); // gate level 
     assign c=a&b; //dataflow 

endmodule
