library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MC32 is
	port (E: in std_logic_vector(7 downto 0);
		Q: out std_logic_vector(31 downto 0));
end MC32;

architecture algoritmica of MC32 is

begin
	process (E)
 
		begin
			
			if E = "00000000" then 
				Q <= "000000001101000000000110XXXXXXXX";
			elsif E = "00000001" then
				Q <= "X00XXXX00100XXXXXXXXXXXXXXXXXXXX";
			elsif E = "00000010" then
				Q <= "1001000000010011XXXXXXXXXXXXXXXX";
			elsif E = "00000011" then
				Q <= "0011000000010100XXXX0011XXXXXXXX";
			elsif E = "00000100" then
				Q <= "0001010000010100XXXX0100XXXXXXXX";
			elsif E = "00000101" then
				Q <= "0011010000010100XXXX0100XXXXXXXX";
			elsif E = "00000110" then
				Q <= "0011010000010100XXXX0100XXXXXXXX";
			elsif E = "00000111" then
				Q <= "0011000000010100XXXX010000001100";
			elsif E = "00001000" then
				Q <= "000010000001101010000011XXXXXXXX";
			elsif E = "00001001" then
				Q <= "X00100001100XXXX1010XXXXXXXXXXXX";
			elsif E = "00001010" then
				Q <= "X00XXXX00100XXXXXXXXXXXXXXXXXXXX";
			elsif E = "00001011" then
				Q <= "1111000000010001XXXXXXXX00000000";
			elsif E = "00001100" then
				Q <= "000010000001101010000011XXXXXXXX";
			elsif E = "00001101" then
				Q <= "000100011010XXXX10100001XXXXXXXX";			
			elsif E = "00001110" then
				Q <= "X11XXXX00010XXXXXXXXXXXX00000000";
			else
				Q <= "X00XXXX00100XXXXXXXXXXXXXXXXXXXX";
			end if;
	end process;
end algoritmica;	