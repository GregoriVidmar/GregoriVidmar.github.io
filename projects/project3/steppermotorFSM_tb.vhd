
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity stepper_motor_FSM_tb is
--  Port ( );
end stepper_motor_FSM_tb;

architecture Behavioral of stepper_motor_FSM_tb is
signal clk : STD_LOGIC := '0';
signal dir : STD_LOGIC := '1';
signal en : STD_LOGIC := '1';
signal q : STD_LOGIC_VECTOR(3 downto 0);
begin

DUT: entity work.stepper_motor_FSM
port map (
clk => clk,
dir => dir,
en => en,
q => q );

clock_process : process
begin
clk <= '0';
wait for 5 us;
clk <= '1';
wait for 5 us;
end process;

stimulus_process : process
begin
en <= '1';
dir <= '1';
wait for 40 us;

dir <= '0';
wait for 40 us;

wait;
end process;
end Behavioral;
