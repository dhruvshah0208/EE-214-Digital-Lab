library ieee;
use ieee.std_logic_1164.all;

entity counter_test_bench is
end entity;

architecture Behave of counter_test_bench is

	component Counter is
	   generic (half_period: integer);
	   port (clk, reset: in std_logic;
		   up, down: in std_logic;
		   value: out std_logic);
  	end component Counter;

	signal clk: std_logic := '0';
	signal reset: std_logic := '1';
	signal up: std_logic;
	signal down: std_logic;
	signal value: std_logic;
begin
	up <= '1';
	down <= '0';

	clk <= not clk after 5 ns;
	process
	begin
		wait until clk = '1';
		reset <= '0';
		wait;	
	end process;

	dut: counter
		generic map (half_period => 8)
		port map (clk => clk, reset => reset, up => up, down => down, value => value);
end Behave;