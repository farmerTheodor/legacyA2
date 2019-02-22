package stackADT is
	procedure push(x :in integer; y: in integer);
	procedure pop(x : out integer; y: out integer);
	function stack_is_empty return Boolean;
	procedure stack_top(x : out integer; y: out integer);
	procedure reset_stack;
end stackADT;
