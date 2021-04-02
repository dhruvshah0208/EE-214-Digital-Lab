-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DCR_A is
   port(
		A: in std_logic_vector(3 downto 0);
		B :in std_logic_vector(3 downto 0); 
		outputs: out std_logic_vector(5 downto 0)
		);
end entity;

architecture struct of DCR_A is
component ripple_carry_adder is
   port(input_1: in std_logic_vector(3 downto 0);
		  input_2: in std_logic_vector(3 downto 0);
        input_carry: in std_logic;	
		  output_sum: out std_logic_vector(3 downto 0);
		  output_carry: out std_logic);
end component;
signal carry_out_RCA:std_logic;
begin
	FA: ripple_carry_adder
      port map (input_1 => A, input_2 => "1111", input_carry => '0', output_sum => outputs(3 downto 0),output_carry => carry_out_RCA);
	outputs(5 downto 4) <= "00";
	
end struct;

