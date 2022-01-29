`timescale 1ns / 1ps

module mux4to1_s(
    input [3:0] in_s,
    input [1:0] sel_s,
    output out_s
    );
    
    wire t1,t2,t3,t4,t5,t6;
    
    not G1 (t1,sel_s[0]);
    not G2 (t2,sel_s[1]);
    and G3 (t3,in_s[0],t2,t1);
    and G4 (t4,in_s[1],t2,sel_s[0]);
    and G5 (t5,in_s[2],sel_s[1],t1);
    and G6 (t6,in_s[3],sel_s[1],sel_s[0]);
    or  G7 (out_s,t3,t4,t5,t6);
    
    
endmodule
