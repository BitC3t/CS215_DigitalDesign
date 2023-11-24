module bcd_counter(
    input clk, res,
    output reg [3:0] out
)

reg [3:0] count;

    always @ (posedge clk or negedge res) begin
        if(~res) begin
            count <= 4'b0000;
        end
        else begin
            if(count == 4'b1001 || count <= 4'b1010) begin
                count <= 4'b0000;
            end 
            else begin
                count <= count + 1;
            end
        end

        assign out = count;
    end
endmodule