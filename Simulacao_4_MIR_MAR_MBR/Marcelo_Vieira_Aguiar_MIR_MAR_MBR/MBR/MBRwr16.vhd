library ieee;
use ieee.std_logic_1164.all;

entity MBRwr16 is
	port (E: in std_logic_vector(15 downto 0);
		reset, T4, MBR, WR: in std_logic;
		BC: out std_logic_vector(15 downto 0));
end MBRwr16;


architecture estrutural of MBRwr16 is
	component and2
		port (E1, E2: in std_logic; S: out std_logic);
	end component;
	component ffD
		port(d: in std_logic; reset: in std_logic;
		clk: in std_logic; 
		q: out std_logic);
	end component;
	component tristate
		port (E: in std_logic;
		enable: in std_logic; 
		Q: out std_logic);
	end component;

signal sigCLK: std_logic;

signal sigBC: std_logic_vector(15 downto 0);

begin
	P0: and2 port map (T4, MBR, sigCLK);

	P1: ffD port map (E(0), reset, sigCLK, sigBC(0));
	P2: ffD port map (E(1), reset, sigCLK, sigBC(1));
	P3: ffD port map (E(2), reset, sigCLK, sigBC(2));
	P4: ffD port map (E(3), reset, sigCLK, sigBC(3));
	P5: ffD port map (E(4), reset, sigCLK, sigBC(4));
	P6: ffD port map (E(5), reset, sigCLK, sigBC(5));
	P7: ffD port map (E(6), reset, sigCLK, sigBC(6));
	P8: ffD port map (E(7), reset, sigCLK, sigBC(7));
	P9: ffD port map (E(8), reset, sigCLK, sigBC(8));
	P10: ffD port map (E(9), reset, sigCLK, sigBC(9));
	P11: ffD port map (E(10), reset, sigCLK, sigBC(10));
	P12: ffD port map (E(11), reset, sigCLK, sigBC(11));
	P13: ffD port map (E(12), reset, sigCLK, sigBC(12));
	P14: ffD port map (E(13), reset, sigCLK, sigBC(13));
	P15: ffD port map (E(14), reset, sigCLK, sigBC(14));
	P16: ffD port map (E(15), reset, sigCLK, sigBC(15));

	-- conjunto de portas tri-state no barramento C
	P17: tristate port map (sigBC(0), WR, BC(0));
	P18: tristate port map (sigBC(1), WR, BC(1));
	P19: tristate port map (sigBC(2), WR, BC(2));
	P20: tristate port map (sigBC(3), WR, BC(3));
	P21: tristate port map (sigBC(4), WR, BC(4));
	P22: tristate port map (sigBC(5), WR, BC(5));
	P23: tristate port map (sigBC(6), WR, BC(6));
	P24: tristate port map (sigBC(7), WR, BC(7));
	P25: tristate port map (sigBC(8), WR, BC(8));
	P26: tristate port map (sigBC(9), WR, BC(9));
	P27: tristate port map (sigBC(10), WR, BC(10));
	P28: tristate port map (sigBC(11), WR, BC(11));
	P29: tristate port map (sigBC(12), WR, BC(12));
	P30: tristate port map (sigBC(13), WR, BC(13));
	P31: tristate port map (sigBC(14), WR, BC(14));
	P32: tristate port map (sigBC(15), WR, BC(15));
	
end estrutural;