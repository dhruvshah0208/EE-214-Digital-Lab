library ieee;
use ieee.std_logic_1164.all;

entity sequence_generator_test_bench is
end entity;

architecture Behave of sequence_generator_test_bench is

component sequence_generator is
	generic (n: integer := 8);
	port (clk, reset: in std_logic;
		value: out integer);
end component sequence_generator;

	signal clk: std_logic := '0';
	signal reset: std_logic := '1';
	signal value: integer;

begin
	clk <= not clk after 5 ns;
	process
	begin
		wait until clk = '1';
		reset <= '0';
		wait;	
	end process;

	dut: sequence_generator
		generic map (n => 8)
		port map (clk => clk, reset => reset,value => value);
end Behave;