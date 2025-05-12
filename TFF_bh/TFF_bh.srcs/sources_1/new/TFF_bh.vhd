----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2025 10:56:16
-- Design Name: 
-- Module Name: TFF_bh - Behavioral
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

entity TFF_bh is
    Port ( T : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end TFF_bh;

architecture Behavioral of TFF_bh is

signal temp : STD_LOGIC := '0';

begin
process(T, CLK)
begin
if(CLK'event AND CLK = '1') then
if(T = '0') then
temp <= temp;
else
temp <= NOT temp;
end if;
end if;
Q <= temp;
end process;
end Behavioral;
