library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Demultiplexer is
port(f:in std_logic;
s:in std_logic_vector(1 downto 0);
y:out std_logic_vector(3 downto 0));
end Demultiplexer;
architecture behavioral of Demultiplexer is
begin
y(0)<=f when s="00"else'1';
y(1)<=f when s="01"else'1';
y(2)<=f when s="10"else'1';
y(3)<=f when s="11"else'1';
end behavioral;
