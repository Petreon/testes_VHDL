library ieee;
use ieee.std_logic_1164.all;

entity testbenchGSC is
end testbenchGSC;

architecture teste of testbenchGSC is

component GSC
	port (reset: in std_logic; T1, T2, T3, T4: out std_logic);
end component;

signal sigreset: std_logic;
signal sigT1, sigT2, sigT3, sigT4: std_logic;

begin

Componente: GSC port map (sigreset, sigT1, sigT2, sigT3, sigT4);

sigreset <= '1', '0' after 2 ns, '1' after 80 ns; 


end teste;