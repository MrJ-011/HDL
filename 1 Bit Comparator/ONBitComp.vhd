library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ONBitComp is
    Port ( 
        a, b : in  STD_LOGIC;
        y    : out  STD_LOGIC_VECTOR (2 downto 0)
    );
end ONBitComp;

architecture struct of ONBitComp is
begin
    
    y(0) <= not (a and (not b));      -- Y1: A > B
    y(1) <= not ((a and b) or ((not a) and (not b))); -- Y2: A = B
    y(2) <= not ((not a) and b);      -- Y3: A < B

end struct;
