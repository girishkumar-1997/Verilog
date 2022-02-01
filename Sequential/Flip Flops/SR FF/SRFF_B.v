`timescale 1ns / 1ps

module SRFF_B(
    input CLK,S,R,CLR,
    output reg Q,QN
       );
    
    always @(posedge CLK)
        begin
            if(CLR == 1) 
                begin
                    Q<= 0;
                    QN <= ~Q;
                end
             else 
//                begin
//                    Q <= S | (~R & Q);
//                    QN <= ~Q;
//                end
                  begin
                    if (S != R)
                        begin
                            Q <= S;
                            QN <= R;
                        end 
                    else if (S == 1 && R == 1) 
                        begin 
                            Q <= 1'bZ; 
                            QN <= 1'bZ; 
                        end 
                  end
          end                              
endmodule
