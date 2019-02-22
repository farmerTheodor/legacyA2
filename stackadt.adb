with Ada.Text_IO; use Ada.Text_IO;

--memory allocation was a real piece of shit

package body stackADT is
	type Node;
	type nodeAccess is access Node;
	type Node is record
		n : integer := -1;
		m : integer := -1;
		next_node : nodeAccess := null;
	end record;
	top : nodeAccess := null;


	procedure push(x : in integer; y : in integer) is
		oldTop : constant nodeAccess := top;
	begin
		top := new Node;
		top.next_node := oldTop;
		top.n := y;
		top.m := x;
	end push;
	
	procedure pop(x : out integer; y: out integer) is
		oldTop : constant nodeAccess := top;
	begin
		x := -1;
		y := -1;
		if top = null then
			put_line("stack is empty");
		else
			top := oldTop.next_node;
			x := oldTop.m;
			y := oldTop.n;
		end if;
	end pop;
	
	function stack_is_empty return Boolean is
	begin
		return top = null;
	end stack_is_empty;
	
	procedure stack_top(x : out integer; y: out integer) is
	begin
		x := -1;
		y := -1;
		if top = null then
			put_line("stack is empty");
		else
			x := top.m;
			y := top.n;
		end if;
	end stack_top;
	procedure reset_stack is
	begin
		top := null;
	end reset_stack;
end stackADT;