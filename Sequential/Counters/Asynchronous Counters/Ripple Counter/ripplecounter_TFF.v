`timescale 1ns / 1ps

module ripplecounter_TFF(clk,clr,count);
    input clk,clr;
    output [2:0] count;

    TFF_UDP F0(count[0],clk,clr);
    TFF_UDP F1(count[1],count[0],clr);
    TFF_UDP F2(count[2],count[1],clr);
//    TFF_UDP F3(count[3],count[2],clr);
//    TFF_UDP F4(count[4],count[3],clr);
//    TFF_UDP F5(count[5],count[4],clr);
            
endmodule
