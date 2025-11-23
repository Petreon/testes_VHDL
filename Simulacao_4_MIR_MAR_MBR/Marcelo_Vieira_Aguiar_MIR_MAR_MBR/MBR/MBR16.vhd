library ieee;
use ieee.std_logic_1164.all;

entity MBR16 is
	port (SD: in std_logic_vector(15 downto 0);
		reset, T4, MBR, WR, RD: in std_logic;
		ED: out std_logic_vector(15 downto 0);
		BD: inout std_logic_vector(15 downto 0));
end MBR16;


architecture estrutural of MBR16 is
	component MBRwr16
		port (E: in std_logic_vector(15 downto 0);
		reset, T4, MBR, WR: in std_logic;
		BC: out std_logic_vector(15 downto 0));
	end component;
	component MBRrd16
		port (BC: in std_logic_vector(15 downto 0);
		reset, CLK: in std_logic;
		EC: out std_logic_vector(15 downto 0));
	end component;

begin
	P0: MBRwr16 port map (SD, reset, T4, MBR, WR, BD);
	P1: MBRrd16 port map (BD, reset, RD, ED);
	
end estrutural;