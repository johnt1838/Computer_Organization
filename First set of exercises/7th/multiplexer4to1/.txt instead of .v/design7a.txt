module mux41 (inputV, svalue, out);

	input [3:0] inputV;
	input [1:0] svalue;
  
	output out;

	assign out = inputV[svalue[1] * 2 + svalue[0]];
  
endmodule
  
  
  
  