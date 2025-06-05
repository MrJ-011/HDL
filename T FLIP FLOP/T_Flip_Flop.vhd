library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity T_Flip_Flop is
    Port ( t    : in  STD_LOGIC;     
           clk  : in  STD_LOGIC;     
           rst  : in  STD_LOGIC;     
           q    : buffer STD_LOGIC   
    );
end T_Flip_Flop;

architecture Behavioral of T_Flip_Flop is
    signal div   : std_logic_vector(22 downto 0) := (others => '0'); 
    signal clkd  : std_logic;  
begin   

    process(clk)
    begin
        if rising_edge(clk) then
            div <= div + 1;
        end if;
    end process;

    clkd <= div(20);  

    process(clkd, rst)
    begin
        if rst = '0' then      
            q <= '0';            
        elsif rising_edge(clkd) then
            if t = '1' then      
                q <= not q;     
            end if;
        end if;
    end process;

end Behavioral;
