
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity BCD_ADDER is

	port( B3, B2, B1, B0, A3, A2, A1, A0 : in std_logic;
			Y4, Y3, Y2, Y1, Y0 : out std_logic );
			
end entity;

architecture struct of BCD_ADDER is
	
	signal sig1, sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9, sig10, sig11, sig12, S3, S2, S1, S0 : std_logic;

begin

inst1: HALF_ADDER port map(A => A0, B => B0, S => S0, C => sig1);
inst2: FULL_ADDER port map(A => A1, B => B1, Cin => sig1, Sum => S1, Cout => sig2);
inst3: FULL_ADDER port map(A => A2, B => B2, Cin => sig2, Sum => S2, Cout => sig3);
inst4: FULL_ADDER port map(A => A3, B => B3, Cin => sig3, Sum => S3, Cout => sig4);
inst5: AND_2 port map(A => S3, B => S2, Y => sig5);
inst6: AND_2 port map(A => S3, B => S1, Y => sig6);
inst7: OR_2 port map(A => sig5, B => sig6, Y => sig7);
inst8: OR_2 port map(A => sig4, B => sig7, Y => sig8);
inst9: HALF_ADDER port map(A => S0, B => '0', S => Y0, C => sig9);
inst10: FULL_ADDER port map(A => S1, B => sig8, Cin => sig9, Sum => Y1, Cout => sig10);
inst11: FULL_ADDER port map(A => S2, B => sig8, Cin => sig10, Sum => Y2, Cout => sig11);
inst12: FULL_ADDER port map(A => S3, B => '0', Cin => sig11, Sum => Y3, Cout => sig12);
inst13: OR_2 port map(A => sig8, B => sig12, Y => Y4);
 
 
end architecture;