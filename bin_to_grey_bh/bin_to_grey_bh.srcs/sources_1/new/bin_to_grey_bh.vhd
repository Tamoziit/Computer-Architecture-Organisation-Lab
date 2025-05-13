----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 14:26:26
-- Design Name: 
-- Module Name: bin_to_grey_bh - Behavioral
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

entity bin_to_grey_bh is
    Port ( B : in STD_LOGIC_VECTOR (2 downto 0);
           G : out STD_LOGIC_VECTOR (2 downto 0));
end bin_to_grey_bh;

architecture Behavioral of bin_to_grey_bh is

begin
process(B)
begin
G(2) <= B(2);
if(B(2) = '0') then
G(1) <= B(1);
else
G(1) <= NOT B(1);
end if;
if(B(1) = B(0)) then
G(0) <= '0';
else
G(0) <= '1';
end if;
end process;
end Behavioral;
