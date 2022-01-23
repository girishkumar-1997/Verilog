`timescale 1ns / 1ps


module alu_operations (
   input [7:0] a,b ,  
   input [3:0] op,
   output reg [7:0] alu_op  
   );

always @(a,b,op)
begin
 case (op)
   4'b0000 : begin 
                alu_op = a + b; 
                $display("Addition"); 
             end
   4'b0001 : begin 
                alu_op = a - b; 
                $display("Subtraction"); 
             end
   4'b0010 : begin 
                alu_op = a * b;
                $display("Multiplication"); 
             end
   4'b0011 : begin 
                alu_op = a / b; 
                $display("Division"); 
             end
   4'b0100 : begin 
                alu_op = a % b; 
                $display("Remainder");
             end
   4'b0101 : begin  
                alu_op = a & b; 
                $display("Bit-wise AND"); 
             end
   4'b0110 : begin 
                alu_op = a | b; 
                $display("Bit-wise OR"); 
             end
   4'b0111 : begin 
                alu_op = a && b; 
                $display("Logical AND"); 
             end
   4'b1000 : begin 
                alu_op = a || b; 
                $display("Logical OR "); 
             end
   4'b1001 : begin 
                alu_op = a ^ b; 
                $display("Bit-wise XOR"); 
             end
   4'b1010 : begin 
                alu_op = ~ a; 
                $display("Bit-wise NOT"); 
             end
   4'b1011 : begin 
                alu_op = ! a; 
                $display("Logical Negation"); 
             end
   4'b1100 : begin
                alu_op = a >> 1; 
                $display("Right Shift"); 
             end
   4'b1101 : begin 
                alu_op = a << 1 ; 
                $display("Left Shift"); 
             end
   4'b1110 : begin 
                alu_op = a + 1; 
                $display("Increase one bit"); 
             end
   4'b1111 : begin 
                alu_op = a - 1; 
                $display("Decrease by one bit");
              end
   default:alu_op = 8'bX;
 endcase
end
endmodule
