----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2025 17:09:54
-- Design Name: 
-- Module Name: Complement_2_df_tbw - dataflow
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

entity Complement_2_df_tbw is
--  Port ( );
end Complement_2_df_tbw;

architecture dataflow of Complement_2_df_tbw is

component Complement_2_df is
    Port ( IP : in unsigned (3 downto 0);
           OP : out unsigned (3 downto 0));
end component;

signal IP1 : unsigned (3 downto 0) := "0000";
signal OP1 : unsigned (3 downto 0);

begin
uut: Complement_2_df Port Map(IP => IP1, OP => OP1);
stim_proc: process
begin
wait for 50ns;
IP1 <= "1000";
wait for 50ns;
IP1 <= "1001";
wait for 50ns;
IP1 <= "0110";
wait;
end process;
end dataflow;
