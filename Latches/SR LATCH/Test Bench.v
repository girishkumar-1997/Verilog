`timescale 1ns / 1ps


module SRLatch_tb;
    reg s,r;
    wire q,q_not;
    
    SRLatch_d UUT (.S(s), .R(r), .Q(q), .Qbar(q_not));
    
    initial
        begin
            s = 1;
            r = 1;
        end
     always
        begin
            #10 s = ~s;
            #20 r = ~r;
        end
     initial
        #120 $finish ;
        
endmodule
