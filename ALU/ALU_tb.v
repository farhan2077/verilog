module ALU_tb;

reg [2:0]S;
reg [3:0]A, B;

wire [3:0]F;

initial
begin
#0    S = 0;    A = 4'b1100;    B = 4'b0011;
#10   S = 1;    A = 4'b1100;    B = 4'b0011;
#10   S = 2;    A = 4'b1100;    B = 4'b0011;
#10   S = 3;    A = 4'b1100;    B = 4'b0011;
#10   S = 4;    A = 4'b1100;    B = 4'b0011;
#10   S = 5;    A = 4'b1100;    B = 4'b0011;
#10   S = 6;    A = 4'b1100;    B = 4'b0011;
#10   S = 7;    A = 4'b1100;    B = 4'b0011;
end

ALU ALU_ins(.S(S), .A(A), .B(B), .F(F));

endmodule