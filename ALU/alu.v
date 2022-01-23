`timescale 1ns / 1ps

module alu(
   input [7:0] a,b ,  
   input [2:0] operation,
   output reg [7:0] alu_op  
   );

    parameter add = 3'b000, sub = 3'b001, mul = 3'b010, div = 3'b011, rem =3'b100;
            
always @(*)
begin
 case (operation)
   add     :  alu_op = a + b; 
   sub     :  alu_op = a - b;  
   mul     :  alu_op = a * b; 
   div     :  alu_op = a / b; 
   rem     :  alu_op = a % b; 
   default :alu_op = 8'bX;
 endcase
end
endmodule
