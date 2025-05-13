----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 23:19:29
-- Design Name: 
-- Module Name: MUX_4_1_in21_bh - Behavioral
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

entity MUX_4_1_in21_bh is
    Port ( IP : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC);
end MUX_4_1_in21_bh;

architecture Behavioral of MUX_4_1_in21_bh is

begin
process(IP, Sel)
variable MUX1, MUX2: STD_LOGIC;
begin
if(Sel(0) = '0') then
MUX1 := IP(0);
MUX2 := IP(2);
else
MUX1 := IP(1);
MUX2 := IP(3);
end if;
if(Sel(1) = '0') then
Y <= MUX1;
else
Y <= MUX2;
end if;
end process;
end Behavioral;
