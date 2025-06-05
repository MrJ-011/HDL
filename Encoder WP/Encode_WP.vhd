library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity Encode_WP is
 port(
 a : in STD_LOGIC_VECTOR(3 downto 0);
 b : out STD_LOGIC_VECTOR(1 downto 0)
 );
end Encode_WP;
architecture bhv of Encode_WP is
begin
process(a)
begin
 if (a = (not "1000")) then
 b <= "00";
 elsif (a = (not "0100")) then
 b <= "01";
 elsif (a = (not "0010")) then
 b <= "10";
 elsif (a = (not "0001")) then
 b <= "11";
 else
 b <= "ZZ";
 end if;
end process;
end bhv;
