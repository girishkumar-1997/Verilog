`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 14:03:31
// Design Name: 
// Module Name: fulladder_tb2
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


module fulladder_tb2;
     reg a,b,cin ; wire sout,cout ;
   //fulladder_d M (.a(a),.b(b),.cin(cin),.sout(sout),.cout(cout));
   //fulladder_b M (.a(a),.b(b),.cin(cin),.sout(sout),.cout(cout));
   //fulladder_s M (.a(a),.b(b),.cin(cin),.sout(sout),.cout(cout));
   //fulladder_c M (.a(a),.b(b),.cin(cin),.sout(sout),.cout(cout));
   fulladder_HA M (.a(a),.b(b),.cin(cin),.sout(sout),.cout(cout));
    
    // insert all the inputs 
        initial 
        begin 
          a=1'b0;
          #4; a=1'b1;
          #6 $stop();
        end
       initial 
        begin 
          b=1'b0; 
          forever #2 b=~b;
          #6 $stop();
         end
       initial
        begin 
            cin=1'b0; 
            forever #1 cin=~cin;
            #8 $stop();
        end
endmodule