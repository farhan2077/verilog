module bcdadder_tb;

reg cin;
reg[3:0]a,b;

wire[3:0] led0, led1;

initial
begin
#0    cin=0;    a=1;    b=2;
#10   cin=1;    a=2;    b=3;
#10   cin=1;    a=9;    b=9;
end

bcdadder bcdadins(.cin(cin), .a(a), .b(b), .led0(led0), .led1(led1));

endmodule