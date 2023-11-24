module half_adder(
    input X, Y,
    output S, C
);

assign S = X^Y;
assign C = (X&Y);
    
endmodule