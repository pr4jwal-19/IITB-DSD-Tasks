library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControllerLC is
	
	port (
			 clock      : in std_logic;
			 rst        : in std_logic;
			 Y          : out std_logic_vector(7 downto 0)
			 
	);
	
end ControllerLC;

architecture behave of ControllerLC is
	
component TimerCkt_G is

    port (
        clk : in std_logic;
        reset : in std_logic;
        Delay : out std_logic
    );
	 
end component TimerCkt_G;


component TimerCkt_Y is

    port (
        clk : in std_logic;
        reset : in std_logic;
        Delay : out std_logic
    );
	 
end component TimerCkt_Y;

component Encoder_4X2 is
    port (
        Color : in std_logic_vector(3 downto 0);  -- 4-bit input representing color
        Dirn : out std_logic_vector(1 downto 0)   -- 2-bit output representing direction
    );
end component Encoder_4X2;


	signal GreenTmr, YellowTmr : std_logic;
	signal stateOp1: std_logic_vector(15 downto 0);
	
	-- N E S W -> N => first G rest RRR
	-- states : YYYY, GRRR, YYRR, RGRR, RYYR, RRGR, RRYY, RRRG, YRRY
	type state is (S0,S1,S2,S3,S4,S5,S6,S7,S8);
	
	-- first state Y_Curr and Y_Next will be GRRR
	signal Y_Curr, Y_Next : state := S0;
	
	constant RED : std_logic_vector(3 downto 0) := "0001";
	constant YELLOW : std_logic_vector(3 downto 0) := "0010";
	constant GREEN : std_logic_vector(3 downto 0) := "0100";
	
	-- arch begin
	begin
	
		Delay1 : TimerCkt_G port map(clk => clock, reset => rst, Delay => GreenTmr);
		Delay2 : TimerCkt_Y port map(clk => clock, reset => rst, Delay => YellowTmr);
		
	C_P_Logic : process(clock, rst)
		
	begin
		
		if ( clock = '1' and clock'event ) then
		
			if (rst = '1') then
				
				-- go back to initial state 
				Y_Curr <= S0;
					
			else
					
				Y_Curr <= Y_Next;
				
			end if;
				
		end if;
		
	end process;
	
	-- green -> yellow 
	State_Flow : process(Y_Curr, GreenTmr, YellowTmr)
		
	begin
		
		case Y_Curr is
		
		when S0 =>
			
				Y_Next <= S1;
							
		when S1 => 
			
			if ( GreenTmr = '1' ) then 
				
				Y_Next <= S2;
			
			else
				
				Y_Next <= S1;
			
			end if;
				
		
		when S2 =>
			
			if ( YellowTmr = '1' ) then
				
				Y_Next <= S3;
				
			else
			
				Y_Next <= S2;
			
			end if;
				
		when S3 => 
			
			if ( GreenTmr = '1' ) then 
				
				Y_Next <= S4;
			
			else
				
				Y_Next <= S3;
			
			end if;
			
		when S4 =>
			
			if ( YellowTmr = '1' ) then
				
				Y_Next <= S5;
				
			else
			
				Y_Next <= S4;
			
			end if;
				
		when S5 => 
			
			if ( GreenTmr = '1' ) then 
				
				Y_Next <= S6;
			
			else
				
				Y_Next <= S5;
			
			end if;
			
		when S6 =>
			
			if ( YellowTmr = '1' ) then
				
				Y_Next <= S7;
				
			else
			
				Y_Next <= S6;
			
			end if;
				
		when S7 => 
			
			if ( GreenTmr = '1' ) then 
				
				Y_Next <= S8;
			
			else
				
				Y_Next <= S7;
			
			end if;
			
		when S8 => 
			
			if ( YellowTmr = '1' ) then 
				
				Y_Next <= S0;
			
			else
				
				Y_Next <= S8;
			
			end if;
			
		when others => 
			
			null;
			
		end case;
		
	end process;
	
	Op_L: process ( Y_Curr )
	
	variable state_op : std_logic_vector(15 downto 0);
		
	begin
		
		if ( Y_Curr = S0 ) then
		
			state_op(15 downto 12) := YELLOW;
			state_op(11 downto 8) := YELLOW;
			state_op(7 downto 4) := YELLOW;
			state_op(3 downto 0) := YELLOW;
			stateOp1 <= state_op;
			
		elsif ( Y_Curr = S1 ) then
			
			state_op(15 downto 12) := GREEN;
			state_op(11 downto 8) := RED;
			state_op(7 downto 4) := RED;
			state_op(3 downto 0) := RED;
			stateOp1 <= state_op;
			
		elsif ( Y_Curr = S2 ) then
			
			state_op(15 downto 12) := YELLOW;
			state_op(11 downto 8) := YELLOW;
			state_op(7 downto 4) := RED;
			state_op(3 downto 0) := RED;
			stateOp1 <= state_op;
			
		elsif ( Y_Curr = S3 ) then
			
			state_op(15 downto 12) := RED;
			state_op(11 downto 8) := GREEN;
			state_op(7 downto 4) := RED;
			state_op(3 downto 0) := RED;
			stateOp1 <= state_op;
			
		elsif ( Y_Curr = S4 ) then
			
			state_op(15 downto 12) := RED;
			state_op(11 downto 8) := YELLOW;
			state_op(7 downto 4) := YELLOW;
			state_op(3 downto 0) := RED;
			stateOp1 <= state_op;
			
		elsif ( Y_Curr = S5 ) then
			
			state_op(15 downto 12) := RED;
			state_op(11 downto 8) := RED;
			state_op(7 downto 4) := GREEN;
			state_op(3 downto 0) := RED;
			stateOp1 <= state_op;
			
		elsif ( Y_Curr = S6 ) then
			
			state_op(15 downto 12) := RED;
			state_op(11 downto 8) := RED;
			state_op(7 downto 4) := YELLOW;
			state_op(3 downto 0) := YELLOW;
			stateOp1 <= state_op;
			
		elsif ( Y_Curr = S7 ) then
			
			state_op(15 downto 12) := RED;
			state_op(11 downto 8) := RED;
			state_op(7 downto 4) := RED;
			state_op(3 downto 0) := GREEN;
			stateOp1 <= state_op;
			
		elsif ( Y_Curr = S8 ) then
			
			state_op(15 downto 12) := YELLOW;
			state_op(11 downto 8) := RED;
			state_op(7 downto 4) := RED;
			state_op(3 downto 0) := YELLOW;
			stateOp1 <= state_op;
		
		else 
				state_op(15 downto 12) := YELLOW;
				state_op(11 downto 8) := YELLOW;
				state_op(7 downto 4) := YELLOW;
				state_op(3 downto 0) := YELLOW;
				stateOp1 <= state_op;
				

		end if;
		
	end process;
	
	inst1: Encoder_4X2 port map ( Color => stateOp1(15 downto 12), Dirn => Y(7 downto 6));
	inst2: Encoder_4X2 port map ( Color => stateOp1(11 downto 8), Dirn => Y(5 downto 4));
	inst3: Encoder_4X2 port map ( Color => stateOp1(7 downto 4), Dirn => Y(3 downto 2));
	inst4: Encoder_4X2 port map ( Color => stateOp1(3 downto 0), Dirn => Y(1 downto 0));

end architecture;
