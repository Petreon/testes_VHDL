library ieee;
use ieee.std_logic_1164.all;

entity GSC is
	port (reset: in std_logic; T1, T2, T3, T4: out std_logic);
end GSC;

architecture algoritmica of GSC is

signal clock: std_logic := '0';
signal sigT1, sigT2, sigT3, sigT4: std_logic := '0';

begin
	process
	begin
		clock <= not clock after 2 ns;
		wait for 2 ns; --2 ns em 1, depois 2 ns em 0. wait controla o process
	end process;

	process(clock, reset)
	begin
		if reset = '1' then
			sigT1 <= '0';
		elsif clock = '1' and clock'event then
			sigT1 <= '1', '0' after 1 ns;
		end if;
	end process;

	process (sigT1, reset)
	begin
		if reset = '1' then
			sigT2 <= '0';
		elsif sigT1 = '0' and sigT1'event then
			sigT2 <= '1', '0' after 1 ns;
		end if;
	end process;
	
	process (sigT2, reset)
	begin
		if reset = '1' then
			sigT3 <= '0';
		elsif sigT2 = '0' and sigT2'event then
			sigT3 <= '1', '0' after 1 ns;
		end if;
	end process;

	process (sigT3, reset)
	begin
		if reset = '1' then
			sigT4 <= '0';
		elsif sigT3 = '0' and sigT3'event then
			sigT4 <= '1', '0' after 1 ns;
		end if;
	end process;

T1 <= sigT1;
T2 <= sigT2;
T3 <= sigT3;
T4 <= sigT4;

end algoritmica;
	