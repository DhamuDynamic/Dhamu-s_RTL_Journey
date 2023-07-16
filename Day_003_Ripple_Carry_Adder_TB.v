module Ripple_Carry_Adder_tb ();
    reg [3:0] A_tb;
    reg [3:0] B_tb;
    reg Cin_tb;
    wire [3:0] Sum_tb;
    wire Cout;
    integer i;
    Ripple_Carry_Adder dut (A_tb,B_tb,Cin_tb,Sum_tb,Cout_tb);
    initial begin
        for(i=0;i<10;i=i+1) begin
            A_tb = {$random}%15;
            B_tb = {$random}%15;
            #10;
        end
    end
    initial begin
        Cin_tb = 1'b0;
    end
    initial begin
        $display("          Input                  Output");
        $display("=====================================");
        $monitor("A = %0d B = %0d Cin = %0d  Sum = %0d Cout = %0d",A_tb,B_tb,Cin_tb,Sum_tb,Cout_tb);
        $dumpfile("dump.vcd");
        $dumpvars;
    end
endmodule