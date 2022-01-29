`timescale 1ns / 1ps


module comparator_2bit_tb;
    reg [1:0] a,b; wire l,g,e;
    
    comparator_2bit UUT (.a(a),.b(b),.l(l),.g(g),.e(e));
    
    initial
        begin
           repeat(50) 
            begin
              a = $random; //apply random stimulus
              b = $random;
              #10;
            end
          end
            
endmodule
