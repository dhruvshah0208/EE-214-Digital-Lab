 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity combo_8_counter is
  port (x0,x1,x2,x3,x4,x5,x6,x7: in std_logic; y0,y1,y2,y3: out std_logic);
end entity combo_8_counter;

architecture Struct of combo_8_counter is
  signal interconnect: std_logic_vector(10 downto 0);
   component Full_Adder is
		port (A, B, Cin: in std_logic; S, Cout: out std_logic);
	end component;
  
begin
  -- component instances
  H1: Half_Adder 
       port map (A => x7, B => interconnect(7), S => y0, C => interconnect(8));
  H2: Half_Adder 
       port map (A => interconnect(8), B => interconnect(6), S => y1, C => interconnect(9));
  H3: Half_Adder 
       port map (A => interconnect(5), B => interconnect(9), S => y2, C => y3);
  F1: Full_Adder
		 port map (A =>x0,B =>x1 ,Cin =>x2 , S =>interconnect(0) ,Cout =>interconnect(1));
  F2: Full_Adder
		 port map (A =>x3 ,B =>x4 ,Cin =>x5 , S =>interconnect(2) ,Cout =>interconnect(3));
  F3: Full_Adder
		 port map (A =>interconnect(3) ,B =>interconnect(1) ,Cin =>interconnect(4) , S =>interconnect(6) ,Cout =>interconnect(5) );
  F4: Full_Adder
		 port map (A =>interconnect(2) ,B =>interconnect(0) ,Cin =>x6 , S =>interconnect(7) ,Cout =>interconnect(4));
end Struct;
