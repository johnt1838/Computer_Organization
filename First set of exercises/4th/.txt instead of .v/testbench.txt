module ex_thirdtb;
wire t_z;
reg t_x, t_y;

  ex_fourth my_top(.X(t_x), .Y(t_y), .Z(t_z));
  
initial 
begin
 
  $monitor(t_x, t_y, t_z);
  $dumpfile("dump.vcd");
  $dumpvars;
  
  
  t_x =2'b0;
  t_y =2'b0;
  
  #2
  t_x =2'b0;
  t_y =2'b1;
  
  #2
  t_x =2'b1;
  t_y =2'b0;
  
  #2
  t_x =2'b1;
  t_y =2'b1;

end
endmodule
 