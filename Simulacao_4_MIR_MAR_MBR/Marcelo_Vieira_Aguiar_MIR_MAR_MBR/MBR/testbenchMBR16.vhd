library ieee;
use ieee.std_logic_1164.all;

entity testbenchMBR16 is
end testbenchMBR16;

architecture teste of testbenchMBR16 is

component MBR16
	port (SD: in std_logic_vector(15 downto 0);
		reset, T4, MBR, WR, RD: in std_logic;
		ED: out std_logic_vector(15 downto 0);
		BD: inout std_logic_vector(15 downto 0));
end component;

signal sigSD: std_logic_vector(15 downto 0);

signal sigreset, sigT4, sigMBR, sigWR, sigRD: std_logic;

signal sigED, sigBD: std_logic_vector(15 downto 0);

begin

Componente: MBR16 port map (sigSD, sigreset, sigT4, 
		sigMBR, sigWR, sigRD, sigED,sigBD);


sigT4 <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, 
	'1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns,
	'0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns,
	'1' after 75 ns, '0' after 80 ns;

sigreset <= '1', '0' after 5 ns, '1' after 73 ns;


sigSD <= "1111111111111111","1000000000000000" after 40 ns, "1111111111111111" after 46 ns;

sigWR <= '1', '0' after 20 ns, '1' after 53 ns, '0' after 66 ns, '1' after 72 ns;

sigMBR <= '1', '0' after 20 ns, '1' after 41 ns, '0' after 46 ns;


sigRD <= '0', '1' after 20 ns, '0' after 35 ns, '1' after 67 ns, '0' after 69 ns;

sigBD <= "ZZZZZZZZZZZZZZZZ","0000000000000001" after 20 ns, "ZZZZZZZZZZZZZZZZ" after 38 ns, "0000000100000000" after 67 ns, 
	"ZZZZZZZZZZZZZZZZ" after 71 ns;


end teste;