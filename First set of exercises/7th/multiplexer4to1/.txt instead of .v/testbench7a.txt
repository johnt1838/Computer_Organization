module exerc_seventh;
  reg [3:0] inputV;
   reg [1:0] svalue;
	wire out;

	mux41 mux4 (.inputV(inputV), .svalue(svalue), .out(out));

	initial begin
      $dumpfile("dump.vcd"); $dumpvars;
		svalue = 2'b00;
		inputV = 4'b0000;
		#10 inputV = 4'b0001;
		#10 inputV = 4'b0010;
		#10 inputV = 4'b0011;
		#10 inputV = 4'b0100;
		#10 inputV = 4'b0101;
		#10 inputV = 4'b0110;
		#10 inputV = 4'b0111;
		#10 inputV = 4'b1000;
		#10 inputV = 4'b1001;
		#10 inputV = 4'b1010;
		#10 inputV = 4'b1011;
		#10 inputV = 4'b1100;
		#10 inputV = 4'b1101;
		#10 inputV = 4'b1110;
		#10 inputV = 4'b1111;

		
	end

endmodule
  