----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 13:49:57
-- Design Name: 
-- Module Name: bin_to_gray_df - dataflow
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

entity bin_to_gray_df is
    Port ( B : in STD_LOGIC_VECTOR (2 downto 0);
           G : out STD_LOGIC_VECTOR (2 downto 0));
end bin_to_gray_df;

architecture dataflow of bin_to_gray_df is

begin
G(2) <= B(2);
G(1) <= B(2) XOR B(1);
G(0) <= B(1) XOR B(0);
end dataflow;
