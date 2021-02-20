-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
   component ripple_carry_adder is
    port(input_1: in std_logic_vector(3 downto 0);
		  input_2: in std_logic_vector(3 downto 0);
        input_carry: in std_logic;	
		  output_sum: out std_logic_vector(3 downto 0);
		  output_carry: out std_logic);
  end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: ripple_carry_adder 
			port map (
					-- order of inputs {input_1,input_2,input_carry}
					input_1 		=> input_vector(8 downto 5),
					input_2   	=> input_vector(4 downto 1),
					input_carry => input_vector(0),
					
					-- order of outputs {output_carry,output_sum}
					output_carry => output_vector(4),
					output_sum => output_vector(3 downto 0));

end DutWrap;

