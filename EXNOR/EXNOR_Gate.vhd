Library IEEE; 
           use IEEE.std_logic_1164.all; 
 
entity EXNOR_Gate is 
  Port ( 
   X: in STD_LOGIC; 
   Y: in STD_LOGIC; 
   Z: out STD_LOGIC 
      ); 
end EXNOR_Gate; 
 --Dataflow model 
 
architecture behav1 of EXNOR_Gate is 
begin 
 
 Z<= x xnor y; --Signal Assignment Statement 
 
end behav1; 
 
 -- Behavioral model 
 
architecture behav2 of EXNOR_Gate is 
begin 
 
                process (x, y) 
           begin 
			  If (x=y) then      
Z <= '1'; 
else 
Z<= '0'; 
end if; 
end process; 
end behav2; 