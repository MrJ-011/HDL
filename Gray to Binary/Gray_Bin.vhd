library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gray_Bin is 
    port(
        g: in std_logic_vector(3 downto 0);    
        b: out std_logic_vector(3 downto 0)  
    );
end Gray_Bin;

architecture behavioral of Gray_Bin is 
    signal bin_temp: std_logic_vector(3 downto 0); 
begin 
    
    bin_temp(3) <= not (g(3));
    bin_temp(2) <= not(bin_temp(3) xor g(2));
    bin_temp(1) <= not(bin_temp(2) xor g(1));
    bin_temp(0) <= not(bin_temp(1) xor g(0));

   
    b <= not bin_temp;
end behavioral;
