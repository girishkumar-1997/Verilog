`timescale 1ns / 1ps

module nbitcomparator_tb;
    reg [16:0] A,B ;
    wire lt,gt,eq;
    
    nbit_comparator UUT (.A(A),.B(B),.lt(lt),.gt(gt),.eq(eq));
    
    initial
        begin 
        A = 0;
        B = 0;
        #50;
        A = 11;
        B = 10;
        #50;
        A = 8;
        B = 11;
        #50;
        A = 11;
        B = 11;
        end
endmodule
