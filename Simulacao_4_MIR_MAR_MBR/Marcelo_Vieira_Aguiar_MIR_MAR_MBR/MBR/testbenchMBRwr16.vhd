library ieee;
use ieee.std_logic_1164.all;

entity testbenchMBRwr16 is
end testbenchMBRwr16;

architecture teste of testbenchMBRwr16 is

component MBRwr16
	port (E: in std_logic_vector(15 downto 0);
		reset, T4, MBR, WR: in std_logic;
		BC: inout std_logic_vector(15 downto 0));
end component;

signal sigE: std_logic_vector(15 downto 0);

signal sigreset, sigT4, sigMBR, sigWR: std_logic;

signal sigBC: std_logic_vector(15 downto 0);

begin

Componente: MBRwr16 port map (sigE,
	sigreset, sigT4, sigMBR, sigWR, sigBC);


sigreset <= '0', '1' after 70 ns;

sigT4 <= '0', '1' after 5 ns, '0' after 45 ns, '1' after 65 ns;

sigMBR <= '1', '0' after 15 ns, '1' after 35 ns, '0' after 75 ns, '1' after 80 ns;

sigWR <= '1', '0' after 42 ns, '1' after 68 ns, '0' after 85 ns;

sigE <= "1111111111111111", "0000000000000000" after 10 ns,"1111111111111111" after 20 ns, 
	"0000000000000000" after 30 ns, "1111111111111111" after 40 ns, 
	"0000000000000000" after 50 ns, "1111111111111111" after 60 ns;


end teste;