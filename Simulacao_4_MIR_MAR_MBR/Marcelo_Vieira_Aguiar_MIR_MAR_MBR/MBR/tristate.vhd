library ieee;
use ieee.std_logic_1164.all;

entity tristate is
	port (E: in std_logic;
		enable: in std_logic; 
		Q: out std_logic);
		
end tristate;

architecture algoritmica of tristate is

begin
	process(E, enable)
	begin
		if enable = '1' then
			Q <= E;
		else
			Q <= 'Z';
		end if;		
	end process;
end algoritmica;