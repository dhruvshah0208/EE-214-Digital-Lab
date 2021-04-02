-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
   port(
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0); 
		Y : out std_logic_vector(5 downto 0)
		);
end entity;

architecture struct of toplevel is
component BCD_ADD is -- Inputs will be all 8 bits
   port(
		A: in std_logic_vector(3 downto 0);
		B :in std_logic_vector(3 downto 0); 
		outputs: out std_logic_vector(5 downto 0)
		);
end component;
component DCR_A is -- Inputs will be all 8 bits
   port(
		A: in std_logic_vector(3 downto 0);
		B :in std_logic_vector(3 downto 0); 
		outputs: out std_logic_vector(5 downto 0)
		);
end component;

component mux is
   port(
		control_signals:in std_logic_vector(2 downto 1);
		inputs: in std_logic_vector(4 downto 1);
		output: out std_logic
		);
end component;

signal I0:std_logic_vector(5 downto 0);
signal I1:std_logic_vector(5 downto 0);
signal I2:std_logic_vector(5 downto 0);
signal I3:std_logic_vector(5 downto 0);

signal interconnect_1:std_logic_vector(3 downto 0);
signal interconnect_2:std_logic_vector(3 downto 0);
signal interconnect_3:std_logic_vector(3 downto 0);
signal interconnect_4:std_logic_vector(3 downto 0);
signal interconnect_5:std_logic_vector(3 downto 0);
signal interconnect_6:std_logic_vector(3 downto 0);
begin
	-- case 0
   case_0 : for i in 0 to 3 generate
         I0(i) <= not A(i);
			end generate;
	I0(5 downto 4) <= "00";
	
	-- case 1
	case_1: BCD_ADD
      port map (A => A, B => B, outputs => I1);
	
	-- case 2
	case_2: DCR_A
	   port map (A => A, B => B, outputs => I2);
	
	--case 3
	case_3 : for i in 0 to 3 generate
         I3(i) <= A(i) xor B(i);
			end generate;
	I3(5 downto 4) <= "00";

	interconnect_1 <= I3(0) & I2(0) & I1(0) & I0(0);
	interconnect_2 <= I3(1) & I2(1) & I1(1) & I0(1);
	interconnect_3 <= I3(2) & I2(2) & I1(2) & I0(2);
	interconnect_4 <= I3(3) & I2(3) & I1(3) & I0(3);
	interconnect_5 <= I3(4) & I2(4) & I1(4) & I0(4);
	interconnect_6 <= I3(5) & I2(5) & I1(5) & I0(5);
	
	mux_1 : mux 
	   port map (control_signals => B(1 downto 0), inputs => (interconnect_1), output => Y(0));
	
	mux_2 : mux 
	   port map (control_signals => B(1 downto 0), inputs => (interconnect_2), output => Y(1));
	
	mux_3 : mux 
	   port map (control_signals => B(1 downto 0), inputs => (interconnect_3), output => Y(2));
	
	mux_4 : mux 
	   port map (control_signals => B(1 downto 0), inputs => (interconnect_4), output => Y(3));
	
	mux_5 : mux 
	   port map (control_signals => B(1 downto 0), inputs => (interconnect_5), output => Y(4));
	
	mux_6 : mux 
	   port map (control_signals => B(1 downto 0), inputs => (interconnect_6), output => Y(5));


	
end struct;

