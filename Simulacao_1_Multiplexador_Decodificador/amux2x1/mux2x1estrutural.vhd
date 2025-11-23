architecture estrutural of mux2x1 is
	component inv
		port (E: in bit; S: out bit);
	end component;
	component and3
		port (E1, E2, E3: in bit; S: out bit);
		end component;
	component or4
		port (E1, E2, E3, E4: in bit; S: out bit);
		end component;
signal S1, S2, S3, S4, S5, S6, S7, S8: bit;

begin
	P1: inv port map (A,S1);
	P2: inv port map (B,S2);
	P3: inv port map (C,S3);
	P4: inv port map (C,S4);
	P5: and3 port map (S1,B,C,S5);
	P6: and3 port map (A,S2,S3,S6);
	P7: and3 port map (A,B,S4,S7);
	P8: and3 port map (A,B,C,S8);
	P9: or4 port map (S5,S6,S7,S8,S);
end estrutural;