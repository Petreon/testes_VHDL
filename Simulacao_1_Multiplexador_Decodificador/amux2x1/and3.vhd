entity and3 is
port (E1,E2,E3: in bit; S: out bit);
end and3;

architecture fluxodedados of and3 is
begin
S <= E1 and E2 and E3;
end fluxodedados;