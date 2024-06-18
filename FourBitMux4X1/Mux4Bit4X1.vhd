library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Mux4Bit4X1 is
   port(a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,sel0,sel1:in std_logic;
	y0,y1,y2,y3 : out std_logic);
end entity;
 
architecture struct of Mux4Bit4X1 is

component Mux4X1 is
   port(a,b,c,d,s1,s0:in std_logic;
	out1 : out std_logic);
end component;

  
begin

  inst1:Mux4X1 port map(a => a0, b=>b0 , c=>c0 , d=>d0 , s1=>sel0, s0=>sel1 ,out1=> y0);
  inst2:Mux4X1  port map(a => a1, b=>b1 , c=>c1, d=>d1 , s1=>sel0, s0=>sel1 ,out1=> y1);
  inst3:Mux4X1  port map(a => a2, b=>b2 , c=>c2 , d=>d2 , s1=>sel0, s0=>sel1 ,out1=> y2);
  inst4:Mux4X1  port map(a => a3, b=>b3 , c=>c3 , d=>d3 , s1=>sel0, s0=>sel1 ,out1=> y3);
  
  
end architecture;