`timescale 1ns / 1ps

module blocking_assignment;
    integer a,b,c,d ;
   
   always @(a,b,c,d)
    repeat(4)
        begin
         #5 a = b + c ;
         #5 d = a - 3 ;
         #5 b = d + 10 ;
         #5 c = c + 1 ; 
        end
    
    initial
            begin
                $monitor($time , "a=%4d, b=%d, c=%d, d=%d", a, b, c, d);
                a=30; b=20; c=15; d=5;
                #100 $finish;
            end
endmodule
