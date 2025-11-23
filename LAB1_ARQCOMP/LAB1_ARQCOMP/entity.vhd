library ieee;
use ieee.std_logic_1164.all;

entity decodificador_4x16 is
    port (
        entrada : in  std_logic_vector(3 downto 0);
        saida   : out std_logic_vector(15 downto 0)
    );
end entity decodificador_4x16;
