module NAME_INITIAL_v1 (x,y,z,led0,led1,led2);

input [1:0]x,y,z;

output reg[0:6]led0,led1,led2;

always@(x or y or z)
  begin 
    case (x) // abcdefg
      0: led2= 7'b0111000;  // character F
      default: led2 = 7'bx;
    endcase

    case (y)
      1: led1 = 7'b0000000;  // character B
      default: led1=7'bx;
    endcase
    
    case (z)
      2: led0 = 7'b0001000;  // character A
      default: led0=7'bx;
    endcase
  end
  
endmodule