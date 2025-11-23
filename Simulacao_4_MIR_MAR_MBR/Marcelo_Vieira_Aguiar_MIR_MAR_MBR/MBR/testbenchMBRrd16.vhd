library ieee;
use ieee.std_logic_1164.all;

entity testbenchMBRrd16 is
end testbenchMBRrd16;

architecture teste of testbenchMBRrd16 is

component MBRrd16
	port (BC: in std_logic_vector(15 downto 0);
		reset, CLK: in std_logic;
		EC: out std_logic_vector(15 downto 0));
end component;

signal sigBC: std_logic_vector(15 downto 0) := "ZZZZZZZZZZZZZZZZ";

signal sigreset, sigCLK: std_logic;

signal sigEC: std_logic_vector(15 downto 0);

begin

Componente: MBRrd16 port map (sigBC, sigreset, sigCLK, sigEC);


sigCLK <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, 
	'1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns,
	'0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns,
	'1' after 75 ns, '0' after 80 ns;

sigreset <= '0', '1' after 73 ns;


sigBC <= "1111111111111111", "0000000000000000" after 13 ns,"1111111111111111" after 23 ns, 
	"0000000000000000" after 43 ns, "0000000000000000" after 53 ns, "1111111111111111" after 63 ns;


end teste;