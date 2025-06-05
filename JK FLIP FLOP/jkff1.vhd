library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity jkff1 is
    Port (
        j      : in  STD_LOGIC;
        k      : in  STD_LOGIC;
        clk    : in  STD_LOGIC;
        reset  : in  STD_LOGIC;   
        Q      : out STD_LOGIC
    );
end jkff1;

architecture Behavioral of jkff1 is
    signal div   : unsigned(22 downto 0) := (others => '0');
    signal clkd  : STD_LOGIC := '0';
    signal q_int : STD_LOGIC := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            div <= div + 1;
        end if;
    end process;

    clkd <= div(22); 

    process(clkd, reset)
    begin
        if reset = '0' then    
            q_int <= '0';
        elsif rising_edge(clkd) then
            if (j = '0' and k = '0') then
                null;
            elsif (j = '0' and k = '1') then
                q_int <= '0';   
            elsif (j = '1' and k = '0') then
                q_int <= '1';   
            elsif (j = '1' and k = '1') then
                q_int <= not q_int;  
            end if;
        end if;
    end process;

    Q <= q_int;

end Behavioral;
