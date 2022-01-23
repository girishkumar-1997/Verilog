`timescale 1ns / 1ps

module excess3_to_bcd(
    input [3:0] e ,
    output [3:0] b 
    );
    
    assign b[3] = e[3] & (e[2] |( e[1] & e[0]));
    assign b[2] = ((~ e[2]) & ((~ e[1]) | (~ e[0]))) | (e[0] & e[1] & e[2]);
    assign b[1] = e[1] ^ e[0];
    assign b[0] = ~ e[0];
          
endmodule
