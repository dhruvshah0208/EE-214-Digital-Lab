-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity prime_mux is -- A+B and A-B
   port(
		inputA		: in std_logic_vector(3 downto 0);	-- A
		inputB		: in std_logic_vector(3 downto 0);  -- B
		LED7			: out std_logic;
		LED8  		: out std_logic;
		LED5_1		: out std_logic_vector(4 downto 0)		
		);
end entity;

architecture struct of prime_mux is

	component add_sub_4_bit is -- A+B and A-B
		port(
			input1		: in std_logic_vector(3 downto 0);	-- A
			input2		: in std_logic_vector(3 downto 0);  -- B
			input_carry : in std_logic;
			output_sum	: out std_logic_vector(3 downto 0);
			output_carry: out std_logic		
			);
	end component;

	component prime_check_4_bit is
   port(
		inputs: in std_logic_vector(3 downto 0);
		output: out std_logic
		);
	end component;

signal intermediate_carry1 : std_logic_vector (4 downto 0); -- 5 bits A + B
signal intermediate_carry2 : std_logic_vector (4 downto 0); -- 5 bits A - B
signal pA						: std_logic;
signal pB						: std_logic;
signal intermediate_output	: std_logic_vector(4 downto 0);	
signal intermediate_signal : std_logic;
begin
	prime_check_1 : prime_check_4_bit
		port map (inputs => inputA,output => pA);
	
	prime_check_2 : prime_check_4_bit
		port map (inputs => inputB,output => pB);
	
	intermediate_signal <= pA and pB;
	A_S : add_sub_4_bit
		port map (input1 => inputA,input2 => inputB,input_carry=>intermediate_signal,
					 output_sum => intermediate_output(3 downto 0),output_carry => intermediate_output(4));
	LED7 <= pB;
	LED8 <= pA;
	LED5_1(4) <= intermediate_output(4) and (pA or pB);
	LED5_1(3) <= intermediate_output(3) and (pA or pB);
	LED5_1(2) <= intermediate_output(2) and (pA or pB);
	LED5_1(1) <= intermediate_output(1) and (pA or pB);
	LED5_1(0) <= intermediate_output(0) and (pA or pB);
end struct;

