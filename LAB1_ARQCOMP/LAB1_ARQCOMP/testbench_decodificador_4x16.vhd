library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_decodificador_4x16 is
end entity testbench_decodificador_4x16;

architecture behavioral of testbench_decodificador_4x16 is

    component decodificador_4x16 is
        port (
            entrada : in  std_logic_vector(3 downto 0);
            saida   : out std_logic_vector(15 downto 0)
        );
    end component;

    signal s_entrada : std_logic_vector(3 downto 0) := "0000";
    signal s_saida   : std_logic_vector(15 downto 0);

begin

    UUT: decodificador_4x16
        port map (
            entrada => s_entrada,
            saida   => s_saida
        );

    stimulus_process: process
    begin
        report "Iniciando o teste do decodificador 4x16...";

        for i in 0 to 15 loop
            s_entrada <= std_logic_vector(to_unsigned(i, 4));
            wait for 10 ns; 
        end loop;

        report "Teste finalizado.";
        
        wait; 
    end process;

end architecture behavioral;