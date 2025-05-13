----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 18:23:13
-- Design Name: 
-- Module Name: FS_bh - Behavioral
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

entity FS_bh is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           D : out STD_LOGIC;
           B : out STD_LOGIC);
end FS_bh;

architecture Behavioral of FS_bh is

begin
process(X, Y, Z)
begin
if(X = '0') then
if(X = Y AND X = Z) then
B <= '0';
else
B <= '1';
end if;
if(Y = Z) then
D <= '0';
else
D <= '1';
end if;
else
if(X = Y AND X = Z) then
B <= '1';
else
B <= '0';
end if;
if(Y = Z) then
D <= '1';
else
D <= '0';
end if;
end if;
end process;
end Behavioral;
