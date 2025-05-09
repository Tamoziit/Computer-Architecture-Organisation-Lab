----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2025 22:56:45
-- Design Name: 
-- Module Name: Decoder_3_8_bh - Behavioral
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

entity Decoder_3_8_bh is
    Port ( IP : in STD_LOGIC_VECTOR (2 downto 0);
           OP : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3_8_bh;

architecture Behavioral of Decoder_3_8_bh is

begin
process(IP)
begin
OP <= "00000000";
case IP is
when "000" => OP(0) <= '1';
when "001" => OP(1) <= '1';
when "010" => OP(2) <= '1';
when "011" => OP(3) <= '1';
when "100" => OP(4) <= '1';
when "101" => OP(5) <= '1';
when "110" => OP(6) <= '1';
when "111" => OP(7) <= '1';
when others => null;
end case;
end process;
end Behavioral;
