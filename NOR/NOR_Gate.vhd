Library IEEE; 
           use IEEE.std_logic_1164.all; 
 
entity NOR_Gate is 
  Port ( 
   X: in STD_LOGIC; 
   Y: in STD_LOGIC; 
   Z: out STD_LOGIC 
      ); 
end NOR_Gate; 
--Dataflow model 
architecture behav1 of NOR_Gate is 
begin 
Z<= x nor y; --Signal Assignment Statement  
end behav1; -- Behavioral model 
architecture behav2 of NOR_Gate is 
begin 
process (x, y) 
begin 
If (x='0' and y='0') then   -- Compare with truth table 
Z <= '1'; 
else 
Z <= '0'; 
end if; 
end process; 
end behav2; 