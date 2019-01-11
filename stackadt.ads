package stackADT is
	procedure push(x : in integer);
	function pop return integer;
	function stack_is_empty return Boolean;
	function stack_top return integer;
	procedure reset_stack;
end stackADT;
