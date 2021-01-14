module secondfsm( input clk, input areset, input j, input k, output out);
  parameter OFF = 0, ON = 1; 
  reg state, next; 
  
  always @(*) 
  begin 
    case(state) 
      OFF: next=j; 
      ON: next =~k;
    endcase 
  end
  
  always@(posedge clk, posedge areset) 
  begin 
    if(areset) begin 
      state = OFF ; 
    end 
    else begin 
      state = next ; 
    end 
  end 
  
  assign out = (state == ON);
endmodule 
