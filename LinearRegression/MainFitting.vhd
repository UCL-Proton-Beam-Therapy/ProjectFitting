-- FPGA Curve Fitting
-- Author: Febian
-- Date created 14/10/2024 

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MainFitting is
    port(
        clk : in std_logic;
        reset : in std_logic;
        x1, x2, x3 : in signed(15 downto 0);
        y1, y2, y3 : in signed(15 downto 0);
        gradient : out signed(31 downto 0);
        intersect : out signed(31 downto 0)       
    );
end MainFitting;

architecture Behavioral of MainFitting is

    Signal sum_x    : signed(31 downto 0);
    Signal sum_y    : signed(31 downto 0);
    Signal sum_x2    : signed(31 downto 0);
    Signal sum_xy    : signed(31 downto 0);
    Signal m, b    : signed(31 downto 0);
    Signal temp_m, temp_b   : signed(63 downto 0);
    constant n : signed(31 downto 0):= to_signed(3, 32);
    
begin

  process(clk)
    begin
    if rising_edge(clk) then
        if reset = '1' then
            sum_x <= (others => '0');
            sum_y <= (others => '0');
            sum_x2 <= (others => '0');
            sum_xy <= (others => '0');
            m <= (others => '0');
            b <= (others => '0');
        else
            sum_x <= resize(x1 + x2 + x3, 32);
            sum_y <= resize(y1 + y2 + y3, 32);
            sum_x2 <= resize(x1*x1 + x2*x2 + x3*x3, 32);
            sum_xy <= resize(x1*y1 + x2*y2 + x3*y3, 32);
            
            temp_m <= (n*sum_xy - sum_x*sum_y)/(n*sum_x2 - sum_x*sum_x);
            m <= resize(temp_m, 32);
            
            temp_b <= (sum_y - m*sum_x)/n;
            b <= resize(temp_b, 32);
        end if;
    end if;
  end process;

  gradient <= m;
  intersect <= b;

end Behavioral;
