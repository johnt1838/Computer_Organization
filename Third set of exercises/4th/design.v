module thirdfsm(output reg Output , input wire x, rst, clk); 
  reg [2:0] Next; 
  parameter S000 = 3'd000, S001= 3'd001, S010 = 3'd010, S011 =3'd011, S100 = 3'd100;
  always @(posedge clk or negedge rst) 
    if (rst == 0)
      begin 
        Next = S000; 
        Output = 0;
      end 
  else 
    begin 
      case(Next) 
        S000: if(x == 0)
          begin 
            Output = 0; 
            Next = S010;
          end 
        else 
          begin 
            Output = 0;
            Next = S100; 
          end 
        S001: if (x == 0)
          begin 
            Output = 0;
            Next = S011;
          end 
        else 
          begin 
            Output = 0;
            Next = S010;
          end 
        S010: if (x == 0)
          begin 
            Output =1; 
            Next = S100; 
          end 
        else 
          begin 
            Output = 1; 
            Next = S001; 
          end 
        S011: if(x == 0)
          begin 
            Output = 1; 
            Next = S001;
          end 
        else 
          begin 
            Output = 1; 
            Next = S000;
          end 
        S100: if(x == 0)
          begin 
            Output = 1;
            Next = S000;
          end 
        else 
          begin 
            Output = 1; 
            Next = S011;
          end 
        default: Next = S000;
      endcase 
    end 
endmodule 
