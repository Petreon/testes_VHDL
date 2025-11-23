--library ieee;
--use ieee.std_logic_1164.all;

entity desloc16 is
	port (E: in bit_vector (15 downto 0);
		S0, S1: in bit; 
		S: out bit_vector (15 downto 0));
end desloc16;