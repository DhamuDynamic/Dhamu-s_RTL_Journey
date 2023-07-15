// Full Subtractor
module Full_Subtractor (A,B,Bin,Diff,Bout);
    input A,B,Bin;
    output Diff,Bout;
    assign Diff = A^B^Bin;
    assign Bout = (~(A^B)&Bin)|(~A&B);
endmodule