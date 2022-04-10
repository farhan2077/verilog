module BCD_ADDER (cin,a,b,led0,led1);

input wire cin;
input [3:0]a,b;

output reg[0:6]led0,led1;

reg co;
reg[3:0]s;
reg[4:0]z;

always@ (a or b or cin)
  begin
    z= a + b + cin;
    if(z<10)
      {co,s}=z;
    else
      {co,s}=z+6;
  end

always@(s)
  begin 
    case (s) // abcdefg
      0: led0= 7'b0000001;
      1: led0= 7'b1001111;
      2: led0= 7'b0010010;
      3: led0= 7'b0000110;
      4: led0= 7'b1001100;
      5: led0= 7'b0100100;
      6: led0= 7'b0100000;
      7: led0= 7'b0001111;
      8: led0= 7'b0000000;
      9: led0= 7'b0000100;
      default: led0 = 7'bx;
    endcase

    case (co) // abcdef
      0: led1 = 7'b0000001;
      1: led1 = 7'b1001111;
      2: led1 = 7'b0010010;
      3: led1 = 7'b0000110;
      4: led1 = 7'b1001100;
      5: led1 = 7'b0100100;
      6: led1 = 7'b0100000;
      7: led1 = 7'b0001111;
      8: led1 = 7'b0000000;
      9: led1 = 7'b0000100;
      default: led1=7'bx;
    endcase
  end
  
endmodule