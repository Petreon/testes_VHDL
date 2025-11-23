entity or2 is
	port(E1, E2: in bit; S: out bit);
end or2;
architecture fluxodedados of or2 is
begin
	S <= E1 or E2;
end fluxodedados;
