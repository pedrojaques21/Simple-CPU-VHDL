LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY test_inv_port IS
END test_inv_port;
 
ARCHITECTURE behavior OF test_inv_port IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT inv_port
    PORT(
         X : IN  std_logic;
         NOTX : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';

 	--Outputs
   signal NOTX : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: inv_port PORT MAP (
          X => X,
          NOTX => NOTX
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
      X <= '1'; wait for 100 ns;	

      wait;
   end process;

END;
