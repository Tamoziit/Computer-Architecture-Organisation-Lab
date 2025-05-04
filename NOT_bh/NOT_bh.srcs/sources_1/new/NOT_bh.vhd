----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.05.2025 00:12:43
-- Design Name: 
-- Module Name: NOT_bh - Behavioral
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

entity NOT_bh is
    Port ( x : in STD_LOGIC;
           y : out STD_LOGIC);
end NOT_bh;

architecture Behavioral of NOT_bh is

begin
process(x)
begin
if(x = '0') then
y <= '1';
else
y <= '0';
end if;
end process;
end Behavioral;
