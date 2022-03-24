LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_PerifericoSaida IS
END test_PerifericoSaida;
 
ARCHITECTURE behavior OF test_PerifericoSaida IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PerifericoSaida
    PORT(
         ESCR_P : IN  std_logic;
         Operando1 : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         POUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ESCR_P : std_logic := '0';
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PerifericoSaida PORT MAP (
          ESCR_P => ESCR_P,
          Operando1 => Operando1,
          clk => clk,
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
      ESCR_P <= '0'; Operando1 <= "00000001"; wait for 100 ns;
		Operando1 <= "00000010"; wait for 100 ns;
		ESCR_P <= '1'; wait for 100 ns;

      wait;
   end process;

END;
