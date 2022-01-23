`timescale 1ns / 1ps


module graytobinary_tb;
    reg [3:0] g; wire [3:0] b; integer i;
    
    graytobinary_d UUT (.b(b),.g(g));
    
    initial
        begin
            g = 4'b0;
            #20
            for (i=0 ; i<10 ; i=+1)
                begin
                    g = g+1;
                    #20;
                 end  
         end          
endmodule
