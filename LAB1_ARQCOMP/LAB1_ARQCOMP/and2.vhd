entity and2 is
	port(E1, E2: in bit; S: out bit);
end and2;
architecture fluxodedados of and2 is
begin
	S <= E1 and E2;
end fluxodedados;
