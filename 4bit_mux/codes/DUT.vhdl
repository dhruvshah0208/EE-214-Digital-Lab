-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(0 downto 0)
			);
end entity;

architecture DutWrap of DUT is

component mux is
   port(
		enable : in std_logic;
		control_signals:in std_logic_vector(2 downto 1);
		inputs: in std_logic_vector(4 downto 1);
		output: out std_logic
		);
end component;

	begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mux 
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					inputs(4)				=> input_vector(0),
					inputs(3)				=> input_vector(1),
					inputs(2)				=> input_vector(2),
					inputs(1)				=> input_vector(3),
					control_signals(1)	=> input_vector(4),
					control_signals(2)	=> input_vector(5),
					enable					=> input_vector(6),
					-- order of outputs {output_carry,output_sum}
					output 	=> output_vector(0));
end DutWrap;

