library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TimerCkt_G is

    port (
        clk : in std_logic;
        reset : in std_logic;
        Delay : out std_logic
    );
	 
end TimerCkt_G;

architecture green of TimerCkt_G is 
	
	CONSTANT CLK_FREQ_G : natural := 50_000_000;
	CONSTANT timesG : integer := 5;
	signal bit_rep_clk_G : unsigned(31 downto 0);
	signal inG : std_logic;
	
	begin
		
		D_G : process(clk, reset)
		
		begin
		
		if reset = '1' then
		
			bit_rep_clk_G <= (others => '0');
			inG <= '0';	
			
		elsif (clk = '1' and clk'event) then
		
				if bit_rep_clk_G = (CLK_FREQ_G * timesG) - 1 then 
				-- count reduced to 0
				bit_rep_clk_G <= (others => '0');
				-- output
				inG <= '1';
				
				else 
				
				-- count ++
				bit_rep_clk_G <= bit_rep_clk_G + 1;
				inG <= '0';
				
				end if;
			
		end if;
		
		end process;
		
		Delay <= inG;
		
end green;