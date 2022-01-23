`timescale 1ns / 1ps

module mux2to1_tb ;
    reg [1:0] d ; reg s ; wire f;
    mux2to1_d M1(.ind(d), .seld(s), .outd(f));
    mux2to1_s M2(.ins(d), .sels(s), .outs(f));
    mux2to1_b M3(.inb(d), .selb(s), .outb(f));
    
    initial
        begin
        #100 d = 2'b10 ; s = 0;
        #100 s=1;
        end
endmodule
