----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 01:14:59
-- Design Name: 
-- Module Name: ALU_SUB_df - dataflow
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

entity ALU_SUB_df is
    Port ( X : in unsigned (3 downto 0);
           Y : in unsigned (3 downto 0);
           Z : out unsigned (3 downto 0));
end ALU_SUB_df;

architecture dataflow of ALU_SUB_df is

begin
Z <= X - Y;
end dataflow;
