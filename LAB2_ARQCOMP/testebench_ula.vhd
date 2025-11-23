library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_ULA_16bits is
end entity testbench_ULA_16bits;

architecture behavioral of testbench_ULA_16bits is

    component ULA_16bits is
        port (
            A, B  : in std_logic_vector(15 downto 0);
            F     : in std_logic_vector(1 downto 0);
            S     : out std_logic_vector(15 downto 0);
            N, Z  : out std_logic
        );
    end component;

    signal s_A, s_B  : std_logic_vector(15 downto 0) := (others => '0');
    signal s_F       : std_logic_vector(1 downto 0) := (others => '0');
    signal s_S       : std_logic_vector(15 downto 0);
    signal s_N, s_Z  : std_logic;

begin

    UUT: ULA_16bits
        port map (
            A => s_A,
            B => s_B,
            F => s_F,
            S => s_S,
            N => s_N,
            Z => s_Z
        );

    stimulus_process: process
    begin
        report "Iniciando o teste da ULA de 16 bits...";
        
        -- Adição (F = "00")
        s_F <= "00";
        s_A <= std_logic_vector(to_unsigned(100, 16));
        s_B <= std_logic_vector(to_unsigned(50, 16));
        wait for 10 ns;
        
        -- Subtração (F = "01")
        s_F <= "01";
        s_A <= std_logic_vector(to_unsigned(200, 16));
        s_B <= std_logic_vector(to_unsigned(150, 16));
        wait for 10 ns;

        -- Teste de Subtração onde o resultado é zero para verificar o Z flag
        s_F <= "01";
        s_A <= std_logic_vector(to_unsigned(5, 16));
        s_B <= std_logic_vector(to_unsigned(5, 16));
        wait for 10 ns;
        
        -- AND lógico (F = "10")
        s_F <= "10";
        s_A <= x"0F0F";
        s_B <= x"F0F0";
        wait for 10 ns;

        -- OR lógico (F = "11")
        s_F <= "11";
        s_A <= x"0F0F";
        s_B <= x"F0F0";
        wait for 10 ns;

        report "Teste finalizado.";
        wait;
    end process;
    
end architecture behavioral;
