procedure CalcAck(var Ack:natural; m,n:natural);
	label 1,2,3,4;
	var s:stack of <natural,natural,1..4>;
		1:1..4;
	begin
	clear s;
1:if m=0 then Ack := n + 1
	else if n = 0 then
		begin
		push <m,n,2> onto s;
		m := m-1;
		n :=1;
		goto 1;
	2:end
	else
		begin
		push <m,n,3> onto s;
		n := n-1;
		goto 1;
	3:push <m,n,3> onto s;
		m := m-1;
		n := Ack;
		goto 1;
	4:end;
	if s not empty then 
		begin
		pop <m,n,1> from s;
		case 1 of
		1: goto 1;
		2: goto 1;
		3: goto 3;
		4: goto 4;
		end {of cases on "1"}
		end
	end{ of procedure "CalcAck" } ;