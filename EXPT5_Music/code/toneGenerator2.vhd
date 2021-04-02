-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;


entity toneGenerator2 is
port (toneOut : out std_logic; --this pin will give your notes output
clk : in std_logic;
LED : out std_logic_vector(7 downto 0);
switch : in std_logic_vector(7 downto 0));
end entity toneGenerator2;
--...............Start the architecture here......................
-------------------CODE
-------------------CODE

architecture behav of toneGenerator2 is


begin
	process(clk)
variable count_sa1: integer range 0 to 1E6 := 0;
variable count_re: integer range 0 to 1E6  := 0;
variable count_ga: integer range 0 to 1E6  := 0;
variable count_ma: integer range 0 to 1E6  := 0;
variable count_pa: integer range 0 to 1E6  := 0;
variable count_dha: integer range 0 to 1E6  := 0;
variable count_ni: integer range 0 to 1E6  := 0;
variable count_sa2: integer range 0 to 1E6  := 0;
variable sa1:std_logic := '0';
variable re:std_logic := '0';
variable ga:std_logic := '0';
variable ma:std_logic := '0';
variable pa:std_logic := '0';
variable dha:std_logic := '0';
variable ni:std_logic := '0';
variable sa2:std_logic := '0';

	begin
	if (clk = '1' and clk' event) then
		if(switch(0) = '1') then	
			if (count_sa1 = 104168) then--240Hz
			count_sa1 := 1;
			sa1 := not sa1;
			else
			count_sa1 := count_sa1 + 1;
			end if;					
		toneOut <= sa1;
		LED <= (0 => '1', others => '0');
		elsif(switch(1) = '1') then
			if (count_re = 92594) then--240Hz
			count_re := 1;
			re := not re;
			else
			count_re := count_re + 1;
			end if;					
		toneOut <= re;
		LED <= (1 => '1', others => '0');
		elsif(switch(2) = '1') then			
			if (count_ga = 83334) then--240Hz
			count_ga := 1;
			ga := not ga;
			else
			count_ga := count_ga + 1;
			end if;
		toneOut <= ga;
		LED <= (2 => '1', others => '0');
		elsif(switch(3) = '1') then			
			if (count_ma = 78126) then--240Hz
			count_ma := 1;
			ma := not ma;
			else
			count_ma := count_ma + 1;
			end if;					
		toneOut <= ma;
		LED <= (3 => '1', others => '0');
		elsif(switch(4) = '1') then				
			if (count_pa = 69445) then--240Hz
			count_pa := 1;
			pa := not pa;
			else
			count_pa := count_pa + 1;
			end if;					
		toneOut <= pa;
		LED <= (4 => '1', others => '0');
		elsif(switch(5) = '1') then				
			if (count_dha = 62500) then--240Hz
			count_dha := 1;
			dha := not dha;
			else
			count_dha := count_dha + 1;
			end if;					
		toneOut <= dha;
		LED <= (5 => '1', others => '0');
		elsif(switch(6) = '1') then				
			if (count_ni = 55556) then--240Hz
			count_ni:= 1;
			ni := not ni;
			else
			count_ni:= count_ni + 1;
			end if;					
		toneOut <= ni;
		LED <= (6 => '1', others => '0');
		elsif(switch(7) = '1') then				
			if (count_sa2 = 52084) then--240Hz
			count_sa2 := 1;
			sa2 := not sa2;
			else
			count_sa2 := count_sa2 + 1;
			end if;					
		toneOut <= sa2;
		LED <= (7 => '1', others => '0');
		
		end if;	
	
	end if;
	end process;


end behav;
