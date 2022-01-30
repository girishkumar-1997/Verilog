`timescale 1ns / 1ps

module equalitychecker_2bit(x,y,z);
    input [1:0] x,y;
    output z;
    
    assign z = (x[0]&y[0]&x[1]&y[1])     |
               (~x[0]&~y[0]&x[1]&y[1])   |
               (~x[0]&~y[0]&~x[1]&~y[1]) |
               (x[0]&y[0]&~x[1]&~y[1]) ;
endmodule
