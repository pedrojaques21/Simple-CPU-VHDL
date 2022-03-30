LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_PlacaMae IS
END test_PlacaMae;
 
ARCHITECTURE behavior OF test_PlacaMae IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PlacaMae
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         PIN : IN  std_logic_vector(7 downto 0);
         POUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PlacaMae PORT MAP (
          clk => clk,
          reset => reset,
          PIN => PIN,
          POUT => POUT
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.		
		PIN <= "11111111"; reset <= '1'; wait for clk_period*1;--40
		reset <= '0'; wait for clk_period*40;
	
		PIN <= "00000000"; reset <= '1'; wait for clk_period*1;--40
		reset <= '0'; wait for clk_period*40;
		
		PIN <= "00000001"; reset <= '1'; wait for clk_period*1;--40
		reset <= '0'; wait for clk_period*40;
		
		PIN <= "00011110"; reset <= '1'; wait for clk_period*1;--40
		reset <= '0'; wait for clk_period*40;
		
		PIN <= "00101010"; reset <= '1'; wait for clk_period*1;--40
		reset <= '0'; wait for clk_period*70;

      wait;
   end process;

END;
