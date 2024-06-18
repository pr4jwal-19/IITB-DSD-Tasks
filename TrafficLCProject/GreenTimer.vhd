library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TimerCkt is

    port (
        clk : in std_logic;
        reset : in std_logic;
        Delay_5 : out std_logic
    );
	 
end TimerCkt;

architecture behave of TimerCkt is 
	
	CONSTANT CLK_FREQ_Y : integer := 50_000_000;
	CONSTANT CLK_FREQ_G : integer := 250_000_000;
	CONSTANT TimeInSec_G : integer := 5; -- in seconds
	CONSTANT TimeInSec_Y : integer := 1; -- in seconds
	
	signal bit_rep_clk : std_logic_vector(31 downto 0);
	signal in1 : std_logic;
	
	begin
	
		
		D_5 : process(clk, rst)
		
		begin
			
			
			
			
			
		end D_5;
		
end behave;