`timescale 1ns / 1ps

module excess3toBCD_tb;
    reg [3:0] e; wire [3:0] b; integer i;
    
    excess3_to_bcd UUT (.b(b),.e(e));
    
    always
        begin
            e = 4'b0011;
            #20
            for (i=1 ; i<10 ; i=i+1)
                begin
                    e = e+4'b0001;
                    #20;
                 end  
         end          
endmodule
