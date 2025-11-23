library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity deslocador is
    port (
        entrada : in  std_logic_vector(15 downto 0);
        seletor : in  std_logic_vector(1 downto 0);
        saida   : out std_logic_vector(15 downto 0)
    );
end entity deslocador;

architecture behavioral of deslocador is
begin
    process(entrada, seletor)
    begin
        case seletor is
            when "00" =>
		-- nao desloca
               saida <= entrada;
		
            when "01" =>
		-- desloca 1 bit a direita
                saida <= std_logic_vector(shift_right(unsigned(entrada), 1));
            when "10" =>
		-- desloca 1 bit a esquerda
                saida <= std_logic_vector(shift_left(unsigned(entrada), 1));
            when others => -- '11' ->XX
		-- so copiar a entrada mas aqui é dontcare
                saida <= entrada;
        end case;
    end process;
end architecture behavioral;