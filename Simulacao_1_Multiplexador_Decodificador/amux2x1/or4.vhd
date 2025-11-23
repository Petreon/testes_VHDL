entity or4 is
	port (E1,E2,E3,E4: in bit; S: out bit);
end or4;

architecture fluxodedados of or4 is
	begin
	S <= E1 or E2 or E3 or E4;
end fluxodedados;