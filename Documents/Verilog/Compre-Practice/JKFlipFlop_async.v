module jk_ff_res(input J, input K, input clk, input res, output reg Q);

    always @ (posedge clk or negedge res) begin
        if(~res) Q <= 0;
        else begin
            case({J,K})
                2'b00: Q <= Q;
                2'b10: Q <= 1;
                2'b01: Q <= 0;
                2'b11: Q <= ~Q;
            endcase
        end
    end

endmodule