with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with stackADT; use stackADT;

procedure ackermann is
	state : integer := 1;
begin -- ackermann
	reset_stack;
	push(8);
	push(8);
	push(8);
	push(8);
	push(8);
	push(8);
	loop
		state := pop;
		put(state);
		exit when stack_is_empty;
	end loop;
	
	
end ackermann;
