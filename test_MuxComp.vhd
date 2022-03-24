LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_MuxComp IS
END test_MuxComp;
 
ARCHITECTURE behavior OF test_MuxComp IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MuxComp
    PORT(
         R_FLAG : IN  std_logic_vector(4 downto 0);
         SEL_F : IN  std_logic_vector(2 downto 0);
         S_FLAG : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R_FLAG : std_logic_vector(4 downto 0) := (others => '0');
   signal SEL_F : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal S_FLAG : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MuxComp PORT MAP (
          R_FLAG => R_FLAG,
          SEL_F => SEL_F,
          S_FLAG => S_FLAG
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
      R_FLAG <= "00001"; 
		SEL_F <= "000"; wait for 100 ns;	
		SEL_F <= "001"; wait for 100 ns;	
		SEL_F <= "010"; wait for 100 ns;	
		SEL_F <= "011"; wait for 100 ns;	
		SEL_F <= "100"; wait for 100 ns;

		R_FLAG <= "00010"; 
		SEL_F <= "000"; wait for 100 ns;	
		SEL_F <= "001"; wait for 100 ns;	
		SEL_F <= "010"; wait for 100 ns;	
		SEL_F <= "011"; wait for 100 ns;	
		SEL_F <= "100"; wait for 100 ns;
		
		R_FLAG <= "00100"; 
		SEL_F <= "000"; wait for 100 ns;	
		SEL_F <= "001"; wait for 100 ns;	
		SEL_F <= "010"; wait for 100 ns;	
		SEL_F <= "011"; wait for 100 ns;	
		SEL_F <= "100"; wait for 100 ns;
		
		R_FLAG <= "01000"; 
		SEL_F <= "000"; wait for 100 ns;	
		SEL_F <= "001"; wait for 100 ns;	
		SEL_F <= "010"; wait for 100 ns;	
		SEL_F <= "011"; wait for 100 ns;	
		SEL_F <= "100"; wait for 100 ns;
		
		R_FLAG <= "10000"; 
		SEL_F <= "000"; wait for 100 ns;	
		SEL_F <= "001"; wait for 100 ns;	
		SEL_F <= "010"; wait for 100 ns;	
		SEL_F <= "011"; wait for 100 ns;	
		SEL_F <= "100"; wait for 100 ns;

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
