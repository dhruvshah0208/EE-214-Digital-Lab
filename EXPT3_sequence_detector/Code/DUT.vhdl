-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
component top_level is
port(	x: 	in std_logic_vector(1 downto 0);
		clk:	in std_logic;
		y:	 	out std_logic
		);
end component ;

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
begin
   add_instance: top_level 
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					x		=> input_vector(2 downto 1),
					clk	=> input_vector(0),
					y 		=> output_vector(0)
				);
end DutWrap;

