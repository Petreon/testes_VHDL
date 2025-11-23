entity testbenchmux2x1 is
end testbenchmux2x1;

architecture teste of testbenchmux2x1 is

component MUX2X1
	port (A: in bit; B: in bit; C: in bit; S: out bit);
end component;

signal sigA, sigB, sigC, sigS: bit;

begin

Componente: MUX2X1 port map (sigA, sigB, sigC, sigS);

sigA <= '0', '1' after 10 ns, '0' after 20 ns;

sigB <= '1', '0' after 8 ns, '1' after 12 ns;

sigC <= '0', '1' after 5 ns, '0' after 11 ns, '1' after 14 ns, '0' after 17 ns;

end teste;