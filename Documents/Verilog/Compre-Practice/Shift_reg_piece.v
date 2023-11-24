module shift_piece(
    input in,
    input clk, res, 
    output reg S 
)

reg [3:0] current;

    always @ (posedge clk or negedge res) begin
        if(~res) begin
           current <= 4'b0000;
        end
        else begin
            S <= current[0];
            current <= {in, current[3:1]};
        end
    end 
endmodule