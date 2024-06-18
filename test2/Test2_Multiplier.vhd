library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Test2_Multiplier is
	
	port ( A : in std_logic_vector(7 downto 0);
			 M : in std_logic;
			 MOp : out std_logic_vector(7 downto 0)
			);
			
end entity;

architecture struct of Test2_Multiplier is 

component FourBitAdder_1 is
 
	port (a0,a1,a2,a3,b0,b1,b2,b3,cin1: in std_logic;  s0,s1,s2,s3,cout:out std_logic);

end component FourBitAdder_1;

signal sig1, sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9, sig10: std_logic;
		
begin
	
	inst1: MUX_2X1 port map ( l0 => A(5), l1 => A(6), s => M, y => sig1);
	inst2: MUX_2X1 port map ( l0 => A(4), l1 => A(5), s => M, y => sig2);
	inst3: MUX_2X1 port map ( l0 => A(3), l1 => A(4), s => M, y => sig3);
	inst4: MUX_2X1 port map ( l0 => A(2), l1 => A(3), s => M, y => sig4);
	inst5: MUX_2X1 port map ( l0 => A(1), l1 => A(2), s => M, y => sig5);
	inst6: MUX_2X1 port map ( l0 => A(0), l1 => A(1), s => M, y => sig6);
	inst7: MUX_2X1 port map ( l0 => '0', l1 => A(0), s => M, y => sig7);
	inst8: MUX_2X1 port map ( l0 => '0', l1 => '0', s => M, y => sig8);
	
	inst9: FourBitAdder_1 port map ( a3 => A(3), a2 => A(2), a1 => A(1), a0 => A(0), b3 => sig4, b2 => sig3, b1 => sig2, b0 => sig1, cin1 => '0', cout => sig9, s3 => Mop(3), s2 => Mop(2), s1 => Mop(1), s0 => Mop(0) );
	inst10: FourBitAdder_1 port map ( a3 => A(7), a2 => A(6), a1 => A(5), a0 => A(4), b3 => sig8, b2 => sig7, b1 => sig6, b0 => sig5, cin1 => '0', cout => sig10, s3 => Mop(7), s2 => Mop(6), s1 => Mop(5), s0 => Mop(4) );
	

end architecture;
			
			
				
				
				
	
	