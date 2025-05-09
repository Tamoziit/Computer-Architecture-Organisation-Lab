----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2025 20:26:40
-- Design Name: 
-- Module Name: FA_bh - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA_bh is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : in STD_LOGIC;
           s : out STD_LOGIC;
           c : out STD_LOGIC);
end FA_bh;

architecture Behavioral of FA_bh is

begin
process(x, y, z)
begin
if(x = '0') then
if(y = z) then
s <= '0';
else
s <= '1';
end if;
if(y = '0' OR z = '0') then
c <= '0';
else
c <= '1';
end if;
else
if(y = z) then
s <= '1';
else
s <= '0';
end if;
if(y = '0' AND z = '0') then
c <= '0';
else
c <= '1';
end if;
end if;
end process;
end Behavioral;
