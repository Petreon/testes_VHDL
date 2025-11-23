library ieee;
use ieee.std_logic_1164.all;

entity testbenchffD is
end testbenchffD;

architecture teste of testbenchffD is

component ffD
	port(d: in std_logic; reset: in std_logic;
	clk: in std_logic; 
	q: out std_logic; nq: out std_logic);
end component;

signal sigd: std_logic;
signal sigreset, sigclk, sigq, signq: std_logic;

begin

Componente: ffD port map (sigd, sigreset, sigclk, sigq, signq);

sigclk <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, 
	'1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns,
	'0' after 50 ns;

sigd <= '1', '0' after 12 ns, '1' after 21 ns, '0' after 36 ns, '1' after 38 ns;

sigreset <= '0', '1' after 32 ns;

end teste;