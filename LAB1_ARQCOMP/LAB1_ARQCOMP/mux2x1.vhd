architecture algoritmica of mux2x1 is

begin
	process(A,B,C)
	begin
		if C = '0'
			then S <= A;
			else S <=B;
		end if;
	end process;
end algoritmica;
