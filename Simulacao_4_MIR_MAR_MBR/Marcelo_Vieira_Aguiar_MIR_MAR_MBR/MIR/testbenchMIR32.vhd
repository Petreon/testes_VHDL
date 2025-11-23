library ieee;
use ieee.std_logic_1164.all;

entity testbenchMIR32 is
end testbenchMIR32;

architecture teste of testbenchMIR32 is

component MIR32
	port (E: in std_logic_vector(31 downto 0);
		reset, clk: in std_logic;
		Q: out std_logic_vector(31 downto 0));
end component;

signal sigE: std_logic_vector(31 downto 0);

signal sigreset, sigclk: std_logic;

signal sigQ: std_logic_vector(31 downto 0);


begin

Componente: MIR32 port map (sigE,
	sigreset, sigclk,sigQ);

sigclk <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, 
	'1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns,
	'0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns,
	'1' after 75 ns, '0' after 80 ns, '1' after 85 ns, '0' after 90 ns;

sigreset <= '0', '1' after 72 ns;

sigE <= "11111111111111111111111111111111", "00000000000000000000000000000000" after 12 ns,
	"11111111111111111111111111111111" after 21 ns, "00000000000000000000000000000000" after 36 ns, 
	"11111111111111111111111111111111" after 38 ns, "00000000000000000000000000000000" after 50 ns,
	"11111111111111111111111111111111" after 62 ns;


end teste;