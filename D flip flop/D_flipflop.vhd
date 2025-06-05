library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_flipflop is
    Port (
        d     : in  STD_LOGIC;
        clk   : in  STD_LOGIC;
        res_n : in  STD_LOGIC; 
        q     : out STD_LOGIC
    );
end D_flipflop;

architecture Behavioral of D_flipflop is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if res_n = '0' then         
                q <= '0';              
            else
                q <= d;               
            end if;
        end if;
    end process;
end Behavioral;
