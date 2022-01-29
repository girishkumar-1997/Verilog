`timescale 1ns / 1ps



module BCDtoExcess3_cond(
    input [3:0] b,
    output [3:0] e
    );
    
    assign e = (b==0) ? 3 : 
               (b==1) ? 4 :
               (b==2) ? 5 :
               (b==3) ? 6 :
               (b==4) ? 7 :
               (b==5) ? 8 :
               (b==6) ? 9 :
               (b==7) ? 10 :
               (b==8) ? 11 :
               (b==9) ? 12 :
               4'bx ;   

endmodule
