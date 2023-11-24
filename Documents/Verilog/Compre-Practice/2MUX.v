module mux2(
    input [1:0] I, 
    input S,
    output reg Y
);

always @ (I or S) begin
    if(S == 1) begin
        Y <= I[1];
    end 
    else begin
        Y <= I[0];
    end
end
endmodule