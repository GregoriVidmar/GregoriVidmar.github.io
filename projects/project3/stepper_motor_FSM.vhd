
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stepper_motor_FSM is
    Port ( clk : in STD_LOGIC;
           dir : in STD_LOGIC;
           en : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0));
end stepper_motor_FSM;

architecture Behavioral of stepper_motor_FSM is
TYPE state_type IS (S0, S1, S2, S3, S4);
SIGNAL state : state_type;
begin
PROCESS(clk)
begin
If clk'Event AND clk = '1' then

if en = '1' AND dir = '1' then
--clockwise steps
case state is 
when S0 => state <=S1;
when S1 => state <=S2;
when S2 => state <=S3;
when S3 => state <=S4;
when S4 => state <=S1;
end case;

elsif en = '1' and dir = '0' then
--counterclockwise steps
case state is 
when S0 => state <=S4;
when S4 => state <=S3;
when S3 => state <=S2;
when S2 => state <=S1;
when S1 => state <=S0;
end case;

elsif en = '0' then
state <= S0;
end if;
end if;
end process;

with state select
q <= "0000" when S0, -- All coils off
     "0001" when S1, -- Coil 1 on
     "0010" when S2, -- Coil 2 on
     "0100" when S3, -- coil 3 on
     "1000" when S4; -- Coil 4 on
end Behavioral;
