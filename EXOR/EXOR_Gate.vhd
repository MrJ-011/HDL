Library IEEE; 
           use IEEE.std_logic_1164.all; 
 
entity EXOR_Gate is 
  Port ( 
   X: in STD_LOGIC; 
   Y: in STD_LOGIC; 
   Z: out STD_LOGIC 
                      ); 
end EXOR_Gate; 
 --Dataflow model 
 
architecture behav1 of EXOR_Gate is 
begin 
 
 Z<= x xor y; --Signal Assignment Statement 
 
end behav1;
 
architecture behav2 of EXOR_Gate is 
begin 
 
                process (x, y) 
           begin 
 
          If (x/=y) then      -- Compare with truth table 
                          Z <= '1'; 
            else 
                Z<= '0'; 
           end if; 
 
                 end process; 
 
             end behav2; 