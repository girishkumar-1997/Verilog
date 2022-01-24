`timescale 1ns / 1ps

module counter_nbit_parameterized(clr,clk,count);
    
    parameter N =3;
    input clr,clk;
    output reg [N:0] count;
    
   
    always @(negedge clk)
        if(clr) count <= 0;
        else    count <= count+1;
endmodule
