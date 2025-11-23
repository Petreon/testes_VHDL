library ieee;
use ieee.std_logic_1164.all;

entity and2 is
port (E1,E2: in std_logic; S: out std_logic);
end and2;

architecture fluxodedados of and2 is
begin
S <= E1 and E2;
end fluxodedados;