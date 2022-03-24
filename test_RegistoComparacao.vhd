LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_RegistoComparacao IS
END test_RegistoComparacao;
 
ARCHITECTURE behavior OF test_RegistoComparacao IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegistoComparacao
    PORT(
         clk : IN  std_logic;
         COMP_FLAG : IN  std_logic_vector(4 downto 0);
         ESCR_F : IN  std_logic;
         R_FLAG : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal COMP_FLAG : std_logic_vector(4 downto 0) := (others => '0');
   signal ESCR_F : std_logic := '0';

 	--Outputs
   signal R_FLAG : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegistoComparacao PORT MAP (
          clk => clk,
          COMP_FLAG => COMP_FLAG,
          ESCR_F => ESCR_F,
          R_FLAG => R_FLAG
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
      COMP_FLAG <= "00101"; ESCR_F <= '0'; wait for 100 ns;
		ESCR_F <= '1'; wait for 100 ns;
		ESCR_F <= '0'; wait for 100 ns;
		COMP_FLAG <= "00000"; wait for 100 ns;
		ESCR_F <= '1'; wait for 100 ns;

      wait;
   end process;

END;
