module exerc_seventh;

reg Din;
reg S0;
reg S1;
reg S2;


wire y0,y1,y2,y3,y4,y5,y6,y7;


  demux18 mux2 ( .Din(Din), .S0(S0), .S1(S1), .S2(S2), .y0(y0), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5), .y6(y6), .y7(y7));
  
initial begin
  $dumpfile("dump.vcd"); 
   $dumpvars;
  

Din = 0;
S0 = 0;
S1 = 0;
S2 = 0;

#10;
Din = 1;
S0 = 0;
S1 = 1;
S2 = 0;

#10;

end
endmodule