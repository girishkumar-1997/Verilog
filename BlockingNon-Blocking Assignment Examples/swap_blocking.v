`timescale 1ns / 1ps

module swap_blocking;

    integer a,b,ta,tb,clk;
    
    always @ (posedge clk)
        begin 
            ta = a ;
            tb = b ;
            a = tb ;
            b = ta ;
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
