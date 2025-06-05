library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Multiplexer is
Port ( d : in STD_LOGIC_VECTOR (1 downto 0);
s : in STD_LOGIC;
f : out STD_LOGIC);
end Multiplexer;
architecture Behavioral of Multiplexer is
begin
f<= d(0) when s='0' else
d(1) when s='1';
end Behavioral;
