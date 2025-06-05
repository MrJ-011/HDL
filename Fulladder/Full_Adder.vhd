library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity Full_Adder is 
Port (a,b,ci: in STD_LOGIC; s,co: out STD_LOGIC); 
end Full_Adder; 
architecture Behavioral of Full_Adder is 
begin 
s<=a xor b xor ci; 
co<=(a and b)or (b and ci)or (ci and a); 
end Behavioral;