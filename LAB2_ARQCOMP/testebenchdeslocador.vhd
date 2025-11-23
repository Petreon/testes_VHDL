library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_deslocador is
end entity testbench_deslocador;

architecture behavioral of testbench_deslocador is
    component deslocador is
        port (
            entrada : in  std_logic_vector(15 downto 0);
            seletor : in  std_logic_vector(1 downto 0);
            saida   : out std_logic_vector(15 downto 0)
        );
    end component;

    signal s_input : std_logic_vector(15 downto 0) := (others => '0');
    signal s_selector : std_logic_vector(1 downto 0) := "00";
    signal s_output   : std_logic_vector(15 downto 0);

begin
    UUT: deslocador
        port map (
            entrada => s_input,
            seletor => s_selector,
            saida   => s_output
        );

    stimulus_process: process
    begin
        report "Iniciando o teste do Deslocador de 16 bits...";
        
        s_selector <= "00";
        s_input <= x"00FF";
        wait for 100 ps;

        s_selector <= "01";
        s_input <= x"FF00";
        wait for 100 ps;
        
        s_selector <= "10";
        s_input <= x"7F00";
        wait for 100 ps;
        
        s_selector <= "10";
        s_input <= x"FF00";
        wait for 100 ps;

        report "Finalizando teste";
        wait;
    end process;
end architecture behavioral;
