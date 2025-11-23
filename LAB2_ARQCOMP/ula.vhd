library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ULA_16bits is
    port (
        A, B  : in std_logic_vector(15 downto 0);
        F     : in std_logic_vector(1 downto 0);
        S     : out std_logic_vector(15 downto 0);
        N, Z  : out std_logic
    );
end entity ULA_16bits;

architecture algoritmica of ULA_16bits is
    signal resultado_interno : std_logic_vector(15 downto 0);
begin
    process(A, B, F)
    begin
        case F is
            when "00" => -- A + B (Adição)
                resultado_interno <= A + B;
            when "01" => -- A . B (AND Lógico)
                resultado_interno <= A and B;
            when "10" => -- A (Pass-through)
                resultado_interno <= A;
            when "11" => -- NOT A (NOT Lógico)
                resultado_interno <= not A;
            when others =>
                resultado_interno <= (others => 'X');
        end case;
    end process;
    
    S <= resultado_interno;
    
    Z <= '1' when resultado_interno = x"0000" else '0';
    N <= resultado_interno(15);
end architecture algoritmica;
