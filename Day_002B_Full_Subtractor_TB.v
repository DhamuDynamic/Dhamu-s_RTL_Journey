module Full_Subtractor_tb ();
    reg A_tb,B_tb,Bin_tb;
    wire Diff_tb,Bout_tb;
    integer i;
    Full_Subtractor dut (A_tb,B_tb,Bin_tb,Diff_tb,Bout_tb);
    initial begin
        for(i=0;i<8;i=i+1)begin
            {A_tb,B_tb,Bin_tb} = i;
            #10;
        end
    end
    initial begin
        $display("          Input                   Output");
        $display("======================================");
        $monitor("A = %0b,B = %0b,Bin = %0b  Diff = %0b,Bout = %0b",A_tb,B_tb,Bin_tb,Diff_tb,Bout_tb);
        $dumpfile("dump.vcd");
        $dumpvars;
    end
endmodule