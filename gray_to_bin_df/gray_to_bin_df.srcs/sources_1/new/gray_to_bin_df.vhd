----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 14:43:11
-- Design Name: 
-- Module Name: gray_to_bin_df - dataflow
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

entity gray_to_bin_df is
    Port ( G : in STD_LOGIC_VECTOR (2 downto 0);
           B : inout STD_LOGIC_VECTOR (2 downto 0));
end gray_to_bin_df;

architecture dataflow of gray_to_bin_df is

begin
B(2) <= G(2);
B(1) <= B(2) XOR G(1);
B(0) <= B(1) XOR G(0);
end dataflow;
