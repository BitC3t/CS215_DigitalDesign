module full_adder(
    input X, Y, Z,
    output S, C
);

assign S = X^Y^Z;
assign C = Z&(X^Y) + (X&Y);
    
endmodule