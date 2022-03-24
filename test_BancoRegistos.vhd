LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_BancoRegistos IS
END test_BancoRegistos;
 
ARCHITECTURE behavior OF test_BancoRegistos IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BancoRegistos
    PORT(
         clk : IN  std_logic;
         ESCR_R : IN  std_logic;
         Registo_1 : IN  std_logic_vector(2 downto 0);
         Registo_2 : IN  std_logic_vector(2 downto 0);
         Dados_R : IN  std_logic_vector(7 downto 0);
         Operando1 : OUT  std_logic_vector(7 downto 0);
         Operando2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ESCR_R : std_logic := '0';
   signal Registo_1 : std_logic_vector(2 downto 0) := (others => '0');
   signal Registo_2 : std_logic_vector(2 downto 0) := (others => '0');
   signal Dados_R : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Operando1 : std_logic_vector(7 downto 0);
   signal Operando2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BancoRegistos PORT MAP (
          clk => clk,
          ESCR_R => ESCR_R,
          Registo_1 => Registo_1,
          Registo_2 => Registo_2,
          Dados_R => Dados_R,
          Operando1 => Operando1,
          Operando2 => Operando2
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
      Registo_1 <= "000"; ESCR_R <= '1'; Dados_R <= "11111111"; wait for 100 ns;
		Registo_1 <= "001"; ESCR_R <= '1'; Dados_R <= "00000000"; wait for 100 ns;
		Registo_1 <= "010"; ESCR_R <= '1'; Dados_R <= "00000001"; wait for 100 ns;
		Registo_1 <= "011"; ESCR_R <= '1'; Dados_R <= "10110110"; wait for 100 ns;
		Registo_1 <= "100"; ESCR_R <= '1'; Dados_R <= "00000010"; wait for 100 ns;
		wait;
   end process;

END;
