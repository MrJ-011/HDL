library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Decoder is
Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
b : out STD_LOGIC_VECTOR (3 downto 0));
end Decoder;
architecture Behavioral of Decoder is
begin

process(a)
begin
 if (a = (not "000")) then
 b <= (not "0001");
 elsif (a = (not "001")) then
 b <= (not "0010");
 elsif (a = (not "010")) then
 b <= (not "0100");
 elsif (a = (not "011")) then
 b <= (not "1000");
 else
 b <= "ZZZZ";
 end if;
end process;
end Behavioral;
