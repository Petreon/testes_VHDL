library ieee;
use ieee.std_logic_1164.all;

entity ffDnegativetransition is
	port(d: in std_logic; reset: in std_logic;
	clk: in std_logic; 
	q: out std_logic; nq: out std_logic);
end ffDnegativetransition;

architecture algoritmica of ffDnegativetransition is

begin process (reset, clk, d)
	begin
		if reset = '1' then
			q <= '0';
			nq <= '1';
		elsif clk = '0' and clk'event then
			q <= d;
			nq <= not (d);
		end if;
	end process;
end algoritmica;