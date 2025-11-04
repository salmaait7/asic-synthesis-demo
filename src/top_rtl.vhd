library ieee;
use ieee.std_logic_1164.all;

entity top is
  port (
    A : in  std_logic;
    B : in  std_logic;
    C : in  std_logic;
    Q : out std_logic
  );
end entity;

architecture rtl of top is
begin
  Q <= (A or B) and C;
end architecture;
