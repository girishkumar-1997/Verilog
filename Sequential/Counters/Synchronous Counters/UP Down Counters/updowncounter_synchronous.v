`timescale 1ns / 1ps

module updowncounter_synchronous(
    input mode,clr,ld,clk,
    input [7:0] din,
    output reg [7:0] count
    );
    
    always @(posedge clk)
        if(ld)          count <= din ;
        else if(clr)    count <= 0 ;
        else if(mode)   count <= count+1 ;
        else            count <= count-1 ; 
endmodule
