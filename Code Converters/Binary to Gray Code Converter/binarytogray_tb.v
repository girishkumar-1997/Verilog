`timescale 1ns / 1ps

module binarytogray_tb;
    reg [3:0] b ; wire [3:0] g; integer i;
    
    binarytogray_d UUT (.b(b),.g(g));
    
    initial
        begin
            b = 4'b0;
            #20
            for (i=0 ; i<10 ; i=+1)
                begin
                    b = b+1;
                    #20;
                 end  
         end            
          
endmodule
