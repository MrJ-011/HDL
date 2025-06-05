library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCDUP_Count is
Port (
    clk     : in  STD_LOGIC;   
    reset_n : in  STD_LOGIC;   
    bcd_out : out STD_LOGIC_VECTOR(3 downto 0) 
);
end BCDUP_Count;

architecture Behavioral of BCDUP_Count is
    signal counter : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal slow_clk : STD_LOGIC := '0';
    signal clk_divider : integer range 0 to 12500000 := 0; 
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if clk_divider = 12500000 then 
                slow_clk <= not slow_clk;
                clk_divider <= 0;
            else
                clk_divider <= clk_divider + 1;
            end if;
        end if;
    end process;

    process(reset_n, slow_clk)
    begin
        if reset_n = '0' then
            counter <= "0000"; 
        elsif rising_edge(slow_clk) then
            if counter = "1001" then 
                counter <= "0000";   
            else
                counter <= counter + 1; 
            end if;
        end if;
    end process;

    bcd_out <= not counter; 
    
end Behavioral;
