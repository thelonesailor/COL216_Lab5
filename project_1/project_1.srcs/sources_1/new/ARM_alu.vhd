----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2017 01:15:56 PM
-- Design Name: 
-- Module Name: ARM_alu - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ARM_alu is
    Port (
    operand1 : in std_logic_vector (31 downto 0);
    operand2 : in std_logic_vector (31 downto 0);
    result : out std_logic_vector (31 downto 0);
    instruction : in std_logic_vector (31 downto 0);
    N_in, Z_in, C_in, V_in, shifter_carry : in std_logic;
    next_N, next_Z, next_C, next_V : out std_logic;
    predicate : out std_logic );
end ARM_alu;

architecture Behavioral of ARM_alu is
signal o1,o2 : std_logic_vector (31 downto 0);

signal not_sim,sim_not,sim_sim : std_logic_vector (31 downto 0);

signal zero : std_logic_vector (31 downto 0):=(others=>'0');
signal one : std_logic_vector (31 downto 0):="00000000000000000000000000000001";

signal opcode,cond : std_logic_vector (3 downto 0);
signal invalid,predicate2 : std_logic:='0';

signal res,result1,result2,result4: std_logic_vector (31 downto 0):=(others=>'0');

signal control1 : std_logic_vector (2 downto 0);
signal control2 : std_logic_vector (3 downto 0);
     
begin

o1 <= operand1;
o2 <= operand2;

sim_sim <= o1 + o2;
sim_not <= o1 + not o2;
not_sim <= not o1 + o2;


opcode<=instruction(24 downto 21);
with opcode select 
result1<= (o1 and o2) when "0000",
         (o1 xor o2) when "0001",
         sim_not + one when "0010",
         not_sim + one when "0011",
         o1 + o2 when "0100",
         sim_sim + C_in when "0101",
         sim_not + C_in when "0110",
         not_sim + C_in when "0111",
         (o1 and o2) when "1000",
         (o1 xor o2) when "1001",                                                      
         sim_not + one when "1010",
         sim_sim when "1011",         
         (o1 or o2) when "1100",                                                      
         o2 when "1101",                                                      
         o1 and (not o2) when "1110",
         (not o2) when "1111",         
         zero when others;

cond<=instruction(31 downto 28);
with cond select          
predicate2<= Z_in when "0000",
         not Z_in when "0001",
         C_in when "0010",
         not C_in when "0011",
         N_in when "0100",
         not N_in when "0101",
         V_in when "0110",
         not V_in when "0111",
         C_in and (not Z_in) when "1000",
         (not C_in) or Z_in when "1001",                                                      
         not (N_in xor V_in) when "1010",
         N_in xor V_in when "1011",         
         (not Z_in) and (not (N_in xor V_in)) when "1100",                                                      
         Z_in or (N_in xor V_in) when "1101",                                                      
         '1' when "1110",
         '0' when others;
       
         
         
with instruction(23) select 
result2<= sim_sim when '1',
          sim_not + one when '0';


with instruction(21) select 
result4<=o2 when '0',
         sim_sim when '1';   

 
control1<=instruction(27 downto 25); 
control2<=instruction(7 downto 4);
process(control1,control2,operand1,operand2,C_in,V_in,Z_in,N_in,instruction(31 downto 0),result1,result2,result4,invalid,sim_sim)
begin

invalid<='0';

if (control1="001") then res<=result1;
elsif (control1="000") then 

    if (instruction(4)='0') then res<=result1; 
    elsif((instruction(7)='0' and instruction(4)='1' and instruction(11 downto 8)/="1111")) then res<=result1;
    elsif (instruction(27 downto 23)="00000" and instruction(7 downto 4)="1001") then res<=result4;
    elsif (instruction(7)='1' and instruction(4)='1' and instruction(6 downto 5)/="00") then res<=result2;
    else invalid<='1';
    end if;
    
elsif (control1="010")then res<=result2;
elsif (control1="011" and instruction(4)='0')then res<=result2;
elsif (control1="101")then res<=sim_sim;
else invalid<='1';
end if;

if (instruction(31 downto 28)="1111") then invalid<='1';
end if;

end process;


with invalid select
next_V<=(o1(31) and o2(31) and (not res(31))) or (not (o1(31)) and (not o2(31)) and res(31))  when '0',         
            '0' when '1';

with invalid select
next_N<=res(31)  when '0',         
            '0' when '1';

with invalid select
next_C<=( o1(31) and o2(31) ) or ( (o1(31) xor o2(31) xor res(31) ) and (o1(31) or o2(31) ) )  when '0',         
            '0' when '1';

with invalid select
next_Z<=not (or_reduce (res))  when '0',         
            '0' when '1';


with invalid select
predicate<=predicate2 when '0',
            '0' when '1';

with invalid select
result<=res when '0',
            zero when '1';


 
end Behavioral;
