entity dec4x16vetor is 

	port (E: in bit_vector(3 downto 0); S: out bit_vector(15 downto 0));
	--E(3): bit mais significativo
	--E(0): bit menos significativo
end dec4x16vetor;