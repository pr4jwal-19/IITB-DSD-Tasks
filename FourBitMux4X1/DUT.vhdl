-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component MUX4X1_4BitIp is
port ( D : in std_logic_vector(17 downto 14);
			 C : in std_logic_vector(13 downto 10);
			 B : in std_logic_vector(9 downto 6);
			 A : in std_logic_vector(5 downto 2);
			 S : in std_logic_vector(1 downto 0);
			 Y : out std_logic_vector(3 downto 0) );
end component MUX4X1_4BitIp;

begin

--a => input_vector(7 downto 0), 
  --    b => input_vector(10 downto 8),L=>input_vector(11), 
    --  s => output_vector(7 downto 0));

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance:MUX4X1_4BitIp port map (D => input_vector(17 downto 14), C => input_vector(13 downto 10),
													 B => input_vector(9 downto 6), A => input_vector(5 downto 2), S => input_vector(1 downto 0),
													 Y => output_vector(3 downto 0) );

end DutWrap;