

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Stepper_Controller is
port ( 
clk : in STD_LOGIC;
reset : in STD_LOGIC;
dir : in STD_LOGIC;
en : in STD_LOGIC;
q : out STD_LOGIC_VECTOR(3 downto 0));
end Stepper_Controller;

architecture Behavioral of Stepper_Controller is

component clk_div is
generic ( 
clk_in_freq : natural;
clk_out_freq : natural );

port (
reset : in STD_LOGIC;
clk_in : in STD_LOGIC;
clk_out : out STD_LOGIC );
end component;

component stepper_motor_FSM is
port (
clk : in STD_LOGIC;
dir : in STD_LOGIC;
en : in STD_LOGIC;
q : out STD_LOGIC_VECTOR(3 downto 0));
end component;

signal slow_clk : STD_LOGIC;
begin

clock_divider: clk_div
generic map ( 
clk_in_freq => 100000000,
clk_out_freq => 500)

port map ( 
reset => reset,
clk_in => clk,
clk_out => slow_clk );

stepper_FSM: stepper_motor_FSM 
port map ( 
clk => slow_clk,
        dir => dir,
        en => en,
        q => q );
        
end Behavioral;
