library ieee;
use ieee.std_logic_1164.all;

library work;
use work.FlipFlops.all;
use work.Gates.all;

-- write the Flipflops packege declaration
entity SequenceGenerator is

	port (reset,clock: in std_logic;
			y:out std_logic);
			
end entity SequenceGenerator;

architecture struct of SequenceGenerator is

	signal D :std_logic_vector(2 downto 0):=(others => '0');
	signal Q:std_logic_vector(2 downto 0):=(others => '0');

	component dff_set is port(D,clock,set:in std_logic;Q:out std_logic);
	end component dff_set;
	component dff_reset is port(D,clock,reset:in std_logic;Q:out std_logic);
	end component dff_reset;

begin
-- write the equations in dataflow e.g z=a+bc written as z <= a or (b and c)
-- for DFF inputs which was derived and also for y.
-- Instantiate components dff_reset

-- and dff_set appropriately using port map statements.
	
	D(2) <= ( Q(2) and (not Q(1)) and Q(0) ) or ( (not Q(2)) and Q(1) and (not Q(0)) );
	D(1) <= ( not Q(1)) and ( not Q(2) or Q(0) );
	D(0) <= ( Q(2) or ( Q(1) xor Q(0) ) );
	
	-- initial sequence - D2 D1 D0 : 0 0 1
	inst1: dff_reset port map ( D => D(2), clock => clock, reset => reset, Q => Q(2) );
	inst2: dff_reset port map ( D => D(1), clock => clock, reset => reset, Q => Q(1) );
	inst3: dff_set port map ( D => D(0), clock => clock, set => reset, Q => Q(0) );
	
	y <= Q(0);
 	
	
end struct;