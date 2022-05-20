module decoder (
    e,h0,h1,u0,u1,u2,u3
);
    input e,h0,h1;
    output u0,u1,u2,u3;

    assign u0=e&~h0&~h1;
    assign u1=e&~h0&h1;
    assign u2=e&h0&~h1;
    assign u3=e&h0&h1;

endmodule