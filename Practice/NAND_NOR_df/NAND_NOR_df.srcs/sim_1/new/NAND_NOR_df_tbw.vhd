----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 21:45:59
-- Design Name: 
-- Module Name: NAND_NOR_df_tbw - dataflow
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

entity NAND_NOR_df_tbw is
--  Port ( );
end NAND_NOR_df_tbw;

architecture dataflow of NAND_NOR_df_tbw is

component NAND_NOR_df is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : out STD_LOGIC);
end component;

signal X1 : STD_LOGIC := '0';
signal Y1 : STD_LOGIC := '0';
signal Z1 : STD_LOGIC;

begin
uut: NAND_NOR_df Port Map(X => X1, Y => Y1, Z => Z1);
stim_proc: process
begin
wait for 50ns;
X1 <= '0';
Y1 <= '0';
wait for 50ns;
X1 <= '0';
Y1 <= '1';
wait for 50ns;
X1 <= '1';
Y1 <= '0';
wait for 50ns;
X1 <= '1';
Y1 <= '1';
wait;
end process;
end dataflow;
