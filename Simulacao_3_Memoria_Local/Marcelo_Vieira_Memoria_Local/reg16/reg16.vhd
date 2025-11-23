library ieee;
use ieee.std_logic_1164.all;

-- registrador generico de 16 bits.
-- usado para implementar os seguintes registradores: PC, AC, SP, IR, TIR, A, B, C, D, E, F.

entity reg16 is
	port (D: in std_logic_vector(15 downto 0);
		reset, clk, OE1, OE2: in std_logic;
		AQ: out std_logic_vector(15 downto 0);
		BQ: out std_logic_vector(15 downto 0));
end reg16;


architecture estrutural of reg16 is
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

signal sigQ: std_logic_vector(15 downto 0);

begin
	P0: ffD port map (D(0),reset,clk,sigQ(0));
    	P1: ffD port map (D(1),reset,clk,sigQ(1));
	P2: ffD port map (D(2),reset,clk,sigQ(2));
	P3: ffD port map (D(3),reset,clk,sigQ(3));
	P4: ffD port map (D(4),reset,clk,sigQ(4));
	P5: ffD port map (D(5),reset,clk,sigQ(5));
	P6: ffD port map (D(6),reset,clk,sigQ(6));
	P7: ffD port map (D(7),reset,clk,sigQ(7));
	P8: ffD port map (D(8),reset,clk,sigQ(8));
	P9: ffD port map (D(9),reset,clk,sigQ(9));
    	P10: ffD port map (D(10),reset,clk,sigQ(10));
    	P11: ffD port map (D(11),reset,clk,sigQ(11));
    	P12: ffD port map (D(12),reset,clk,sigQ(12));
    	P13: ffD port map (D(13),reset,clk,sigQ(13));
    	P14: ffD port map (D(14),reset,clk,sigQ(14));
    	P15: ffD port map (D(15),reset,clk,sigQ(15));
	-- conjunto de portas tri-state no barramento A
	P16: tristate port map (sigQ(0), OE1, AQ(0));
	P17: tristate port map (sigQ(1), OE1, AQ(1));
	P18: tristate port map (sigQ(2), OE1, AQ(2));
	P19: tristate port map (sigQ(3), OE1, AQ(3));
	P20: tristate port map (sigQ(4), OE1, AQ(4));
	P21: tristate port map (sigQ(5), OE1, AQ(5));
	P22: tristate port map (sigQ(6), OE1, AQ(6));
	P23: tristate port map (sigQ(7), OE1, AQ(7));
	P24: tristate port map (sigQ(8), OE1, AQ(8));
	P25: tristate port map (sigQ(9), OE1, AQ(9));
	P26: tristate port map (sigQ(10), OE1, AQ(10));
	P27: tristate port map (sigQ(11), OE1, AQ(11));
	P28: tristate port map (sigQ(12), OE1, AQ(12));
	P29: tristate port map (sigQ(13), OE1, AQ(13));
	P30: tristate port map (sigQ(14), OE1, AQ(14));
	P31: tristate port map (sigQ(15), OE1, AQ(15));
	-- conjunto de portas tri-state no barramento B
	P32: tristate port map (sigQ(0), OE2, BQ(0));
	P33: tristate port map (sigQ(1), OE2, BQ(1));
	P34: tristate port map (sigQ(2), OE2, BQ(2));
	P35: tristate port map (sigQ(3), OE2, BQ(3));
	P36: tristate port map (sigQ(4), OE2, BQ(4));
	P37: tristate port map (sigQ(5), OE2, BQ(5));
	P38: tristate port map (sigQ(6), OE2, BQ(6));
	P39: tristate port map (sigQ(7), OE2, BQ(7));
	P40: tristate port map (sigQ(8), OE2, BQ(8));
	P41: tristate port map (sigQ(9), OE2, BQ(9));
	P42: tristate port map (sigQ(10), OE2, BQ(10));
	P43: tristate port map (sigQ(11), OE2, BQ(11));
	P44: tristate port map (sigQ(12), OE2, BQ(12));
	P45: tristate port map (sigQ(13), OE2, BQ(13));
	P46: tristate port map (sigQ(14), OE2, BQ(14));
	P47: tristate port map (sigQ(15), OE2, BQ(15));
end estrutural;