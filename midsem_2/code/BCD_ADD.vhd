-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity BCD_ADD is -- Inputs will be all 8 bits
   port(
		A: in std_logic_vector(3 downto 0);
		B :in std_logic_vector(3 downto 0); 
		outputs: out std_logic_vector(5 downto 0)
		);
end entity;

architecture structural of BCD_ADD is
component decimal_adjust is
   port(
		inputs	: in std_logic_vector(3 downto 0);
		carry_in	: in std_logic;
		outputs	: out std_logic_vector(3 downto 0);
		carry_out: out std_logic
		);
end component;
component ripple_carry_adder is
   port(input_1: in std_logic_vector(3 downto 0);
		  input_2: in std_logic_vector(3 downto 0);
        input_carry: in std_logic;	
		  output_sum: out std_logic_vector(3 downto 0);
		  output_carry: out std_logic);
end component;

signal A_BCD: std_logic_vector(3 downto 0);
signal c_out_1: std_logic;
signal c_out_2: std_logic;
signal carry_out_RCA:std_logic; -- This wont be assigned to anything
signal sum: std_logic_vector(3 downto 0);
signal B_MSB:std_logic_vector(3 downto 0);
begin
	B_MSB <= '0' & '0' & B(3) & B(2);
	DA_1: decimal_adjust
      port map (inputs => A, carry_in => '0', outputs => A_BCD, carry_out => c_out_1);
	FA: ripple_carry_adder
      port map (input_1 => A_BCD, input_2 => B_MSB, input_carry => '0', output_sum => sum,output_carry => carry_out_RCA);
	DA_2: decimal_adjust
      port map (inputs => sum, carry_in => '0', outputs => outputs(3 downto 0), carry_out => c_out_2);

	outputs(4) <= c_out_1 or c_out_2;
	outputs(5) <= '0';

end structural;

