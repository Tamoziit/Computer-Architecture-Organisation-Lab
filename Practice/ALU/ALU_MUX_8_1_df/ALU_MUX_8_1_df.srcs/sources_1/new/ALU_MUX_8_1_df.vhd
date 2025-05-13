----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 01:32:32
-- Design Name: 
-- Module Name: ALU_MUX_8_1_df - dataflow
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

entity ALU_MUX_8_1_df is
    Port ( D0, D1, D2, D3, D4, D5, D6, D7 : in unsigned(3 downto 0);
           Sel : in STD_LOGIC_VECTOR(2 downto 0);
           Res   : out unsigned(3 downto 0));
end ALU_MUX_8_1_df;

architecture dataflow of ALU_MUX_8_1_df is

begin
Res <= D0 when Sel = "000" else
D1 when Sel = "001" else
D2 when Sel = "010" else
D3 when Sel = "011" else
D4 when Sel = "100" else
D5 when Sel = "101" else
D6 when Sel = "110" else
D7;
end dataflow;
