library ieee;
use ieee.std_logic_1164.all;

entity testbenchreg16MaisUm is
end testbenchreg16MaisUm;

architecture teste of testbenchreg16MaisUm is

component reg16MaisUm
	port (D: in std_logic_vector (15 downto 0);
		clk, reset, OE1, OE2: in std_logic; 
		AQ: out std_logic_vector (15 downto 0);
		BQ: out std_logic_vector (15 downto 0));
end component;

signal sigD: std_logic_vector (15 downto 0);
signal sigclk, sigreset, sigOE1, sigOE2: std_logic;
signal sigAQ, sigBQ: std_logic_vector (15 downto 0);

begin

Componente: reg16MaisUm port map (sigD, sigclk, sigreset, sigOE1, sigOE2, sigAQ, sigBQ);

sigclk <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, 
	'1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns,
	'0' after 50 ns;

sigD <= "1111111111111111", "1111000000000000" after 12 ns, "1111111111111111" after 21 ns, 
		"1111000000000000" after 36 ns, "1111111111111111" after 38 ns;

sigreset <= '0', '1' after 47 ns;

sigOE1 <= '0', '1' after 8 ns,'0' after 65 ns;

sigOE2 <= '1', '0' after 22 ns, '1' after 58 ns, '0' after 66 ns;
end teste;