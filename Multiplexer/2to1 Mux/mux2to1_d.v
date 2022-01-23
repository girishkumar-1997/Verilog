`timescale 1ns / 1ps


module mux2to1_d(ind,seld,outd);
    input [1:0] ind ; input seld;
    output outd ;
    
    assign outd = (ind[0]&(~seld))|(ind[1]&(seld));
endmodule
