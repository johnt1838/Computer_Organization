`timescale 1ns/1ps

module test;
  reg [7:0] A,B;
  wire [7:0] Sum;
  wire Cout;
  
  ripple_carry DUT (.Sum(Sum), .Cout(Cout), .A(A), .B(B));
  
initial 
  begin 
    $dumpfile("dump.vcd");
    $dumpvars;
    
   A=8'b00000001; B=8'b00000001;

#2 A=8'b00000001; B=8'b00000001;

#2 A=8'b00000010; B=8'b00000011;

#2 A=8'b10000001; B=8'b10000001;

#2 A=8'b00011001; B=8'b00110001;

#2 A=8'b00000011; B=8'b00000011;

#2 A=8'b11111111; B=8'b00000001;

#2 A=8'b11111111; B=8'b00000000;

#2 A=8'b11111111; B=8'b11111111;
  end
endmodule
 