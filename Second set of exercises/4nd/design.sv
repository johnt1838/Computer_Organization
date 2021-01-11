// Code your design here
module dff (
    input clk,
    input  d,
  	input reset ,
    output reg  q
);
   always@(posedge reset or posedge clk) begin
        if(reset)
            q<=1'b0;
        else
            q<=d;
    end
endmodule