module demux18(Din, S0, S1, S2, y0, y1, y2, y3, y4, y5 , y6, y7);
 input Din,S0,S1,S2;
  output y0,y1,y2,y3,y4,y5,y6,y7;
  
  assign y0=(Din & ~S2 & ~S1 &~S0);
  assign y1=(Din & ~S2 & ~S1 &S0);
  assign y2=(Din & ~S2 & S1 &~S0);
  assign y3=(Din & ~S2 & S1 &S0);
  assign y4=(Din & S2 & ~S1 &~S0);
  assign y5=(Din & S2 & ~S1 &S0);
  assign y6=(Din & S2 & S1 &~S0);
  assign y7=(Din & S2 & S1 &S0);
     
endmodule
