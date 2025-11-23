entity testbenchlms is
end testbenchlms;

architecture teste of testbenchlms is

component lms
	port (N, Z, COND2, COND1: in bit; S: out bit);
end component;

signal sigN, sigZ, sigCOND2, sigCOND1, sigS: bit;

begin

Componente: lms port map (sigN, sigZ, sigCOND2, sigCOND1, sigS);

sigN <= '0', '1' after 45 ns;

sigZ <= '0', '1' after 22 ns, '0' after 42 ns, '1' after 62 ns;

sigCOND2 <= '0', '1' after 11 ns, '0' after 21 ns, '1' after 31 ns, '0' after 41 ns, '1' after 51 ns, '0' after 61 ns,
		'1' after 71 ns;

sigCOND1 <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns,
		'0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns, '0' after 50 ns,
		'1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns, '1' after 75 ns;

end teste;