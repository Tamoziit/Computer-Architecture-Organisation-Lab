----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 20:50:42
-- Design Name: 
-- Module Name: Comparator_4bit_LG_df - dataflow
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

entity Comparator_4bit_LG_df is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           eq : out STD_LOGIC;
           lt : out STD_LOGIC;
           gt : out STD_LOGIC);
end Comparator_4bit_LG_df;

architecture dataflow of Comparator_4bit_LG_df is

signal E: STD_LOGIC_VECTOR (3 downto 0);
signal G: STD_LOGIC_VECTOR (3 downto 0);
signal L: STD_LOGIC_VECTOR (3 downto 0);

begin
-- A = B
E(3) <= NOT (A(3) XOR B(3));
E(2) <= NOT (A(2) XOR B(2));
E(1) <= NOT (A(1) XOR B(1));
E(0) <= NOT (A(0) XOR B(0));
eq <= E(3) AND E(2) AND E(1) AND E(0);

-- A < B
L(3) <= (NOT A(3)) AND B(3);
L(2) <= E(3) AND ((NOT A(2)) AND B(2));
L(1) <= E(3) AND E(2) AND ((NOT A(1)) AND B(1));
L(0) <= E(3) AND E(2) AND E(1) AND ((NOT A(0)) AND B(0));
lt <= L(3) OR L(2) OR L(1) OR L(0);

-- A > B
G(3) <= A(3) AND (NOT B(3));
G(2) <= E(3) AND (A(2) AND (NOT B(2)));
G(1) <= E(3) AND E(2) AND (A(1) AND (NOT B(1)));
G(0) <= E(3) AND E(2) AND E(1) AND (A(0) AND (NOT B(0)));
gt <= G(3) OR G(2) OR G(1) OR G(0);
end dataflow;
