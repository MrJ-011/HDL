library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Comparator is
Port ( a,b : in STD_LOGIC_VECTOR (1 downto 0);
y : out STD_LOGIC_VECTOR (2 downto 0));
end Comparator;
architecture Behavioral of Comparator is
begin
y<= (not "100") when a>b else
(not "001") when a<b else
(not "010") when a=b;
end Behavioral;
