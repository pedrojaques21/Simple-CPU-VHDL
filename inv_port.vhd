library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inv_port is
    Port ( X : in  STD_LOGIC;
           NOTX : out  STD_LOGIC);
end inv_port;

architecture DataFlow of inv_port is

begin

	NOTX <= not X;

end DataFlow;

