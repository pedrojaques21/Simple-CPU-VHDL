library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_ALU : in  STD_LOGIC_VECTOR (3 downto 0);
           COMP_FLAG : out  STD_LOGIC_VECTOR (4 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0) );
end ALU;

architecture Behavioral of ALU is

begin
	process(Operando1, Operando2, SEL_ALU)
	
	variable temp : STD_LOGIC_VECTOR (7 downto 0);
	variable temp_flag : STD_LOGIC_VECTOR (4 downto 0);
	
		begin
			case SEL_ALU is
				when "0000" => 
					temp := Operando1 + Operando2;
            when "0001" => 
					temp := Operando1 - Operando2;
            when "0010" => 
					temp := Operando1 AND Operando2;
            when "0011" => 
					temp := Operando1 NAND Operando2;
            when "0100" => 
					temp := Operando1 OR Operando2;
            when "0101" => 
					temp := Operando1 NOR Operando2;
            when "0110" => 
					temp := Operando1 XOR Operando2;
            when "0111" => 
					temp := Operando1 XNOR Operando2;
				when "1000" =>
				
					if (Operando1 = Operando2) then
						temp_flag(0) := '1';
					else
						temp_flag(0) := '0';
					end if;
				
					if (Operando1 < Operando2) then
						temp_flag(1) := '1';
					else
						temp_flag(1) := '0';
					end if;
					
					if (Operando1 <= Operando2) then
						temp_flag(2) := '1';
					else
						temp_flag(2) := '0';
					end if;
					
					if (Operando1 >= Operando2) then
						temp_flag(3) := '1';
					else
						temp_flag(3) := '0';
					end if;
					
					if (Operando1 > Operando2) then
						temp_flag(4) := '1';
					else
						temp_flag(4) := '0';
					end if;							
				when others =>
					temp := (others => 'X');
			end case;
			COMP_FLAG <= temp_flag;
			Resultado <= temp;
	end process;
end Behavioral;