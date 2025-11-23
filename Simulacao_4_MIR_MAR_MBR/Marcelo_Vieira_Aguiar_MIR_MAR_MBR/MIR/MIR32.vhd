library ieee;
use ieee.std_logic_1164.all;

entity MIR32 is
	port (E: in std_logic_vector(31 downto 0);
		reset, clk: in std_logic;
		Q: out std_logic_vector(31 downto 0));
end MIR32;


architecture estrutural of MIR32 is
	component ffD
		port(d: in std_logic; reset: in std_logic;
		clk: in std_logic; 
		q: out std_logic);
	end component;

begin
	P0: ffD port map (E(0),reset,clk,Q(0));
    	P1: ffD port map (E(1),reset,clk,Q(1));
	P2: ffD port map (E(2),reset,clk,Q(2));
	P3: ffD port map (E(3),reset,clk,Q(3));
	P4: ffD port map (E(4),reset,clk,Q(4));
	P5: ffD port map (E(5),reset,clk,Q(5));
	P6: ffD port map (E(6),reset,clk,Q(6));
	P7: ffD port map (E(7),reset,clk,Q(7));
	P8: ffD port map (E(8),reset,clk,Q(8));
	P9: ffD port map (E(9),reset,clk,Q(9));
    	P10: ffD port map (E(10),reset,clk,Q(10));
    	P11: ffD port map (E(11),reset,clk,Q(11));
    	P12: ffD port map (E(12),reset,clk,Q(12));
    	P13: ffD port map (E(13),reset,clk,Q(13));
    	P14: ffD port map (E(14),reset,clk,Q(14));
    	P15: ffD port map (E(15),reset,clk,Q(15));
        P16: ffD port map (E(16),reset,clk,Q(16));
    	P17: ffD port map (E(17),reset,clk,Q(17));
	P18: ffD port map (E(18),reset,clk,Q(18));
	P19: ffD port map (E(19),reset,clk,Q(19));
	P20: ffD port map (E(20),reset,clk,Q(20));
	P21: ffD port map (E(21),reset,clk,Q(21));
	P22: ffD port map (E(22),reset,clk,Q(22));
	P23: ffD port map (E(23),reset,clk,Q(23));
	P24: ffD port map (E(24),reset,clk,Q(24));
	P25: ffD port map (E(25),reset,clk,Q(25));
    	P26: ffD port map (E(26),reset,clk,Q(26));
    	P27: ffD port map (E(27),reset,clk,Q(27));
    	P28: ffD port map (E(28),reset,clk,Q(28));
    	P29: ffD port map (E(29),reset,clk,Q(29));
    	P30: ffD port map (E(30),reset,clk,Q(30));
    	P31: ffD port map (E(31),reset,clk,Q(31));
	
end estrutural;