entity inv is
	port(E: in bit; S: out bit);
end inv;
architecture fluxodedados of inv is
begin
	S <= not E;
end fluxodedados;
