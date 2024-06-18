library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Full_Adder_3To8Decoder is

	port ( A, B, C : in std_logic;
				Sum, Cout : out std_logic );

end entity;

architecture struct of Full_Adder_3To8Decoder is

	signal sig1, sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9, sig10, sig11, sig12: std_logic;
	
	component Dec3X8_1 is
		port( A2, A1, A0, EN : in std_logic;
				out1,out2,out3,out4,out5,out6,out7,out8: out std_logic );
	end component;			
	
begin 

		inst1: Dec3X8_1 port map ( A2 => A, A1 => B, A0 => C, EN => '1', 
							out1 => sig1, out2 => sig2, out3 => sig3, out4 => sig4, out5 => sig5,
							out6 => sig6, out7 => sig7, out8 => sig8 );
		inst2: OR_2 port map ( A => sig2, B => sig3, Y => sig9 );
		inst3: OR_2 port map ( A => sig5, B => sig8, Y => sig10 );
		inst4: OR_2 port map ( A => sig9, B => sig10, Y => Sum );
		inst5: OR_2 port map ( A => sig4, B => sig6, Y => sig11 );
		inst6: OR_2 port map ( A => sig7, B => sig8, Y => sig12 );
		inst7: OR_2 port map ( A => sig11, B => sig12, Y => Cout );
		
end architecture;
 