library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Encoder_WIP is
    port(
        a : in STD_LOGIC_VECTOR(3 downto 0);
        b : out STD_LOGIC_VECTOR(1 downto 0)
    );
end Encoder_WIP;

architecture bhv of Encoder_WIP is
begin
process(a)
begin
    if (a = (not "0111")) then
        b <= (not "00") ;
    elsif (a = ("0110")) then
        b <= "01";
    elsif (a = (not "0101")) then
        b <= "10";
    elsif (a = (not "0100")) then
        b <= (not "11");
    else
        b <= "ZZ";  -- If no inputs are active
    end if;
end process;
end bhv;
