architecture algoritmica of desloc16 is

begin
	process(E, S0, S1)
	begin
		if (S1 = '0') and (S0 = '0') then
			S <= E;
		elsif (S1 = '0') and (S0 = '1') then
			S <= E srl 1; --desloca 1 bit para direita
		elsif (S1 = '1') and (S0 = '0') then
			S <= E sll 1; -- desloca 1 bit para esquerda
		else
			S <= E;
		end if;
		
	end process;
end algoritmica;