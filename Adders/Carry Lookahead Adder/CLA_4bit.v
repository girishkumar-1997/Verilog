`timescale 1ns / 1ps


module CLA_4bit(sum,cout,a,b,cin);
    input [3:0] a,b ; input cin ;
    output [3:0] sum; output [4:0] cout;
    
    wire [3:0] p,g;
    
    assign g       = a[3:0] & b[3:0] ;
    assign p       = a[3:0] ^ b[3:0] ;
    assign cout[0] = cin;
    assign cout[1] = g[0] | (p[0] & cout[0]);
    assign cout[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cout[0]);
    assign cout[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0])|(p[2] & p[1] & p[0] & cin);
    assign cout[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1])|(p[3] & p[2] & p[1] & g[0])|(p[3] & p[2] & p[1] & p[0] & cin);
    assign sum     = p[3:0] ^ cout[3:0];
endmodule
