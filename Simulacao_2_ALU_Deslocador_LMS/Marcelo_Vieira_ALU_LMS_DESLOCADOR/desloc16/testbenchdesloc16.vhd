entity testbenchdesloc16 is
end testbenchdesloc16;

architecture teste of testbenchdesloc16 is

component desloc16
	port (E: in bit_vector (15 downto 0);
		S0, S1: in bit; 
		S: out bit_vector (15 downto 0));
end component;

signal sigE: bit_vector(15 downto 0);
signal sigS0, sigS1: bit;
signal sigS: bit_vector(15 downto 0);

begin

Componente: desloc16 port map (sigE, sigS0, sigS1, sigS);

sigE <= "0000000000000100", "0100000000000000" after 20 ns, "0011100000000000" after 35 ns, "1111111111111111" after 50 ns;

sigS0 <= '0', '1' after 5 ns, '0' after 15 ns, '1' after 22 ns, '1' after 25 ns, '0' after 28 ns, 
		'0' after 36 ns, '1' after 39 ns, '0' after 43 ns, '1' after 46 ns,
		'0' after 51 ns, '1' after 54 ns, '0' after 57 ns, '1' after 61 ns;

sigS1 <= '0', '0' after 5 ns, '1' after 12 ns, '1' after 23 ns, '0' after 26 ns, '1' after 29 ns,
		'0' after 37 ns, '0' after 40 ns, '1' after 44 ns, '1' after 47 ns,
		'0' after 52 ns, '0' after 55 ns, '1' after 58 ns, '1' after 62 ns;

end teste;