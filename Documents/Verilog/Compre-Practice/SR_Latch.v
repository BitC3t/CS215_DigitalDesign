module sr_latch (
    input S, R, 
    output Y
);

always @ (S or R) begin
    case({S,R}) 
        2'b00: Y <= Y;
        2'b01: Y <= 0;
        2'b10: Y <= 1;
        2'b11: Y <= x;
    endcase
end
    
endmodule