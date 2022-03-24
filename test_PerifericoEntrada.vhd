LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_PerifericoEntrada IS
END test_PerifericoEntrada;
 
ARCHITECTURE behavior OF test_PerifericoEntrada IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PerifericoEntrada
    PORT(
         PIN : IN  std_logic_vector(7 downto 0);
         ESCR_P : IN  std_logic;
         Dados_IN : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal ESCR_P : std_logic := '0';

 	--Outputs
   signal Dados_IN : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PerifericoEntrada PORT MAP (
          PIN => PIN,
          ESCR_P => ESCR_P,
          Dados_IN => Dados_IN
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
      PIN <= "00000100"; ESCR_P <= '1' ;wait for 100 ns;	
		PIN <= "00001010"; ESCR_P <= '0' ;wait for 100 ns;	
		PIN <= "00100001"; ESCR_P <= '1' ;wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
