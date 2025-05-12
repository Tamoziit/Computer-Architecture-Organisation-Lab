----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2025 01:17:35
-- Design Name: 
-- Module Name: JKFF_bh - Behavioral
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

entity JKFF_bh is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : inout STD_LOGIC;
           QN : inout STD_LOGIC);
end JKFF_bh;

architecture Behavioral of JKFF_bh is

begin
process(J, K, CLK, Q, QN)
begin
if(CLK'event AND CLK = '1') then
if(J = '0' AND K = '1') then
Q <= '0';
QN <= '1';
elsif(J = '1' AND K = '0') then
Q <= '1';
QN <= '0';
elsif(J = '1' AND K = '1') then
Q <= QN;
QN <= Q;
end if;
end if;
end process;
end Behavioral;
