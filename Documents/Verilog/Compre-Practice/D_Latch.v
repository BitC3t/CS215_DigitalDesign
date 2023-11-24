module d_latch (
    input D,
    output Y
);

always @ (D) begin
    if(D) begin
        Y <= 1;
    end
    else begin
        Y <= 0;
    end
end
    
endmodule