module ex_fourth (output wire Z, input wire X, Y);

wire Xor_1;
  xor U0(Xor_1, X, Y);
  and U1(Z, Xor_1, X);  
  

endmodule
