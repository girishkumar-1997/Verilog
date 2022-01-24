`timescale 1ns / 1ps

module swap_nonblocking;

    integer a,b,clk;
    
    always @ (posedge clk)
        begin 
           a <= b ;
           b <= a ;
        end
        
     initial
        begin
            $monitor($time , "a=%4d, b=%d", a, b);
            a=30; b=20;
            clk = 0 ;
            forever #5 clk = ~clk ;
        end
     
      initial #10 $finish ;   
        
endmodule