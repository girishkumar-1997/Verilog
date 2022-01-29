`timescale 1ns / 1ps


module comparator_1bit(
    input a,b,
    output reg l,g,e
    );
    
   always @(a,b)
   begin
   if (a == 1 & b == 0) begin g = 1 ;l=0;e=0; end
   else if (a == 0 & b ==1) begin l = 1;g=0;e=0; end
   else if ((a == 0 & b == 0) | (a == 1 & b == 1)) begin e = 1;l=0;g=0; end
   end
endmodule
