
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity count_display_tb is
end count_display_tb;

architecture Behavioral of count_display_tb is

    constant clk_period : time := 10 ns; -- clock period
    signal clock : std_logic := '0'; -- clock signal
    signal reset : std_logic := '0'; -- reset signal
    signal btn_count : std_logic := '0'; -- button signal
    signal leds : std_logic_vector(3 downto 0); -- LED output
    signal sevenseg : std_logic_vector(6 downto 0); -- seven segment output
    signal anode : std_logic_vector(3 downto 0); -- anode output

begin

    UUT: entity work.count_display -- instantiate the count_display module
        port map (
            clock => clock, -- connect clock signal
            reset => reset, -- connect reset signal
            btn_count => btn_count, -- connect button signal
            leds => leds, -- connect LED output
            sevenseg => sevenseg, -- connect seven segment output
            anode => anode -- connect anode output
        );

    clk_proc: process -- clock process
    begin
        clock <= '0'; -- set clock low
        wait for clk_period/2; -- wait half the clock period
        clock <= '1'; -- set clock high
        wait for clk_period/2; -- wait half the clock period
    end process;

    stim_proc: process -- reset process
    begin
        reset <= '1'; -- turn reset on
        wait for clk_period; -- wait one clock period

        reset <= '0'; -- turn reset off
        wait for clk_period; -- stop the process
        --Button Press 1
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
        --Button Press 2
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
        --Button Press 3 -- I added in a 50ms to see how it looks if button is held longer
        btn_count <='1';
        wait for 50 ms;
        btn_count <= '0';
        wait for 30ms;
        
        --Button Press 4
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 5
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 6
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 7
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 8
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 9
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 10 (A)
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 11 (B)
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 12 (C)
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 13 (D)
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 14 (E)
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
          --Button Press 15 (F)
        btn_count <='1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30ms;
        
        -- Button Press 16 should loop back from F to 0, 
        btn_count <= '1'; -- press button
        wait for 30ms;   -- hold button for 30 ms
        btn_count <= '0'; --release button
        wait for 30 ms; -- wait before reset
        
        -- Press 17 - increment from 0 to 1
        btn_count <= '1';
        wait for 30 ms;
        btn_count <= '0';
        wait for 30 ms;
        
        --Reset back to 0
        reset <= '1';
        wait for clk_period;
        reset <= '0';
        wait;
    end process;

end Behavioral;