LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity music is
generic(
	n:integer range 0 to 100 := 4);
port (toneOut : out std_logic;
	clk_50, resetn : in std_logic;
	LED : out std_logic_vector(7 downto 0));
	
end entity music;


architecture fsm of music is

type note_sequence is array (0 to n-1) of std_logic_vector(7 downto 0);


--variable sequence_1 : note_sequence := (sa,sa,ga,ga,sa,sa,ga,ga,sa,sa,ga,ga,ma,ga,re,sa);
signal note_code : std_logic_vector(7 downto 0);
signal clock_music : std_logic := '0';
signal index_current: integer range -1 to n:= -1; -- -1 indicates silent

component toneGenerator2 is
port (
toneOut : out std_logic; --this pin will give your notes output
clk : in std_logic;
LED : out std_logic_vector(7 downto 0);
switch : in std_logic_vector(7 downto 0));
end component;


begin
   tone_generator: toneGenerator2
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					clk => clk_50,
					LED => LED,
					switch => note_code,
					toneOut  => toneOut 	
					);
					
	process(clk_50,resetn,index_current)	
	
	variable ni1:std_logic_vector(7 downto 0) := "00000001";
	variable sa:std_logic_vector(7 downto 0) := "00000010";
	variable re:std_logic_vector(7 downto 0) := "00000100";
	variable ga:std_logic_vector(7 downto 0) := "00001000";
	variable ma:std_logic_vector(7 downto 0) := "00010000";
	variable pa:std_logic_vector(7 downto 0) := "00100000";
	variable dha:std_logic_vector(7 downto 0) := "01000000";
	variable ni2:std_logic_vector(7 downto 0) := "10000000";

	variable index_next: integer range -1 to n := -1; -- -1 indicates silent
	variable timecounter : integer range 0 to 1E8 := 0;
	
	variable sequence_1 : note_sequence := (sa,sa,ga,ga); -- test sequence of 4 notes

	begin
	
		if (clk_50 = '1' and clk_50' event) then
			if (resetn = '1') then
				index_current <= -1;
				timecounter := 0;
			elsif (timecounter = 125E5) then--4Hz				
				index_current <= index_next;
				timecounter := 0;
			else
			timecounter := timecounter + 1;
			end if;
		end if;
		
		-- state task
		case index_current is
			WHEN -1 => -- SILENT
				note_code <= "00000000";
				index_next := 0;
			WHEN 0 =>	
				note_code <= sequence_1(0);
				index_next := 1;
			WHEN 1 =>	
				note_code <= sequence_1(1);
				index_next := 2;
			WHEN 2 =>	
				note_code <= sequence_1(2);
				index_next := 3;
			WHEN 3 =>	
				note_code <= sequence_1(3);
				index_next := 0;				
			WHEN others =>
				note_code <= "00000000";
		END CASE ;
	
--		generate 4Hz clock (0.25s time period) from 50MHz clock (clock_music)

		end process;
	
	-- instantiate the component of toneGenerator 
end fsm;