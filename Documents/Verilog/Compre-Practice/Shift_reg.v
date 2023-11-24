module shift_reg(
    input [3:0] A,
    input clk, res,
    output reg [3:0] B
);
    always @ (posedge clk or negedge res) begin
        if (~res) begin
            B <= A; 
        end
        else begin
            B <= {B[0], B[3:1]};
        end
    end
endmodule