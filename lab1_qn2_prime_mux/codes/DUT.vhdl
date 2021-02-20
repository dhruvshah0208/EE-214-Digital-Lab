-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0); -- {A,B}
       	output_vector: out std_logic_vector(6 downto 0)); -- {8,7,5,4,3,2,1}
end entity;

architecture DutWrap of DUT is
component prime_mux is -- A+B and A-B
   port(
		inputA		: in std_logic_vector(3 downto 0);	-- A
		inputB		: in std_logic_vector(3 downto 0);  -- B
		LED7			: out std_logic;
		LED8  		: out std_logic;
		LED5_1		: out std_logic_vector(4 downto 0)		
		);
end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: prime_mux 
			port map (
					-- order of inputs {input_1,input_2,input_carry}
					inputA 		=> input_vector(7 downto 4),
					inputB   	=> input_vector(3 downto 0),
					-- order of outputs {output_carry,output_sum}
					LED7 			=> output_vector(5),
					LED8 			=> output_vector(6),
					LED5_1		=> output_vector(4 downto 0)
					);

end DutWrap;

