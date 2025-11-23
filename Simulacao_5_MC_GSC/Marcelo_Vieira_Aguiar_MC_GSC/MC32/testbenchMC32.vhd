library ieee;
use ieee.std_logic_1164.all;

entity testbenchMC32 is
end testbenchMC32;

architecture teste of testbenchMC32 is

component MC32
	port (E: in std_logic_vector(7 downto 0);
		Q: out std_logic_vector(31 downto 0));
end component;

signal sigE: std_logic_vector(7 downto 0);
signal sigQ: std_logic_vector(31 downto 0);

begin

Componente: MC32 port map (sigE, sigQ);

sigE <= "00000000", "00000001" after 5 ns, "00000010" after 10 ns, "00000011" after 15 ns,
	"00000100" after 20 ns, "00000101" after 25 ns, "00000110" after 30 ns, "00000111" after 35 ns,
	"00001000" after 40 ns, "00001001" after 45 ns, "00001010" after 50 ns, "00001011" after 55 ns,
	"00001100" after 60 ns, "00001101" after 65 ns, "00001110" after 70 ns; 


end teste;