// Code your design here
module dff8 (
    input clk,
    input [7:0] d,
    output reg [7:0] q
);
    always@(posedge clk)
        q<=d;
endmodule