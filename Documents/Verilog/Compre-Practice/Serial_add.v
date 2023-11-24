`include "FA.v"
`include "Shift_reg_piece.v"
module serial_add(
    input in, clk, res,
    output [1:0] sum
);

    always @ (posedge clk or negedge res) begin
        if(~res) sum <= 2'b00;
        else begin
            
        end
    end
endmodule

