----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2025 21:28:23
-- Design Name: 
-- Module Name: MUX_2_1_bh - Behavioral
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

entity MUX_2_1_bh is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           sel : in STD_LOGIC;
           z : out STD_LOGIC);
end MUX_2_1_bh;

architecture Behavioral of MUX_2_1_bh is

begin
process(sel, x, y)
begin
if(sel = '0') then
z <= x;
else
z <= y;
end if;
end process;
end Behavioral;
