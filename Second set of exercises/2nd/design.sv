module dff8( output reg Q, input wire D, CLK);
 reg t1,t2,t3,t4,t5,t6;
  
  always@(posedge CLK)
    begin
      
      
      t1 <= D;
      t2 <= t1;
      t3 <= t2;
      t4 <= t3;
      t5 <= t4;
      t6 <= t5;
       Q <= t6;
      

    end
endmodule