LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity music is
port (toneOut : out std_logic;
	clk_50, resetn : in std_logic;
	LED : out std_logic_vector(7 downto 0));
end entity music;

architecture fsm of music is
component toneGenerator2 is
port (
toneOut : out std_logic; --this pin will give your notes output
clk : in std_logic;
LED : out std_logic_vector(7 downto 0);
switch : in std_logic_vector(7 downto 0));
end component;

type FsmState is (sa,ga,sa,Silent);

signal fsm_state: FsmState;
signal note_code : std_logic_vector(7 downto 0);
signal clock_music : std_logic := '0';

begin

	process(clk_50,resetn)	-- Fill sensitivity list
	
	variable y_next_var : state_type;
	variable n_count : integer := 0;
	variable timecounter : integer range 0 to 1E8 := 0;
	
	begin
	
		y_next_var := y_present;
		n_count := count;

		case y_present is
			when Silent=>
					y_next_var := 
			WHEN sa =>	--if the machine in Sa state
				if((count = _) or (count = _) or ________) then
--				------------------Code here---------------------------
				end if;
				--assign the signal for switch which will be the input of toneGenerator
			WHEN -------------------------------------

			------------------Code here---------------------------
			------------------Code here---------------------------
			
			WHEN others =>
--			------------------Code here---------------------------
			------------------Code here---------------------------
				
				
		END CASE ;
	
--		generate 4Hz clock (0.25s time period) from 50MHz clock (clock_music)
	
		if (clk_50 = '1' and clk_50' event) then
			if (resetn = '1') then
				timecounter := 0;
			elsif (timecounter = 125E5) then--4Hz				
				timecounter := 0;
				clock_music <= not clock_music;
			else
				timecounter := timecounter + 1;
			end if;
		end if;
			
--		state transition	
		if (clock_music = '1' and clock_music' event) then
			if (resetn = '1') then
				y_present <= -----------------------
				count <= ---------------------------

			else 
				
			------------------Code here---------------------------
			------------------Code here---------------------------
			
			end if;
		end if;
	end process;
	tone_generator: toneGenerator2
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					clk => clk_50,
					LED => LED,
					switch => note_code,
					toneOut  => toneOut 	
					);
					
	-- instantiate the component of toneGenerator 
end fsm;