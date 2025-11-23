library ieee;
use ieee.std_logic_1164.all;

entity reg16MaisUm is
	port (D: in std_logic_vector (15 downto 0);
		clk, reset, OE1, OE2: in std_logic; 
		AQ: out std_logic_vector (15 downto 0);
		BQ: out std_logic_vector (15 downto 0));
end reg16MaisUm;

architecture algoritmica of reg16MaisUm is

begin
	process(D, clk, reset, OE1, OE2)
	begin
		if OE1 = '1' and OE2 = '0' then
			AQ <= "0000000000000001";
			BQ <= "ZZZZZZZZZZZZZZZZ";
		elsif OE1 = '0' and OE2 = '1' then
			AQ <= "ZZZZZZZZZZZZZZZZ";
			BQ <= "0000000000000001";
		elsif OE1 = '1' and OE1 = '1' then
			AQ <= "0000000000000001";
			BQ <= "0000000000000001";
		else
			AQ <= "ZZZZZZZZZZZZZZZZ";
			BQ <= "ZZZZZZZZZZZZZZZZ";
		end if;
	end process;
end algoritmica;