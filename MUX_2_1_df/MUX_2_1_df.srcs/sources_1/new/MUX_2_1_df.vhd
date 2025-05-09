----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2025 21:03:32
-- Design Name: 
-- Module Name: MUX_2_1_df - dataflow
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

entity MUX_2_1_df is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           sel : in STD_LOGIC;
           z : out STD_LOGIC);
end MUX_2_1_df;

architecture dataflow of MUX_2_1_df is

begin
z <= ((NOT sel) AND x) OR (sel AND y);
end dataflow;
