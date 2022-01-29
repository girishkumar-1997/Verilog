`timescale 1ns / 1ps


module DLatch_tb;
    reg d,en; wire q;
    
    level_sensitive_Dlatch UUT (.D(d),.Q(q),.En(en));
    
    initial
        begin
            d = 0;
            en = 0;
         end
      
     always 
         #10 en = ~en ;
     always
         #20 d = ~d ; 
     initial
         #100 $finish;   
         
endmodule
