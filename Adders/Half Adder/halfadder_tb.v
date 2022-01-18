`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 11:22:27
// Design Name: 
// Module Name: halfadder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module halfadder_tb;

    reg a,b ; wire sout,cout ;
    //halfadder_d M (.a(a),.b(b),.sout(sout),.cout(cout));
    //halfadder_b M(.a(a),.b(b),.sout(sout),.cout(cout));
    //halfadder_b1 M (.a(a),.b(b),.sout(sout),.cout(cout)); 
    halfadder_s M (.a(a),.b(b),.sout(sout),.cout(cout));
    
   // insert all the inputs 
      initial 
      begin 
        a=1'b0;
        #2; a=1'b1;
        #4 $stop();
      end
     initial 
      begin 
        b=1'b0; 
        forever #1 b=~b;
        #4 $stop();
       end
endmodule


