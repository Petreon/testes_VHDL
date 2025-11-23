architecture estrutural of mux2x1 is 
	component and2 
		port (E1, E2: in bit; S: out bit);
	end component;
	component or2
		port (E1, E2: in bit; S: out bit);
	end component;
	component inv
		port (E: in bit; S: out bit);
	end component;
	signal S1,S2,S3: bit;
begin
	P1: and2 port map(A,S1,S2);
	P2: inv port map(C,S1);
	P3: and2 port map(C,B,S3);
	P4: or2 port map(S2,S3,S);
end estrutural;
