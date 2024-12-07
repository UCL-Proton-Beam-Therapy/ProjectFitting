-- Testbench 1 for linear Regression
-- Case Perfect Fit

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PerfectFit is
end PerfectFit;

architecture Behavioral of PerfectFit is
    signal clk : std_logic := '0';
    signal reset : std_logic := '1';
    signal x1, x2, x3 : signed(15 downto 0);
    signal y1, y2, y3 : signed(15 downto 0);
    signal gradient : signed(31 downto 0);
    signal intersect : signed(31 downto 0); 
    
begin

    clk_process : process
    begin
        clk <= '0';
        wait for 2ns;
        clk <= '1';
        wait for 2ns;
    end process;
    
    uut : entity work.MainFitting
        port map(
            clk => clk,
            reset => reset,
            x1 => x1,
            x2 => x2,
            x3 => x3,
            y1 => y1,
            y2 => y2,
            y3 => y3,
            gradient => gradient,
            intersect => intersect
        );
        
    stimulus: process
    begin
        wait for 10ns;
        reset <= '0';
        
        x1 <= TO_SIGNED(1 ,16);
        x2 <= TO_SIGNED(2 ,16);
        x3 <= TO_SIGNED(3 ,16);
        y1 <= TO_SIGNED(1 ,16);
        y2 <= TO_SIGNED(2 ,16);
        y3 <= TO_SIGNED(3 ,16);
        
        wait for 50ns;
        
        wait;
    end process;  
    
end Behavioral;
