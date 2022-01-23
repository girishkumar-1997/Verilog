`timescale 1ns / 1ps

module mux4to1_d(in_d, sel_d, out_d );
    input [3:0] in_d ;
    input [1:0] sel_d;
    output out_d;
    
    assign out_d = (in_d[0]&(~sel_d[1])&(~sel_d[0])) | (in_d[1]&(~sel_d[1])&(sel_d[0])) | (in_d[2]&(sel_d[1])&(~sel_d[0])) | (in_d[3]&(sel_d[1])&(sel_d[0]));
endmodule
