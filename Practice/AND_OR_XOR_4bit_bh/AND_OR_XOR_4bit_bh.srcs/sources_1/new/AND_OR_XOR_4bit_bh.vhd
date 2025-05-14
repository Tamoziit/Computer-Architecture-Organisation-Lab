----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 08:58:25
-- Design Name: 
-- Module Name: AND_OR_XOR_4bit_bh - Behavioral
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

entity AND_OR_XOR_4bit_bh is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           X : out STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0);
           Z : out STD_LOGIC_VECTOR (3 downto 0));
end AND_OR_XOR_4bit_bh;

architecture Behavioral of AND_OR_XOR_4bit_bh is

begin
process(A, B)
begin
-- AND
for i in 0 to 3 loop
if(A(i) = '0' OR B(i) = '0') then
X(i) <= '0';
else
X(i) <= '1';
end if;
end loop;

-- OR
for i in 0 to 3 loop
if(A(i) = '0' AND B(i) = '0') then
Y(i) <= '0';
else
Y(i) <= '1';
end if;
end loop;

-- XOR
for i in 0 to 3 loop
if(A(i) = B(i)) then
Z(i) <= '0';
else
Z(i) <= '1';
end if;
end loop;
end process;
end Behavioral;
