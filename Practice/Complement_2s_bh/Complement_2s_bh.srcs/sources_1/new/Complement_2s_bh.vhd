----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 10:01:05
-- Design Name: 
-- Module Name: Complement_2s_bh - Behavioral
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

entity Complement_2s_bh is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Res : out STD_LOGIC_VECTOR (7 downto 0));
end Complement_2s_bh;

architecture Behavioral of Complement_2s_bh is

begin
process(A, B)
variable B_2s: STD_LOGIC_VECTOR (7 downto 0);
variable B_not: STD_LOGIC_VECTOR (7 downto 0);
variable Temp_Result : STD_LOGIC_VECTOR(7 downto 0);
variable Carry : STD_LOGIC := '1'; -- Starting with 1 to add for 2's complement

begin
--B'
for i in 0 to 7 loop
if(B(i) = '0') then
B_not(i) := '1';
else
B_not(i) := '0';
end if;
end loop;

--2's complement
for i in 0 to 7 loop
if(B_not(i) = '0' AND Carry = '1') then
B_2s(i) := '1';
Carry := '0';
elsif(B_not(i) = '1' AND Carry = '1') then
B_2s(i) := '0';
Carry := '1';
else
B_2s(i) := B_not(i);
end if;
end loop;

--A+(2's comp B) = A - B
Carry := '0'; --Reset Carry
for i in 0 to 7 loop
if(A(i) = '0') then
if(B_2s(i) = Carry) then
Res(i) <= '0';
else
Res(i) <= '1';
end if;
if(B_2s(i) = '0' OR Carry = '0') then
Carry := '0';
else
Carry := '1';
end if;
else
if(B_2s(i) = Carry) then
Res(i) <= '1';
else
Res(i) <= '0';
end if;
if(B_2s(i) = '0' AND Carry = '0') then
Carry := '0';
else
Carry := '1';
end if;
end if;
end loop;
end process;
end Behavioral;
