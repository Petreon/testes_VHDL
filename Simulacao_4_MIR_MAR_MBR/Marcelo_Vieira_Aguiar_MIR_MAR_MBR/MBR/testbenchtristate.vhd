library ieee;
use ieee.std_logic_1164.all;

entity testbenchtristate is
end testbenchtristate;

architecture teste of testbenchtristate is

component tristate
	port (E: in std_logic;
		enable: in std_logic; 
		Q: out std_logic);
end component;

signal sigE, sigenable: std_logic;
signal sigQ: std_logic;

begin

Componente: tristate port map (sigE, sigenable, sigQ);

sigE <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, 
	'1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns,
	'0' after 50 ns;

sigenable <= '1', '0' after 12 ns, '1' after 21 ns, '0' after 36 ns, '1' after 38 ns, '0' after 43 ns;


end teste;