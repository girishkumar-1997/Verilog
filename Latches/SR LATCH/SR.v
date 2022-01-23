`timescale 1ns / 1ps


module SRLatch_d(
    input S,R , output Q,Qbar
    );
    
    assign Q    = ~(R & Qbar);
    assign Qbar = ~(S & Q);
    
endmodule
