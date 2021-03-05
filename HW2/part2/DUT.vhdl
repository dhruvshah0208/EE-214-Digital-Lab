-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(15 downto 0);
        output_vector: out std_logic_vector(8 downto 0));
end entity;

architecture DutWrap of DUT is
   component add_8bit is
    port (
A: in std_logic_vector(7 downto 0);
B: in std_logic_vector(7 downto 0);
sum: out std_logic_vector(7 downto 0);
carry_out : out std_logic
) ;
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: add_8bit
			port map (
					-- order of inputs Cin B A
					A => input_vector(15 downto 8),
					B => input_vector(7 downto 0),
					sum => output_vector(7 downto 0),
					carry_out => output_vector(8));

end DutWrap;

