----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2025 13:44:28
-- Design Name: 
-- Module Name: ALU_bh - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_bh is
    Port ( A : in unsigned (3 downto 0);
           B : in unsigned (3 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Res : out unsigned (3 downto 0));
end ALU_bh;

architecture Behavioral of ALU_bh is

begin
process(A, B, S)
begin
case S is
when "000" => Res <= A + B;
when "001" => Res <= A - B;
when "010" => Res <= A + 1;
when "011" => Res <= B - 1;
when "100" => Res <= A AND B;
when "101" => Res <= A OR B;
when "110" => Res <= NOT A;
when "111" => Res <= A XOR B;
when others => null;
end case;
end process;
end Behavioral;
