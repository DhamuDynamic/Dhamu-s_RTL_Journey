module Ripple_Carry_Adder (A,B,Cin,Sum,Cout);
    input [3:0] A;
    input [3:0] B;
    input Cin;
    output [3:0] Sum;
    output Cout;
    wire w0,w1,w2;
    Full_Adder FA0 (A[0],B[0],Cin,Sum[0],w0);
    Full_Adder FA1 (A[1],B[1],w0,Sum[1],w1);
    Full_Adder FA2 (A[2],B[2],w1,Sum[2],w2);
    Full_Adder FA3 (A[3],B[3],w2,Sum[3],Cout);
endmodule
module Full_Adder (A,B,Ci,Sum,Co);
    input A,B,Ci;
    output Sum,Co;
    assign Sum = A^B^Ci;
    assign Co = (A&B)|(B&Ci)|(Ci&A);
endmodule