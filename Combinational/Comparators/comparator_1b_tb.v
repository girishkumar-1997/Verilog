`timescale 1ns / 1ps

module comparator_1b_tb;
    reg A,B;
    wire L,G,E;
    
    comparator_1bit UUT(.a(A),.b(B),.l(L),.g(G),.e(E));
    
    initial
        begin
            A=0;
            B=0;
            #10;
            A=0;
            B=1;
            #10;
            A=1;
            B=0;
            #10;
            A=1;
            B=1;
            #10
            $finish;
          end
endmodule
