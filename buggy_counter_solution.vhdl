```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity buggy_counter_solution is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count_out : out unsigned(3 downto 0) -- Using unsigned type
  );
end entity buggy_counter_solution;

architecture behavioral of buggy_counter_solution is
  signal count : unsigned(3 downto 0) := (others => '0'); -- Unsigned signal
begin
  process (clk, rst)
  begin
    if rst = '1' then
      count <= (others => '0');
    elsif rising_edge(clk) then
      count <= count + 1;
    end if;
  end process;

  count_out <= count; 

end architecture behavioral;
```