library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_port is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           G : in  STD_LOGIC;
           H : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end nor_port;

architecture DataFlow of nor_port is

begin

	Z <= not (A or B or C or D or E or F or G or H);

end DataFlow;

