`include "Shift_reg.v"

module testbench();
    wire [3:0] B;
    reg res;
    reg [3:0] A;

    shift_reg jk(A, clk, res, B);

    reg clk = 0;
    always #10 clk = ~clk;

    initial begin
        res = 0; A = 4'b1010;
        #10 res = 1;
        #100 $finish;
    end

    initial begin
        $monitor("time : %0d | clk :%d | res : %d | B = %d", $time, clk, res, B);
    end

endmodule