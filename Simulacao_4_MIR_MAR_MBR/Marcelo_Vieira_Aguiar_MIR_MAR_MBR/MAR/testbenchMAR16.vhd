library ieee;
use ieee.std_logic_1164.all;

entity testbenchMAR16 is
end testbenchMAR16;

architecture teste of testbenchMAR16 is

component MAR16
	port (E: in std_logic_vector(15 downto 0);
		reset, T3, MAR: in std_logic;
		Q: out std_logic_vector(15 downto 0));
end component;

signal sigE: std_logic_vector(15 downto 0);

signal sigreset, sigT3, sigMAR: std_logic;

signal sigQ: std_logic_vector(15 downto 0);

begin

Componente: MAR16 port map (sigE,
	sigreset, sigT3, sigMAR, sigQ);

--sigclk <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, 
--	'1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns,
--	'0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns,
--	'1' after 75 ns;

sigreset <= '0', '1' after 70 ns;

sigT3 <= '0', '1' after 5 ns, '0' after 45 ns, '1' after 65 ns;

sigMAR <= '1', '0' after 15 ns, '1' after 35 ns, '0' after 75 ns, '1' after 85 ns;

sigE <= "1111111111111111", "0000000000000000" after 10 ns,"1111111111111111" after 20 ns, 
	"0000000000000000" after 30 ns, "1111111111111111" after 40 ns, 
	"0000000000000000" after 50 ns, "1111111111111111" after 60 ns;


end teste;