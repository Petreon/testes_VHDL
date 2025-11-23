library ieee;
use ieee.std_logic_1164.all;

entity LMS is
    port (
        N, Z  : in std_logic;
	COND  : in std_logic_vector(1 downto 0);
        S     : out std_logic
    );
end entity LMS;

architecture behavioral of LMS is
-- O objetivo do LSM é pegar o valor que vem da ALU N e Z 
-- junto com o COND que vem do microprograma e dar uma saida 0 ou 1
-- para o mux de microinstrucao saber se tem que seguir o proximo enderco
-- ou pegar o endereco que esta na microinstrucao
-- para o processador talvez seja necessario colocar um sinal de clock
-- para poder alinhar com o GSC
-- usando a logica de que S = 0  entao mux = 0 (ADDR)
-- se S = 1 (não salta )e o mux seleciona o INC de endereco
begin

	process(N,Z,COND)
	begin
	case cond is
            when "00" =>  -- 0 = não salta
                S <= '1';

            when "01" =>  -- 1 = salta para ADDR, se N = 1
		if N = '1' then
		   S <= '0'; -- salta 
		else
		   S <= '1'; -- nao salta
		end if;

            when "10" =>  -- 2 = salta para ADDR, se Z = 1
                if Z = '1' then
		   S <= '0'; -- salta 
		else
		   S <= '1'; -- nao salta
		end if;
	    when others => -- caso "11"
		S <= '0'; -- salta incondicionalmente
	
	end case;
        end process;
	
end architecture behavioral;