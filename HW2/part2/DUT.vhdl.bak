-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
        output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component ShiftLeftByOne is
    port (X: in std_logic_vector(7 downto 0);
		S: in std_logic;
		Y: out std_logic_vector(7 downto 0)
		);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: ShiftLeftByOne
			port map (
					-- order of inputs Cin B A
					S => input_vector(8),
					X => input_vector(7 downto 0),
					Y => output_vector(7 downto 0));

end DutWrap;

