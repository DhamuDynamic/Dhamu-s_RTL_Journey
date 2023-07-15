module Half_Subtractor_tb ();
    reg A_tb,B_tb;
    wire Diff_tb,Borr_tb;
    integer i;
    Half_Subtractor dut (A_tb,B_tb,Diff_tb,Borr_tb);
    initial begin
        for(i=0;i<4;i=i+1) begin
            {A_tb,B_tb} = i;
            #10;
        end
    end
    initial begin
        $display("       Input        Output");
        $display("================================");
        $monitor("A = %0b,B = %0b  Diff = %0b Borr = %0b",A_tb,B_tb,Diff_tb,Borr_tb);
        $dumpfile("dumpfile.vcd");
        $dumpvars;
    end
endmodule