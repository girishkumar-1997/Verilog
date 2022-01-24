`timescale 1ns / 1ps

module nonblocking_assignment;
     integer a,b,c,d ;
     
     initial
        begin
            $monitor($time , "a=%4d, b=%d, c=%d, d=%d", a, b, c, d);
            a=30; b=20; c=15; d=5;
        end
  
     initial
       begin
         a <= #5 b + c ;
         d <= #5 a - 3 ;
         b <= #5 d + 10 ;
         c <= #5 c + 1 ; 
       end
endmodule

