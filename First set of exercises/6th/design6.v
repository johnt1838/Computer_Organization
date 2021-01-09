module encoder8421(output wire[4:0] Z, input wire [3:0] X);
  
  wire not_A, not_B, not_C;
  wire And_1, And_2, And_3, And_4, And_5, And_6, And_7;
  wire w, x, y, z, e; 
  
  not (not_A, X[0]);
  not (not_B, X[1]);
  not (not_C, X[2]);
  and (And_1, X[0], X[1]);
  and (And_2, X[0], X[3]);
  and (And_3, X[0], not_B, not_C);
  and (And_4, not_A, X[1]);
  and (And_5, X[1], X[2]);
  and (And_6, X[0], X[1], not_C);
  and (And_7, not_A, X[2]);
  or (w, And_1, And_2);
  assign x= And_3;
  or (y, And_4, And_5);
  or (z, And_6, And_7);
  assign e= X[3];
  
endmodule
  