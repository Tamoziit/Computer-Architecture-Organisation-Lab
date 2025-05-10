----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2025 13:21:09
-- Design Name: 
-- Module Name: Comparator_4_bh - Behavioral
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

entity Comparator_4_bh is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           eq : out STD_LOGIC;
           lt : out STD_LOGIC;
           gt : out STD_LOGIC);
end Comparator_4_bh;

architecture Behavioral of Comparator_4_bh is

begin
process(x, y)
begin
if(x = y) then
eq <= '1';
lt <= '0';
gt <= '0';
elsif(x < y) then
eq <= '0';
lt <= '1';
gt <= '0';
else
eq <= '0';
lt <= '0';
gt <= '1';
end if;
end process;
end Behavioral;
