library ieee;
use ieee.std_logic_1164.all;

entity MAR16 is
	port (E: in std_logic_vector(15 downto 0);
		reset, T3, MAR: in std_logic;
		Q: out std_logic_vector(15 downto 0));
end MAR16;


architecture estrutural of MAR16 is
	component and2
		port (E1, E2: in std_logic; S: out std_logic);
	end component;
	component ffD
		port(d: in std_logic; reset: in std_logic;
		clk: in std_logic; 
		q: out std_logic);
	end component;

signal sigCLK: std_logic;

begin
	P0: and2 port map (T3, MAR, sigCLK);

    	P1: ffD port map (E(0),reset,sigCLK,Q(0));
	P2: ffD port map (E(1),reset,sigCLK,Q(1));
	P3: ffD port map (E(2),reset,sigCLK,Q(2));
	P4: ffD port map (E(3),reset,sigCLK,Q(3));
	P5: ffD port map (E(4),reset,sigCLK,Q(4));
	P6: ffD port map (E(5),reset,sigCLK,Q(5));
	P7: ffD port map (E(6),reset,sigCLK,Q(6));
	P8: ffD port map (E(7),reset,sigCLK,Q(7));
	P9: ffD port map (E(8),reset,sigCLK,Q(8));
	P10: ffD port map (E(9),reset,sigCLK,Q(9));
	P11: ffD port map (E(10),reset,sigCLK,Q(10));
	P12: ffD port map (E(11),reset,sigCLK,Q(11));
	P13: ffD port map (E(12),reset,sigCLK,Q(12));
	P14: ffD port map (E(13),reset,sigCLK,Q(13));
	P15: ffD port map (E(14),reset,sigCLK,Q(14));
	P16: ffD port map (E(15),reset,sigCLK,Q(15));
	
end estrutural;