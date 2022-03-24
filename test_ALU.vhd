LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_ALU IS
END test_ALU;
 
ARCHITECTURE behavior OF test_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Operando1 : IN  std_logic_vector(7 downto 0);
         Operando2 : IN  std_logic_vector(7 downto 0);
         SEL_ALU : IN  std_logic_vector(3 downto 0);
         COMP_FLAG : OUT  std_logic_vector(4 downto 0);
         Resultado : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Operando2 : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_ALU : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal COMP_FLAG : std_logic_vector(4 downto 0);
   signal Resultado : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Operando1 => Operando1,
          Operando2 => Operando2,
          SEL_ALU => SEL_ALU,
          COMP_FLAG => COMP_FLAG,
          Resultado => Resultado
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
      Operando1 <= "00000001"; Operando2 <= "00000001"; 
		SEL_ALU <= "0000"; wait for 100 ns;
		SEL_ALU <= "0001"; wait for 100 ns;
		SEL_ALU <= "0010"; wait for 100 ns;
		SEL_ALU <= "0011"; wait for 100 ns;
		SEL_ALU <= "0100"; wait for 100 ns;
		SEL_ALU <= "0101"; wait for 100 ns;
		SEL_ALU <= "0110"; wait for 100 ns;
		SEL_ALU <= "0111"; wait for 100 ns;
		SEL_ALU <= "1000"; wait for 100 ns;
		
		Operando1 <= "00000010"; Operando2 <= "00000001";
		SEL_ALU <= "1000"; wait for 100 ns;
		Operando1 <= "00000000"; Operando2 <= "00000001";
		SEL_ALU <= "1000"; wait for 100 ns;

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
