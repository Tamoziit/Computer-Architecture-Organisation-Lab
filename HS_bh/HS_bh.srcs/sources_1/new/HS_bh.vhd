----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 17:39:14
-- Design Name: 
-- Module Name: HS_bh - Behavioral
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

entity HS_bh is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           D : out STD_LOGIC;
           B : out STD_LOGIC);
end HS_bh;

architecture Behavioral of HS_bh is

begin
process(X, Y)
begin
if(X = Y) then
D <= '0';
else
D <= '1';
end if;
if(X = '0' AND Y = '1') then
B <= '1';
else
B <= '0';
end if;
end process;
end Behavioral;
