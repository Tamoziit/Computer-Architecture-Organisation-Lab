----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 08:40:12
-- Design Name: 
-- Module Name: MUX_4_1_3sel_bh - Behavioral
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

entity MUX_4_1_3sel_bh is
    Port ( IP : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC);
end MUX_4_1_3sel_bh;

architecture Behavioral of MUX_4_1_3sel_bh is

begin
process(IP, Sel)
begin
case Sel(1 downto 0) is
when "00" => Y <= IP(0);
when "01" => Y <= IP(1);
when "10" => Y <= IP(2);
when "11" => Y <= IP(3);
when others => null;
end case;
end process;
end Behavioral;
