library ieee;
use ieee.std_logic_1164.all;

entity testbenchreg16 is
end testbenchreg16;

architecture teste of testbenchreg16 is

component reg16
	port (D: in std_logic_vector(15 downto 0);
		reset, clk, OE1, OE2: in std_logic;
		AQ: out std_logic_vector(15 downto 0);
		BQ: out std_logic_vector(15 downto 0));
end component;

signal sigD: std_logic_vector(15 downto 0);

signal sigreset, sigclk, sigOE1, sigOE2: std_logic;

signal sigAQ: std_logic_vector(15 downto 0);

signal sigBQ: std_logic_vector(15 downto 0);

begin

Componente: reg16 port map (sigD,
	sigreset, sigclk, sigOE1, sigOE2,
	sigAQ,
	sigBQ);

sigclk <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, 
	'1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns,
	'0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns,
	'1' after 75 ns;

sigreset <= '0', '1' after 70 ns;

sigOE1 <= '0', '1' after 8 ns, '0' after 56 ns, '1' after 63 ns, '0' after 76 ns;

sigOE2 <= '1', '0' after 22 ns, '1' after 31 ns, '0' after 34 ns, '1' after 50 ns, '0' after 56 ns, '1' after 63 ns, '0' after 76 ns;

sigD <= "1111111111111111", "0000000000000000" after 12 ns,"1111111111111111" after 21 ns, 
	"0000000000000000" after 36 ns, "1111111111111111" after 38 ns;


end teste;