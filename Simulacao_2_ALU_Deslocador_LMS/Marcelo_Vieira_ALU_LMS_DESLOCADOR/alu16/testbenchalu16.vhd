library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

entity testbenchalu16 is
end testbenchalu16;

architecture teste of testbenchalu16 is

component alu16
	port (A, B: in std_logic_vector (15 downto 0);
		F0, F1: in std_logic; 
		S: out std_logic_vector (15 downto 0);
		N, Z: out std_logic);
end component;

signal sigA, sigB: std_logic_vector(15 downto 0);
signal sigF0, sigF1: std_logic;
signal sigS: std_logic_vector(15 downto 0);
signal sigN, sigZ: std_logic;

begin

Componente: alu16 port map (sigA, sigB, sigF0, sigF1, sigS, sigN, sigZ);

sigA <= "0000000000000000", "0000000000000010" after 2 ns, "0000000000000001" after 20 ns;

sigB <= "0000000000000001", "0000000000000010" after 21 ns;

sigF0 <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 22 ns;

sigF1 <= '0', '1' after 12 ns, '0' after 23 ns;

end teste;