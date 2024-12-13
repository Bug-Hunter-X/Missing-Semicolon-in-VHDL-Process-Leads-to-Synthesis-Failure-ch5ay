```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity buggy_counter is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count : out integer range 0 to 15
  );
end entity buggy_counter;

architecture behavioral of buggy_counter is
  signal internal_count : integer range 0 to 15 := 0;
begin
  process (clk, rst)
  begin
    if rst = '1' then
      internal_count <= 0;
    elsif rising_edge(clk) then
      if internal_count = 15 then
        internal_count <= 0;
      else
        internal_count <= internal_count + 1;  -- Fixed: Semicolon added
      end if;
    end if;
  end process;
  count <= internal_count;
end architecture behavioral;
```