----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 15:08:50
-- Design Name: 
-- Module Name: gray_to_bin_bh - Behavioral
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

entity gray_to_bin_bh is
    Port ( G : in STD_LOGIC_VECTOR (2 downto 0);
           B : inout STD_LOGIC_VECTOR (2 downto 0));
end gray_to_bin_bh;

architecture Behavioral of gray_to_bin_bh is

begin
process(G, B)
begin
B(2) <= G(2);
if(B(2) = '0') then
B(1) <= G(1);
if(G(1) = G(0)) then 
B(0) <= '0';
else
B(0) <= '1';
end if;
else
B(1) <= NOT G(1);
if(G(1) = G(0)) then 
B(0) <= '1';
else
B(0) <= '0';
end if;
end if;
end process;
end Behavioral;
