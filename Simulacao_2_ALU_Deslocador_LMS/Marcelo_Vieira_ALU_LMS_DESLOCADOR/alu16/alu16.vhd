library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

entity alu16 is
	port (A, B: in std_logic_vector (15 downto 0);
		F0, F1: in std_logic; 
		S: out std_logic_vector (15 downto 0);
		N, Z: out std_logic);
end alu16;


architecture algoritmica of alu16 is

signal result: std_logic_vector (15 downto 0);

begin
	process(A, B, F0, F1,result)
		variable temp, op1, op2: integer := 0; 
	begin
		result  <= "0000000000000000";
		S <= "0000000000000000";

		op1 := conv_integer(A);
		op2 := conv_integer(B);

		if (F1 = '0') and (F0 = '0') then
			temp :=  op1 + op2;
			result <= std_logic_vector(to_unsigned(temp, 16));
			S <= result;
		elsif (F1 = '0') and (F0 = '1') then
			result <=  A and B;
			S <= result;
		elsif (F1 = '1') and (F0 = '0') then
			result <= A;
			S <= result;
		elsif (F1 = '1') and (F0 = '1') then
			result <= not A;
			S <= result;
		end if;
		
		N <= result(15);

		if result = "0000000000000000" then
			Z <= '1';
		else
			Z <= '0';
		end if;
		
	end process;
end algoritmica;