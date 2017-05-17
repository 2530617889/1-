module FA(An, Bn, Cin, Sum, Cout);
	input An, Bn, Cin;
	output Sum, Cout;
	reg Cout;
	reg T1, T2, T3;
	wire S1;
	xor X1(S1, An, Bn);
	always @(An or Bn or Cin)
		begin
			T1=An&Cin;
			T2=Bn&Cin;
			T3=An&Bn;
			Cout=(T1|T2)|T3;
		end
	assign Sum=S1^Cin;
endmodule
