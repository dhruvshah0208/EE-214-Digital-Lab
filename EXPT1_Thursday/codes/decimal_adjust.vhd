-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity decimal_adjust is
   port(
		inputs	: in std_logic_vector(3 downto 0);
		carry_in	: in std_logic;
		outputs	: out std_logic_vector(3 downto 0);
		carry_out: out std_logic
		);
end entity;

architecture structural of decimal_adjust is
	component mux_2_bit is
		port(
			A: in std_logic;
			B: in std_logic;
			control:in std_logic;
			output: out std_logic
			);
	end component;
component ripple_carry_adder is
   port(input_1: in std_logic_vector(3 downto 0);
		  input_2: in std_logic_vector(3 downto 0);
        input_carry: in std_logic;	
		  output_sum: out std_logic_vector(3 downto 0);
		  output_carry: out std_logic);
end component;
	component BCD_check is
		port(
			inputs: in std_logic_vector(4 downto 1);
			output: out std_logic
			);
	end component;

signal interconnect: std_logic_vector(3 downto 0);
signal internal_carry_1: std_logic;	
signal internal_carry_2: std_logic;	
signal mux_control : std_logic;
signal output_check_BCD:std_logic;
begin
	BCD: BCD_check
		port map(inputs => inputs,output => output_check_BCD);
		
	mux_control <= (not(output_check_BCD)) or (carry_in);
	
	F1: ripple_carry_adder
		port map (input_1 =>inputs,input_2 => "0110" ,input_carry => '0' , output_sum =>interconnect ,output_carry =>internal_carry_1);
	internal_carry_2 <= internal_carry_1 or carry_in;
	
	MUX_last: mux_2_bit
		port map (A =>internal_carry_2,B => carry_in ,control => mux_control , output => carry_out);
   
	MUX_GEN : for i in 0 to 3 generate
         MUX :
         mux_2_bit 
			port map (A =>interconnect(i),B => inputs(i) ,control => mux_control , output =>outputs(i));
	end generate;
   
	

end structural;

