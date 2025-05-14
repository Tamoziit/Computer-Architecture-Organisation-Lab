----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 09:31:09
-- Design Name: 
-- Module Name: AND_OR_XOR_4bit_st - Structural
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

entity AND_OR_XOR_4bit_st is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           X : out STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0);
           Z : out STD_LOGIC_VECTOR (3 downto 0));
end AND_OR_XOR_4bit_st;

architecture Structural of AND_OR_XOR_4bit_st is

component AND_df is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : out STD_LOGIC);
end component;

component OR_df is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : out STD_LOGIC);
end component;

component XOR_df is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : out STD_LOGIC);
end component;

begin
L1_AND: AND_df Port Map(A(0), B(0), X(0));
L2_AND: AND_df Port Map(A(1), B(1), X(1));
L3_AND: AND_df Port Map(A(2), B(2), X(2));
L4_AND: AND_df Port Map(A(3), B(3), X(3));

L1_OR: OR_df Port Map(A(0), B(0), Y(0));
L2_OR: OR_df Port Map(A(1), B(1), Y(1));
L3_OR: OR_df Port Map(A(2), B(2), Y(2));
L4_OR: OR_df Port Map(A(3), B(3), Y(3));

L1_XOR: XOR_df Port Map(A(0), B(0), Z(0));
L2_XOR: XOR_df Port Map(A(1), B(1), Z(1));
L3_XOR: XOR_df Port Map(A(2), B(2), Z(2));
L4_XOR: XOR_df Port Map(A(3), B(3), Z(3));
end Structural;
