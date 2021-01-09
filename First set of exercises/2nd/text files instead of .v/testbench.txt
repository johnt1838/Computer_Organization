module ex_sectb;
wire t_z;
reg t_x, t_y;

  ex_sec my_top(.X(t_x), .Y(t_y), .Z(t_z));
  
initial 
begin
 
  $monitor(t_x, t_y, t_z);
  $dumpfile("dump.vcd");
  $dumpvars;
  
 t_x =0;
 t_y =0;
  
  #5
  t_x =1;
  t_y =0;
  
  #5
  t_x =0;
  t_y =1;
  
  #5
  t_x =1;
  t_y =1;

end
endmodule