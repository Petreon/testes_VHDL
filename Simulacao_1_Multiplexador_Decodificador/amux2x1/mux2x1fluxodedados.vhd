architecture fluxodedados of MUX2X1 is
	begin
		S <= ((not A) and B and C) or (A and (not B) and (not C)) or (A and B and (not C)) or (A and B and C);
end fluxodedados;