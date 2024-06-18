library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity TimerCkt_Y is

    port (
        clk : in std_logic;
        reset : in std_logic;
        Delay : out std_logic
    );
	 
end TimerCkt_Y;


architecture yellow of TimerCkt_Y is
		
		CONSTANT CLK_FREQ_Y : natural := 50_000_000;
		
		signal bit_rep_clk_Y : unsigned(31 downto 0);
		signal inY : std_logic;
		
		begin
		
		D_Y : process(clk, reset)
		
		begin
		
		if reset = '1' then
		
			bit_rep_clk_Y <= (others => '0');
			inY <= '0';	
			
		elsif (clk = '1' and clk'event) then
			
			-- bit_rep_clk_Y -> count : Y
			if ( bit_rep_clk_Y = ( CLK_FREQ_Y ) -1 ) then
				
				-- count reduced to 0
				bit_rep_clk_Y <= (others => '0');
				-- output
				inY <= '1';
				
			else 
				
				-- count ++
				bit_rep_clk_Y <= bit_rep_clk_Y + 1;
				inY <= '0';
				
			end if;
			
		end if;
		
		end process;
		
		Delay <= inY;

end yellow;
		
		


