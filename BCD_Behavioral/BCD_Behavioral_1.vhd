

;

entity BCD_Behavioral_1 is 

	port ( A3,A2,A1,A0,B3,B2,B1,B0 : in std_logic;
			 Sum3,Sum2,Sum1,Sum0, Cout: out std_logic);
			 
end entity;

architecture behave of BCD_Behavioral_1 is

signal A, B : std_logic_vector(3 downto 0);
signal t_sum : std_logic_vector(4 downto 0);
	
begin 

-- concated into single A & B
A <= A3 & A2 & A1 & A0;
B <= B3 & B2 & B1 & B0;

bcd: process(A,B)
	
	variable temp_sum : unsigned(4 downto 0); 
	
	begin
			
	-- (:=)	temp_sum := unsigned(A) + unsigned(B);	
	temp_sum <= std_logic_vector( unsigned(A) + unsigned(B) );
	
	if ( temp_sum > '1001' ) then
	
	-- temp_sum := temp_sum + 6
	temp_sum <= temp_sum + '0110';
	
	end if;
	
	
	if ( temp >= 16 ) then
	
	Cout <= '1';
	
	else Cout <= '0';
	
	end if;
	
	
	Sum3 <= temp_sum(3);
	Sum2 <= temp_sum(2);
	Sum1 <= temp_sum(1);
	Sum0 <= temp_sum(0);
	
	end process;

end architecture;
	
	
	
		
	
			
			