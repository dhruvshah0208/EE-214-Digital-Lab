-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component combo_8_counter is
		port (x0,x1,x2,x3,x4,x5,x6,x7: in std_logic; y0,y1,y2,y3: out std_logic);
	end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: combo_8_counter 
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					x0		=> input_vector(0),
					x1		=> input_vector(1),
					x2		=> input_vector(2),
					x3		=> input_vector(3),
					x4		=> input_vector(4),
					x5		=> input_vector(5),
					x6		=> input_vector(6),
					x7		=> input_vector(7),
					-- order of outputs {output_carry,output_sum}
					y0 	=> output_vector(0),
					y1 	=> output_vector(1),
					y2 	=> output_vector(2),
					y3 	=> output_vector(3));
end DutWrap;

