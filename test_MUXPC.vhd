LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_MUXPC IS
END test_MUXPC;
 
ARCHITECTURE behavior OF test_MUXPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUXPC
    PORT(
         S_FLAG : IN  std_logic;
         SEL_PC : IN  std_logic_vector(2 downto 0);
         Operando1 : IN  std_logic_vector(7 downto 0);
         ESCR_PC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S_FLAG : std_logic := '0';
   signal SEL_PC : std_logic_vector(2 downto 0) := (others => '0');
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal ESCR_PC : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUXPC PORT MAP (
          S_FLAG => S_FLAG,
          SEL_PC => SEL_PC,
          Operando1 => Operando1,
          ESCR_PC => ESCR_PC
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      S_FLAG <= '1';
		Operando1 <= "00000001"; 
		SEL_PC <= "000"; wait for 100 ns;
		SEL_PC <= "001"; wait for 100 ns;
		SEL_PC <= "010"; wait for 100 ns;
		SEL_PC <= "011"; wait for 100 ns;
		SEL_PC <= "100"; wait for 100 ns;

      wait;
   end process;

END;
