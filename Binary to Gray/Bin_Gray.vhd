library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Bin_Gray is 
    port(
        b: in std_logic_vector(3 downto 0);   
        g: out std_logic_vector(3 downto 0)  
    );
end Bin_Gray;

architecture behavioral of Bin_Gray is 
begin 
    g(3) <=  b(3);
    g(2) <= not (b(3) xor b(2));
    g(1) <= not (b(2) xor b(1));
    g(0) <= not (b(1) xor b(0));
end behavioral;
