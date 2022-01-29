`timescale 1ns / 1ps


module halfadder_tb1;

    reg a,b ; wire sout,cout ;
    //halfadder_d M (.a(a),.b(b),.sout(sout),.cout(cout));
    //halfadder_b M(.a(a),.b(b),.sout(sout),.cout(cout));
    //halfadder_b1 M (.a(a),.b(b),.sout(sout),.cout(cout)); 
    halfadder_s M (.a(a),.b(b),.sout(sout),.cout(cout));

    reg i;
       initial 
       begin
         // Inser the inputs
        a = 1'b0; b=1'b0;
        #100;
        for (i= 0; i < 4; i=+1)
            begin
                {a,b} = {a,b} + 1'b1;
                #20;
            end
        end     
endmodule
