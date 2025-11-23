library ieee;
use ieee.std_logic_1164.all;

entity MBRrd16 is
	port (BC: in std_logic_vector(15 downto 0);
		reset, CLK: in std_logic;
		EC: out std_logic_vector(15 downto 0));
end MBRrd16;


architecture estrutural of MBRrd16 is
	component ffDnegativetransition
		port(d: in std_logic; reset: in std_logic;
		clk: in std_logic; 
		q: out std_logic);
	end component;

begin
	P0: ffDnegativetransition port map (BC(0), reset, CLK, EC(0));
	P1: ffDnegativetransition port map (BC(1), reset, CLK, EC(1));
	P2: ffDnegativetransition port map (BC(2), reset, CLK, EC(2));
	P3: ffDnegativetransition port map (BC(3), reset, CLK, EC(3));
	P4: ffDnegativetransition port map (BC(4), reset, CLK, EC(4));
	P5: ffDnegativetransition port map (BC(5), reset, CLK, EC(5));
	P6: ffDnegativetransition port map (BC(6), reset, CLK, EC(6));
	P7: ffDnegativetransition port map (BC(7), reset, CLK, EC(7));
	P8: ffDnegativetransition port map (BC(8), reset, CLK, EC(8));
	P9: ffDnegativetransition port map (BC(9), reset, CLK, EC(9));
	P10: ffDnegativetransition port map (BC(10), reset, CLK, EC(10));
	P11: ffDnegativetransition port map (BC(11), reset, CLK, EC(11));
	P12: ffDnegativetransition port map (BC(12), reset, CLK, EC(12));
	P13: ffDnegativetransition port map (BC(13), reset, CLK, EC(13));
	P14: ffDnegativetransition port map (BC(14), reset, CLK, EC(14));
	P15: ffDnegativetransition port map (BC(15), reset, CLK, EC(15));
	
end estrutural;