library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--The IEEE.std_logic_unsigned contains definitions that allow 
--std_logic_vector types to be used with the + operator to instantiate a 
--counter.
use IEEE.std_logic_unsigned.all;

entity tb is
    Port ( SW 			: in  STD_LOGIC_VECTOR (15 downto 0);
           BTN 			: in  STD_LOGIC_VECTOR (4 downto 0);
           CLK 			: in  STD_LOGIC;
           LED 			: out  STD_LOGIC_VECTOR (15 downto 0);
           SSEG_CA 		: out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG_AN 		: out  STD_LOGIC_VECTOR (3 downto 0);
           UART_TXD 	: out  STD_LOGIC;
           VGA_RED      : out  STD_LOGIC_VECTOR (3 downto 0);
           VGA_BLUE     : out  STD_LOGIC_VECTOR (3 downto 0);
           VGA_GREEN    : out  STD_LOGIC_VECTOR (3 downto 0);
           VGA_VS       : out  STD_LOGIC;
           VGA_HS       : out  STD_LOGIC;
           PS2_CLK      : inout STD_LOGIC;
           PS2_DATA     : inout STD_LOGIC
		);
end tb;

architecture Behavioral of tb is

component ARM_alu_gold
	port (
		operand1 : in std_logic_vector (31 downto 0);
		operand2 : in std_logic_vector (31 downto 0);
		result : out std_logic_vector (31 downto 0);
		instruction : in std_logic_vector (31 downto 0);
		N_in, Z_in, C_in, V_in, shifter_carry : in std_logic;
		next_N, next_Z, next_C, next_V : out std_logic;
		predicate : out std_logic
	);
end component;

component ARM_alu
	port (
		operand1 : in std_logic_vector (31 downto 0);
		operand2 : in std_logic_vector (31 downto 0);
		result : out std_logic_vector (31 downto 0);
		instruction : in std_logic_vector (31 downto 0);
		N_in, Z_in, C_in, V_in, shifter_carry : in std_logic;
		next_N, next_Z, next_C, next_V : out std_logic;
		predicate : out std_logic
	);
end component;

--component debouncer
--Generic(
--        DEBNC_CLOCKS : integer;
--        PORT_WIDTH : integer);
--Port(
--		SIGNAL_I : in std_logic_vector(4 downto 0);
--		CLK_I : in std_logic;          
--		SIGNAL_O : out std_logic_vector(4 downto 0)
--		);
--end component;

component rng_xoroshiro128plus 
    generic (
        -- Default seed value.
        init_seed:  std_logic_vector(127 downto 0) );
    port (
        -- Clock, rising edge active.
        clk:        in  std_logic;
        -- Synchronous reset, active high.
        rst:        in  std_logic;
        -- High to request re-seeding of the generator.
        reseed:     in  std_logic;
        -- New seed value (must be valid when reseed = '1').
        newseed:    in  std_logic_vector(127 downto 0);
        -- High when the user accepts the current random data word
        -- and requests new random data for the next clock cycle.
        out_ready:  in  std_logic;
        -- High when valid random data is available on the output.
        -- This signal is low during the first clock cycle after reset and
        -- after re-seeding, and high in all other cases.
        out_valid:  out std_logic;
        -- Random output data (valid when out_valid = '1').
        -- A new random word appears after every rising clock edge
        -- where out_ready = '1'.
        out_data:   out std_logic_vector(63 downto 0) );
end component;

constant TMR_CNTR_MAX : std_logic_vector(26 downto 0) := "101111101011110000100000000"; --100,000,000 = clk cycles per second
constant TMR_VAL_MAX : std_logic_vector(3 downto 0) := "1001"; --9

constant RESET_CNTR_MAX : std_logic_vector(17 downto 0) := "110000110101000000";-- 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms

constant MAX_STR_LEN : integer := 27;

constant WELCOME_STR_LEN : natural := 27;
constant BTN_STR_LEN : natural := 24;

--This is used to determine when the 7-segment display should be
--incremented
signal tmrCntr : std_logic_vector(26 downto 0) := (others => '0');

--This counter keeps track of which number is currently being displayed
--on the 7-segment.
signal tmrVal : std_logic_vector(3 downto 0) := (others => '0');

--Used to determine when a button press has occured
signal btnReg : std_logic_vector (3 downto 0) := "0000";
signal btnDetect : std_logic;

--Debounced btn signals used to prevent single button presses
--from being interpreted as multiple button presses.
signal btnDeBnc : std_logic_vector(4 downto 0);

signal clk_cntr_reg : std_logic_vector (4 downto 0) := (others=>'0'); 

--this counter counts the amount of time paused in the UART reset state
signal reset_cntr : std_logic_vector (17 downto 0) := (others=>'0');

signal op1_golden: std_logic_vector(31 downto 0);
signal op2_golden: std_logic_vector(31 downto 0);
signal res_golden: std_logic_vector(31 downto 0);
signal instr_golden: std_logic_vector(31 downto 0);
signal N_in_golden: std_logic;
signal Z_in_golden: std_logic;
signal C_in_golden: std_logic;
signal V_in_golden: std_logic;
signal next_N_golden: std_logic;
signal next_Z_golden: std_logic;
signal next_C_golden: std_logic;
signal next_V_golden: std_logic;
signal predicate_golden: std_logic;
signal shifter_carry_golden: std_logic;

signal op1_actual: std_logic_vector(31 downto 0);
signal op2_actual: std_logic_vector(31 downto 0);
signal res_actual: std_logic_vector(31 downto 0);
signal instr_actual: std_logic_vector(31 downto 0);
signal N_in_actual: std_logic;
signal Z_in_actual: std_logic;
signal C_in_actual: std_logic;
signal V_in_actual: std_logic;
signal next_N_actual: std_logic;
signal next_Z_actual: std_logic;
signal next_C_actual: std_logic;
signal next_V_actual: std_logic;
signal predicate_actual: std_logic;
signal shifter_carry_actual: std_logic;
signal instr_temp: std_logic_vector(31 downto 0);

type TM_list is (TM_DONE, TM_NULL, TM_ADD, TM_SUB, TM_RSB, TM_ADC, TM_SBC, TM_RSC,
                 TM_AND, TM_ORR, TM_EOR, TM_BIC,
                 TM_CMP, TM_CMN, TM_TEQ, TM_TST,
                 TM_MOV, TM_MVN,
                 TM_B, TM_BL,
                 TM_LDR, TM_STR,
                 TM_RANDOM);
signal test_mode: TM_list;
signal error_signal : std_logic;
signal error_count : std_logic_vector(31 downto 0);
signal marks : std_logic_vector(31 downto 0);
signal total_count : std_logic_vector(31 downto 0);
signal test_num: std_logic_vector(3 downto 0);
signal prng_data: std_logic_vector(63 downto 0);
signal an_bit0: std_logic;
signal ssd_signal: std_logic_vector(3 downto 0);
signal test_done: std_logic;

begin

--assignment of golden signals
op1_golden <= prng_data(31 downto 0);
op2_golden <= prng_data(63 downto 32);
N_in_golden <= prng_data(5);
Z_in_golden <= prng_data(19);
C_in_golden <= prng_data(30);
V_in_golden <= prng_data(26);
shifter_carry_golden <= prng_data(53);

--assignment of actual signals
op1_actual <= prng_data(31 downto 0);
op2_actual <= prng_data(63 downto 32);
N_in_actual <= prng_data(5);
Z_in_actual <= prng_data(19);
C_in_actual <= prng_data(30);
V_in_actual <= prng_data(26);
shifter_carry_actual <= prng_data(53);

with prng_data(41 downto 38) select
    instr_temp <= "0000" & prng_data(37 downto 10) when "1111",     --handle 1111 as condition flags
                   prng_data(41 downto 10)  when others; 

--instr_temp <= prng_data(41 downto 10);

--golden instance 
ARM_alu_golden: ARM_alu_gold 
    port map(
		operand1 => op1_golden,
		operand2 => op2_golden,
		result => res_golden,
		instruction => instr_golden,
		N_in => N_in_golden,
		Z_in => Z_in_golden,
		C_in => C_in_golden,
		V_in => V_in_golden,
		shifter_carry  => shifter_carry_golden,
		next_N => next_N_golden,
		next_Z => next_Z_golden,
		next_C => next_C_golden,
		next_V => next_V_golden,
		predicate => predicate_golden
	);

--actual instance 	
ARM_alu_actual: ARM_alu 
    port map(
        operand1 => op1_actual,
        operand2 => op2_actual,
        result => res_actual,
        instruction => instr_actual,
        N_in => N_in_actual,
        Z_in => Z_in_actual,
        C_in => C_in_actual,
        V_in => V_in_actual,
        shifter_carry  => shifter_carry_actual,
        next_N => next_N_actual,
        next_Z => next_Z_actual,
        next_C => next_C_actual,
        next_V => next_V_actual,
        predicate => predicate_actual
    );	

--assign proper instruction as per the mode selected                          
with test_mode select
            instr_golden <= instr_temp(31 downto 28) & "00" & instr_temp(25) & "0000" & instr_temp(20 downto 0) when TM_AND,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "0001" & instr_temp(20 downto 0) when TM_EOR,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "0010" & instr_temp(20 downto 0) when TM_SUB,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "0011" & instr_temp(20 downto 0) when TM_RSB,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "0100" & instr_temp(20 downto 0) when TM_ADD,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "0101" & instr_temp(20 downto 0) when TM_ADC,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "0110" & instr_temp(20 downto 0) when TM_SBC,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "0111" & instr_temp(20 downto 0) when TM_RSC,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "10001" & instr_temp(19 downto 0) when TM_TST,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "10011" & instr_temp(19 downto 0) when TM_TEQ,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "10101" & instr_temp(19 downto 0) when TM_CMP,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "10111" & instr_temp(19 downto 0) when TM_CMN,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "1100" & instr_temp(20 downto 0) when TM_ORR,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "1101" & instr_temp(20 downto 0) when TM_MOV,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "1110" & instr_temp(20 downto 0) when TM_BIC,
                            instr_temp(31 downto 28) & "00" & instr_temp(25) & "1111" & instr_temp(20 downto 0) when TM_MVN,
                            instr_temp(31 downto 28) & "01" & instr_temp(25 downto 21) & '1' & instr_temp(19 downto 0) when TM_LDR,
                            instr_temp(31 downto 28) & "01" & instr_temp(25 downto 21) & '0' & instr_temp(19 downto 0) when TM_STR,
                            instr_temp(31 downto 28) & "1010" & instr_temp(23 downto 0) when TM_B,
                            instr_temp(31 downto 28) & "1011" & instr_temp(23 downto 0) when TM_BL,
                            prng_data(41 downto 10) when TM_RANDOM,                     --take random values directly
                            instr_temp when others;

instr_actual <= instr_golden;                                                      

----cycling through multiple test for same testmode 
ptest: process (CLK, BTN(4)) begin
if (BTN(4) = '1') then      --using BTN(4) as reset
    test_num <= "0000"; 
elsif (CLK'event and CLK = '1') then
    if (test_num = "0110") then
        test_num <= "0000";
    else
        test_num <= test_num+1;
    end if;                     
end if;
end  process;

----cycling through multiple instructions 
ptest_fsm: process (CLK, BTN(4)) begin
if (BTN(4) = '1') then      --using BTN(4) as reset
    test_done <= '0'; 
    test_mode <= TM_NULL;
elsif (CLK'event and CLK = '1' and test_done = '0') then
    case test_mode is
        when TM_NULL =>
            --if (test_num = "0000") then 
                test_mode <= TM_ADD;
            --end if;
        when TM_ADD => 
            if (test_num = "0000") then 
                test_mode <= TM_SUB;
            end if;
        when TM_SUB => 
            if (test_num = "0000") then 
                test_mode <= TM_RSB;
            end if;              
        when TM_RSB => 
            if (test_num = "0000") then 
                test_mode <= TM_ADC;
            end if;    
        when TM_ADC => 
            if (test_num = "0000") then 
                test_mode <= TM_SBC;
            end if;      
        when TM_SBC => 
            if (test_num = "0000") then 
                test_mode <= TM_RSC;
            end if; 
        when TM_RSC => 
            if (test_num = "0000") then 
                test_mode <= TM_AND;
            end if; 
        when TM_AND => 
            if (test_num = "0000") then 
                test_mode <= TM_ORR;
            end if; 
        when TM_ORR => 
            if (test_num = "0000") then 
                test_mode <= TM_EOR;
            end if; 
        when TM_EOR => 
            if (test_num = "0000") then 
                test_mode <= TM_BIC;
            end if;         
        when TM_BIC => 
            if (test_num = "0000") then 
                test_mode <= TM_CMP;
            end if;                                                    
        when TM_CMP => 
            if (test_num = "0000") then 
                test_mode <= TM_CMN;
            end if;            
        when TM_CMN => 
            if (test_num = "0000") then 
                test_mode <= TM_TEQ;
            end if;    
        when TM_TEQ => 
            if (test_num = "0000") then 
                test_mode <= TM_TST;
            end if;   
        when TM_TST => 
            if (test_num = "0000") then 
                test_mode <= TM_MOV;
            end if;   
        when TM_MOV => 
            if (test_num = "0000") then 
                test_mode <= TM_MVN;
            end if;   
        when TM_MVN => 
            if (test_num = "0000") then 
                test_mode <= TM_B;
            end if;   
        when TM_B => 
            if (test_num = "0000") then 
                test_mode <= TM_BL;
            end if;  
        when TM_BL => 
            if (test_num = "0000") then 
                test_mode <= TM_LDR;
            end if;
        when TM_LDR => 
            if (test_num = "0000") then 
                test_mode <= TM_STR;
            end if;
        when TM_STR => 
            if (test_num = "0000") then 
                test_mode <= TM_RANDOM;
            end if;
        when TM_RANDOM => 
            if (test_num = "0000") then 
                test_mode <= TM_DONE;
                test_done <= '1';  
            end if;
        when others => 
            test_mode <= TM_DONE;                    
    end case;                           
end if;
end  process;

--match the golden outputs with actual ones and assert error signal accordingly
pcompare: process (CLK) begin
--error_signal <= '0';
if (CLK'event and CLK = '1') then
error_signal <= '0';
  if(test_done = '0') then
    if ((res_actual /= res_golden) or
        (next_N_actual /= next_N_golden) or
        (next_Z_actual /= next_Z_golden) or  
        (next_C_actual /= next_C_golden) or  
        (next_V_actual /= next_V_golden) or
        (predicate_actual /= predicate_golden)) then    
        error_signal <= '1';
    end if;
  end if;
end if;
end process;

--error counter maintanence
perror_count: process(CLK, BTN(4)) 
--variable count:std_logic_vector(31 downto 0);
begin
if (BTN(4) = '1') then
  --  count := (others => '0');
    error_count <= (others => '0');
    total_count <= (others => '0');
elsif (CLK'event and CLK = '1') then
    if(test_done = '0') then
        total_count <= total_count + 1;
    end if;
    if(error_signal = '1') then
    --    count := error_count;
      --  if (count /= X"00000050") then 
      --      count := count+1; 
      --  end if;
       error_count <= error_count + 1;
        report "Error counter updated by 1";
    end if;
end if;   
end process;

pmarks: process(CLK, BTN(4)) 
--variable count:std_logic_vector(31 downto 0);
begin
if (BTN(4) = '1') then
  --  count := (others => '0');
    marks <= X"00000075";
elsif (CLK'event and CLK = '1') then
    if(error_count(0) = '1' and (error_signal = '1')) then      --implement divide by 2
        if (marks(3 downto 0) = "0000") then
            marks(3 downto 0) <= "1001";
            marks(7 downto 4) <= marks(7 downto 4) - 1;
        else
            marks(3 downto 0) <= marks(3 downto 0) - 1;
        end if; 
        report "Marks decreased by 1";
    end if;
end if;   
end process;


--PRNG for generating random operands
PRNG: rng_xoroshiro128plus 
    generic map(
        -- Default seed value.
        init_seed =>  x"0123456789abcdef3141592653589793" )
    port map (
        clk => CLK,
        rst => BTN(4),         --active high reset
        reseed => '0',
        newseed =>  (others => '1'),
        out_ready => '1',
        out_valid => open,
        out_data => prng_data
    );        

--This select statement encodes the value of error_count to the necessary
--cathode signals to display it on the 7-segment

with an_bit0 select
    ssd_signal <= marks(7 downto 4)    when '0',
                  --error_count(3 downto 0)    when '1',
                  marks(3 downto 0)    when others;      

with ssd_signal select
	SSEG_CA <= "11000000" when "0000",
				  "11111001" when "0001",
				  "10100100" when "0010",
				  "10110000" when "0011",
				  "10011001" when "0100",
				  "10010010" when "0101",
				  "10000010" when "0110",
				  "11111000" when "0111",
				  "10000000" when "1000",
				  "10010000" when "1001",
				  "11111111" when others;
				  				  
--seven segment anode control
  pssd_anode: process(CLK, BTN(4)) begin
  if (BTN(4) = '1') then
      an_bit0 <= '0';
  elsif ((CLK'event and CLK = '1')) then
    if (tmrCntr(16 downto 0) = TMR_CNTR_MAX(16 downto 0)) then
 --   elsif (CLK'event and CLK = '1') then
      an_bit0 <= not an_bit0;
     end if;
  end if;   
  end process;		
  		  
with an_bit0 select
    SSEG_AN(3 downto 0) <= "1101"    when '0',
                           "1110"             when others;

with BTN(4) select
           LED <= marks(7 downto 0) & SW(7 downto 1) & test_done     when '0',
                  "0000000000000000" when others;                                         				  
--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------
--below is original code from GPIO example
----------------------------------------------------------
------                LED Control                  -------
----------------------------------------------------------

----------------------------------------------------------
------           7-Seg Display Control             -------
----------------------------------------------------------
--Digits are incremented every second, and are blanked in
--response to button presses.

--This process controls the counter that triggers the 7-segment
--to be incremented. It counts 100,000,000 and then resets.		  
timer_counter_process : process (CLK)
begin
	if (rising_edge(CLK)) then
		if ((tmrCntr = TMR_CNTR_MAX) or (BTN(4) = '1')) then
			tmrCntr <= (others => '0');
		else
			tmrCntr <= tmrCntr + 1;
		end if;
	end if;
end process;

--This process increments the digit being displayed on the 
--7-segment display every second.
timer_inc_process : process (CLK)
begin
	if (rising_edge(CLK)) then
		if (BTN(4) = '1') then
			tmrVal <= (others => '0');
		elsif (tmrCntr = TMR_CNTR_MAX) then
			if (tmrVal = TMR_VAL_MAX) then
				tmrVal <= (others => '0');
			else
				tmrVal <= tmrVal + 1;
			end if;
		end if;
	end if;
end process;

--drive unused pins to 0
UART_TXD <= '0';
VGA_HS <= '0';
VGA_VS <= '0';
VGA_RED <= (others => '0');
VGA_BLUE <= (others => '0');
VGA_GREEN <= (others => '0');
PS2_CLK <= '0';
PS2_DATA <= '0';

end Behavioral;
