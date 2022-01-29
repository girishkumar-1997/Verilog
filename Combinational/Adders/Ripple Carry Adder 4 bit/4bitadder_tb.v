`timescale 1ns / 1ps


module adder4bit_tb;
    reg [3:0] A,B; reg Cin;
    wire [3:0] Sum;
    wire Cout;

    ripplecarry_adder4bit r (.a(A),.b(B),.cin(Cin),.sum(Sum),.cout(Cout));  

    initial 
    begin
        A   = 4'b0;
        B   = 4'b0;
        Cin = 4'b0;
        
       #100; // Wait 100 ns for global reset to finish
         A   = 4'b1010;
         B   = 4'b0110;
         Cin = 4'b0;
       
        #20;
          A   = 4'b1101;
          B   = 4'b1110;
          Cin = 4'b1;               
      end
endmodule
