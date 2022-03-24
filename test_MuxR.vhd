LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_MuxR IS
END test_MuxR;
 
ARCHITECTURE behavior OF test_MuxR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MuxR
    PORT(
         Constante : IN  std_logic_vector(7 downto 0);
         Dados_M : IN  std_logic_vector(7 downto 0);
         Dados_IN : IN  std_logic_vector(7 downto 0);
         Resultado : IN  std_logic_vector(7 downto 0);
         SEL_R : IN  std_logic_vector(1 downto 0);
         Dados_R : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal Resultado : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_R : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Dados_R : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MuxR PORT MAP (
          Constante => Constante,
          Dados_M => Dados_M,
          Dados_IN => Dados_IN,
          Resultado => Resultado,
          SEL_R => SEL_R,
          Dados_R => Dados_R
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
      Constante <= "00000001"; Dados_M <= "00000010"; Dados_IN <= "00000011"; Resultado <= "00000100"; 
		SEL_R <= "00"; wait for 100 ns;
		SEL_R <= "01"; wait for 100 ns;
		SEL_R <= "10"; wait for 100 ns;
		SEL_R <= "11"; wait for 100 ns;

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
