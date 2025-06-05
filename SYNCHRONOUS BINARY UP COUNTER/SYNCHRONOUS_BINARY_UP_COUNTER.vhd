library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SYNCHRONOUS_BINARY_UP_COUNTER is
Port (
    clk     : in  STD_LOGIC;  
    reset_n : in  STD_LOGIC;   
    leds    : out STD_LOGIC_VECTOR(2 downto 0) 
);
end SYNCHRONOUS_BINARY_UP_COUNTER;

architecture Behavioral of SYNCHRONOUS_BINARY_UP_COUNTER is
    signal counter     : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal slow_clk    : STD_LOGIC := '0';
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
            counter <= "000";
        elsif rising_edge(slow_clk) then
            counter <= counter + 1; 
        end if;
    end process;

    
    leds <= counter;
    
end Behavioral;
