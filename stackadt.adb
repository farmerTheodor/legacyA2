with Ada.Text_IO; use Ada.Text_IO;

--memory allocation was a real piece of shit

package body stackADT is
	type Node;
	type nodeAccess is access Node;
	type Node is record
		state : integer := -1;
		next_node : nodeAccess := null;
	end record;
	top : nodeAccess := null;


	procedure push(x :in integer) is
		oldTop : constant nodeAccess := top;
	begin
		top := new Node;
		top.next_node := oldTop;
		top.state := x;
	end push;
	
	function pop return integer is
		oldTop : constant nodeAccess := top;
	begin
		if top = null then
			put_line("stack is empty");
			return -1;
		end if;
		top := oldTop.next_node;
		return oldTop.state;
	end pop;
	
	function stack_is_empty return Boolean is
	begin
		return top = null;
	end stack_is_empty;
	
	function stack_top return integer is
	begin
		if top = null then
			put_line("stack is empty");
		else
			return top.state;
		end if;
		return -1;
	end stack_top;
	
	procedure reset_stack is
	begin
		top := null;
	end reset_stack;
end stackADT;