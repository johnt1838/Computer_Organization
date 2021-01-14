module thirdfsm(output reg Output , input wire in, rst, clk); 
  reg [1:0] Next; 
  parameter A = 2'd0, B = 2'd1, C = 2'd2, D = 2'd3;
  always @(posedge clk or negedge rst) 
    if (rst == 0)
      begin 
        Next = A; 
        Output = 0;
      end 
  else 
    begin 
      case(Next) 
        A: if(in == 0)
          begin 
            Output = 0; 
            Next = A;
          end 
        else 
          begin 
            Output = 0;
            Next = B; 
          end 
        B: if (in == 0)
          begin 
            Output = 0;
            Next = C;
          end 
        else 
          begin 
            Output = 0;
            Next = B;
          end 
        C: if (in == 0)
          begin 
            Output =1; 
            Next = A; 
          end 
        else 
          begin 
            Output = 1; 
            Next = D; 
          end 
        D: if(in == 0)
          begin 
            Output = 1; 
            Next = C;
          end 
        else 
          begin 
            Output = 1; 
            Next = B;
          end 
        default: Next = A;
      endcase 
    end 
endmodule 

            