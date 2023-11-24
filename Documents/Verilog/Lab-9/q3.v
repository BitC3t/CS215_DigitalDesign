module fsm(
    input x, clk, res
    output reg z
);
reg [2:0] count;

always @ (posedge clk or negedge res) begin
    if(~res) begin
        z <= 0;
        count <= 3'b000;
    end
    else begin
        if(count == 3'b011 || count == 3'b101) begin
            z <= 1;
        end
        else begin
            z <= 0;
            count <= count + 1;
        end
    end
end

endmodule