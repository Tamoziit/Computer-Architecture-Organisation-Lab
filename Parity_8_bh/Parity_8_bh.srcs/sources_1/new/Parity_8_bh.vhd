----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2025 15:30:27
-- Design Name: 
-- Module Name: Parity_8_bh - Behavioral
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

entity Parity_8_bh is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           PO : out STD_LOGIC;
           PE : out STD_LOGIC);
end Parity_8_bh;

architecture Behavioral of Parity_8_bh is

begin
process(A)
Variable temp : STD_LOGIC;
begin
temp := A(0) XOR A(1);
for i in 2 to 7 loop
temp := temp XOR A(i);
end loop;
PO <= temp;
PE <= NOT temp;
end process;
end Behavioral;
