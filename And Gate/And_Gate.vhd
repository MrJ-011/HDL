Library IEEE; 
            use IEEE.std_logic_1164.all; 
 
entity And_Gate is 
  port( 
   x : in STD_LOGIC; 
   y : in STD_LOGIC; 
   z : out STD_LOGIC 
      ); 
end And_Gate;
architecture behav1 of And_Gate is 
begin 
Z<= x and y; 
end behav1; -- Behavioral model --Signal Assignment Statement 
architecture behav2 of And_Gate is 
begin 
process (x, y) 
begin 
if (x='1' and y='1') then    -- Compare with truth table 
Z <= '1'; 
else 
Z <= '0'; 
end if; 
end process; 
end behav2;