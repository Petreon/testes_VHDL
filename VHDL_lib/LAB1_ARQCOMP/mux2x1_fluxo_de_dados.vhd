architecture fluxo_de_dados of mux2x1 is
begin
	S <= (A and (not C)) or (B and C);
end fluxo_de_dados;
