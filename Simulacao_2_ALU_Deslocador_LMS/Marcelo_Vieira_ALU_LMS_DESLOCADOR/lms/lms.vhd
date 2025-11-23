entity lms is 
	port (N, Z, COND2, COND1: in bit; S: out bit);
end lms;

architecture fluxodedados of lms is
	begin
		S <= ((not N) and (not Z) and COND2 and COND1) or
			((not N) and Z and COND2 and (not COND1)) or
			((not N) and Z and COND2 and COND1) or
			(N and (not Z) and (not COND2) and COND1) or
			(N and (not Z) and COND2 and COND1) or
			(N and Z and (not COND2) and COND1) or
			(N and Z and COND2 and (not COND1)) or
			(N and Z and COND2 and COND1);
end fluxodedados;