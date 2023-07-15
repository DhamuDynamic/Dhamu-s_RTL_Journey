// Half Subtractor
module Half_Subtractor (A,B,Diff,Borr);
    input A,B;
    output Diff,Borr;
    assign Diff = A^B;
    assign Borr = ~A & B;
endmodule