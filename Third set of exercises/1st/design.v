module firstfsm(input clk,input areset, input in, output out);
  parameter A = 0, B= 1;
  reg state, next; 
  
  always@(*) 
  begin 
    case(in) 
      1: next <= state;
      0: next <= ~state;
    endcase 
  end
  
  always @(posedge clk, posedge areset) 
  begin 
    if (areset ) 
    begin 
      state = B; 
    end 
    else begin 
      state <= next; 
    end 
  end
  
  assign out = state; 
endmodule 