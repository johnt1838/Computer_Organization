module test;

reg CLK=0;
reg D=0;
wire Q;


  dff8 DFF( .CLK(CLK), .D(D), .Q(Q));

always begin 
  CLK = ~CLK; 
  #10;
end

  initial
    begin 
  
  $dumpfile("dump.vcd");
      $dumpvars(1);
      
  
  
  
  D = 1; #40;
  D = 0; #40;
  $finish;
end
endmodule