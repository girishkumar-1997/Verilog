`timescale 1ns / 1ps

module muxtest ;
    reg [15:0] A ; reg [3:0] S ; wire F ;

    mux16to1 M(.in(A) , .sel(S) , .out(F));

    initial
        begin
        //$dumpfile("mux16to1.vcd");
        //$dumpvars(0,muxtest);
        //$monitor($time,"A=%h, S=%h, F=%b", A,S,F);
        #5 A=16'h3f0a ; S=4'h0;
        #5 S=4'h1;
        #5 S=4'h2;
        #5 S=4'h3;
        #5 S=4'h4;
        #5 S=4'h5;
        #5 S=4'h6;
        #5 S=4'h7;
        #5 S=4'h8;
        #5 S=4'h9;
        #5 S=4'hA;
        #5 S=4'hB;
        #5 S=4'hC;
        #5 S=4'hD;
        #5 S=4'hE;
        #5 S=4'hF;
        #5 $finish ;
       end       
endmodule
