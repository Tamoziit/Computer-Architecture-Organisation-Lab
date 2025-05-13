----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 16:48:12
-- Design Name: 
-- Module Name: HS_df - dataflow
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

entity HS_df is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           D : out STD_LOGIC;
           B : out STD_LOGIC);
end HS_df;

architecture dataflow of HS_df is

begin
D <= X XOR Y;
B <= (NOT X) AND Y;
end dataflow;
