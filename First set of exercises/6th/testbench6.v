module exerfifth;
  reg [3:0] a;
  wire [4:0] out;

  encoder8421 my_top(.X(a), .Z(out));
  
initial 
begin
 $dumpfile("dump.vcd");
  $dumpvars;
  
  a = 4'b0101;
  
  #5 
  a = 4'b1010;
  #5
  a = 4'b1111;
  
   end
endmodule
  