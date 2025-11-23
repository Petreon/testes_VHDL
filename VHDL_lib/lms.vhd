library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logica_microsequenciamento is
    port (
        endereco_atual : in  std_logic_vector(7 downto 0);
        flag_z         : in  std_logic;
        proximo_endereco : out std_logic_vector(7 downto 0)
    );
end entity logica_microsequenciamento;

architecture behavioral of logica_microsequenciamento is
begin
    process(endereco_atual, flag_z)
        variable v_proximo_endereco : unsigned(7 downto 0);
    begin
        case to_integer(unsigned(endereco_atual)) is
            when 0 => 
                v_proximo_endereco := to_unsigned(1, 8);
            when 1 =>
                v_proximo_endereco := to_unsigned(10, 8);
            when 20 =>
                if flag_z = '1' then
                    v_proximo_endereco := to_unsigned(100, 8);
                else
                    v_proximo_endereco := to_unsigned(21, 8);
                end if;
            when others =>
                v_proximo_endereco := unsigned(endereco_atual) + 1;
        end case;
        
        proximo_endereco <= std_logic_vector(v_proximo_endereco);
    end process;
end architecture behavioral;
