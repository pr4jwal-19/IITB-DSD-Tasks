library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity MULTIPLIER is
	
	port ( A3, A2, A1, A0, B2, B1, B0 : in std_logic;
			 M6, M5, M4, M3, M2, M1, M0 : out std_logic 
		   );

end entity;

architecture struct of MULTIPLIER is

		component FourBitAdder_1 is
 
		PORT (a0,a1,a2,a3,b0,b1,b2,b3,cin1: in std_logic;  s0,s1,s2,s3,cout:out std_logic);

		end component FourBitAdder_1;
		
		signal sig1, sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9, sig10, sig11, sig12, sig13, sig14, sig15, sig16, sig17 : std_logic;
		
		begin 
			
			inst1: AND_2 port map ( A => A3, B => B0, Y => sig1 );
			inst2: AND_2 port map ( A => A2, B => B0, Y => sig2 );
			inst3: AND_2 port map ( A => A1, B => B0, Y => sig3 );
			inst4: AND_2 port map ( A => A0, B => B0, Y => sig4 );
			inst5: AND_2 port map ( A => A3, B => B1, Y => sig5 );
			inst6: AND_2 port map ( A => A2, B => B1, Y => sig6 );
			inst7: AND_2 port map ( A => A1, B => B1, Y => sig7 );
			inst8: AND_2 port map ( A => A0, B => B1, Y => sig8 );
			inst9: AND_2 port map ( A => A3, B => B2, Y => sig9 );
			inst10: AND_2 port map ( A => A2, B => B2, Y => sig10 );
			inst11: AND_2 port map ( A => A1, B => B2, Y => sig11 );
			inst12: AND_2 port map ( A => A0, B => B2, Y => sig12 );
			inst13: FourBitAdder_1 port map ( a