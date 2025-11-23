entity testbenchdec4x16vetor is
end testbenchdec4x16vetor;

architecture teste of testbenchdec4x16vetor is

component dec4x16vetor
	port (E: in bit_vector(3 downto 0); S: out bit_vector(15 downto 0));
end component;

signal sigE: bit_vector(3 downto 0);
signal sigS: bit_vector(15 downto 0);

begin

Componente: dec4x16vetor port map (sigE, sigS);

sigE <= "0000", "0001" after 10 ns, "0010" after 15 ns, "0011" after 20 ns, "0100" after 25 ns, "0101" after 30 ns,
"0110" after 35 ns, "0111" after 45 ns,"1000" after 50 ns,"1001" after 55 ns,"1010" after 60 ns,"1011" after 65 ns,
"1100" after 70 ns,"1101" after 75 ns,"1110" after 80 ns,"1111" after 85 ns;


end teste;