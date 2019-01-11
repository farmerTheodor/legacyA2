with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with stackADT; use stackADT;

package body calcAckermann is
	n : integer := 0;
	state : integer := 1;

	procedure execute_state(m : in integer) is
		
	begin -- execute_state
		n := 0;
	end execute_state;

	procedure calcAckermann(m : in integer; total : out integer) is
	begin -- calcAckermann
		-- thing to talk about stack_is_empty does not require parenthesis
		reset_stack;
		--init state and push state onto stack

		loop
			exit when stack_is_empty;
			execute_state(m);
			state := pop;
			case state is
				when 1 =>
					n:=0;
				when 2 =>
					n:=0;
				when 3 =>
					n:=0;
					
			end case;
			state := determine_state(m,n);
			--pop state
			--check state

			--execute state
			--push state
			
		end loop;
	end calcAckermann;
	
end calcAckermann;