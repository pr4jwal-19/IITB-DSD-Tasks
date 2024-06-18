library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Universal_Shifter_1 is
	port ( a : in std_logic_vector( 7 downto 0 );
			 b : in std_logic_vector( 2 downto 0 );
			 L : in std_logic;
			 s : out std_logic_vector( 7 downto 0 ));
end entity;

architecture struct of Universal_Shifter_1 is
	signal sig1,sig2,sig3,sig4,sig5,sig6,sig7,sig8 : std_logic_vector(7 downto 0);

begin 
	
	
bit_reversal : for i in 0 to 7 generate
lsb: if i < 8 generate
b2:  MUX_2X1 port map ( I(0) => a(i), I(1) => a(7-i), S => L, Y => sig1(i) );
end generate lsb;
end generate;


n4_bit : for i in 0 to 7 generate
lsb: if i < 4 generate
b2: MUX_2X1 port map ( I(0) => sig1(i), I(1) => sig1(i+4), S => b(2), Y => sig2(i) );
end generate lsb;
msb: if i > 3 generate 
b2: MUX_2X1 port map ( I(0) => sig1(i), I(1) => '0', S => b(2), Y => sig2(i) );
end generate msb;
end generate;


n2_bit : for i in 0 to 7 generate
lsb: if i < 6 generate
b1: MUX_2X1 port map ( I(0) => sig2(i), I(1) => sig2(i+2), S => b(1), Y => sig3(i) );
end generate lsb;
msb: if i > 5 generate 
b1: MUX_2X1 port map ( I(0) => sig2(i), I(1) => '0', S => b(1), Y => sig3(i) );
end generate msb;
end generate;


n1_bit : for i in 0 to 7 generate
lsb: if i < 7 generate
b0: MUX_2X1 port map ( I(0) => sig3(i), I(1) => sig3(i+1), S => b(0), Y => sig4(i) );
end generate lsb;
msb: if i > 6 generate 
b0: MUX_2X1 port map ( I(0) => sig3(i), I(1) => '0', S => b(0), Y => sig4(i) );
end generate msb;
end generate;

bit_reversal_end : for i in 0 to 7 generate
lsb: if i < 8 generate
b2:  MUX_2X1 port map ( I(0) => sig4(i), I(1) => sig4(7-i), S => L, Y => s(i) );
end generate lsb;
end generate;



end architecture;
 