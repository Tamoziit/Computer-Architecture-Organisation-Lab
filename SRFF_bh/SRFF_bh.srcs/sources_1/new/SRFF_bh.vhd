----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2025 00:44:15
-- Design Name: 
-- Module Name: SRFF_bh - Behavioral
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

entity SRFF_bh is
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC;
           QN : out STD_LOGIC);
end SRFF_bh;

architecture Behavioral of SRFF_bh is

begin
process(S, R, CLK)
begin
if(CLK'event AND CLK = '1') then
if(S = '0' AND R = '1') then
Q <= '0';
QN <= '1';
elsif(S = '1' AND R = '0') then
Q <= '1';
QN <= '0';
elsif(S = '1' AND R = '1') then
Q <= 'X';
QN <= 'X';
end if;
end if;
end process;
end Behavioral;
