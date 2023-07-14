module Half_Adder_tb ();
    reg a_tb,b_tb;
    wire sum_tb,carry_tb;
    Half_Adder dut (a_tb,b_tb,sum_tb,carry_tb);
    integer i;
    initial begin
        for(i=0;i<4;i=i+1) begin
            {a_tb,b_tb} = i;
            #10;
        end
    end
    initial begin
        $display("     Inputs           outputs");
        $display("=====================================");
        $monitor("a = %0b b = %0b  sum = %0b carry = %0b",a_tb,b_tb,sum_tb,carry_tb);
        $dumpfile("dump.vcd");
        $dumpvars;
    end
endmodule