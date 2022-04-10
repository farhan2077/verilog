module FA_tb;

reg cin, ain, bin;
wire sout, cout;

initial
begin
#0    cin = 0;    ain = 0;    bin = 0;
#10   cin = 0;    ain = 0;    bin = 1;
#10   cin = 0;    ain = 1;    bin = 0;
#10   cin = 0;    ain = 1;    bin = 1;
#10   cin = 1;    ain = 0;    bin = 0;
#10   cin = 1;    ain = 0;    bin = 1;
#10   cin = 1;    ain = 1;    bin = 0;
#10   cin = 1;    ain = 1;    bin = 1;
end 

FA FA_ins(.cin(cin), .ain(ain), .bin(bin), .sout(sout), .cout(cout));
// FA(cin, ain, bin, sout, cout)

endmodule