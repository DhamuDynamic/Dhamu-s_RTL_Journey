module Full_Adder_tb ();
    reg A_tb,B_tb,Cin_tb;
    wire Sum_tb,Cout_tb;
    Full_Adder dut (A_tb,B_tb,Cin_tb,Sum_tb,Cout_tb);
    integer i;
    initial begin
        for(i=0;i<8;i=i+1) begin
            {A_tb,B_tb,Cin_tb} = i;
            #10;
        end
    end
    initial begin
        $display("         Inputs                Outputs");
        $display("===========================================");
        $monitor("A = %0b,B = %0b,Cin = %0b  Sum = %0b, Cout = %0b",A_tb,B_tb,Cin_tb,Sum_tb,Cout_tb);
        $dumpfile("dump.vcd");
        $dumpvars;
    end
endmodule