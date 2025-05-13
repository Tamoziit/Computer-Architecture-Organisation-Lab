----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 00:45:04
-- Design Name: 
-- Module Name: MUX_4_1_in21_st - Structural
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

entity MUX_4_1_in21_st is
    Port ( IP : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC);
end MUX_4_1_in21_st;

architecture Structural of MUX_4_1_in21_st is

component MUX_2_1_df is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           sel : in STD_LOGIC;
           z : out STD_LOGIC);
end component;

signal Y1, Y2: STD_LOGIC;

begin
L1: MUX_2_1_df Port Map(IP(0), IP(1), Sel(0), Y1);
L2: MUX_2_1_df Port Map(IP(2), IP(3), Sel(0), Y2);
L3: MUX_2_1_df Port Map(Y1, Y2, Sel(1), Y);
end Structural;
