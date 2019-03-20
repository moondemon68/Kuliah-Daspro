Program air;

var
	t:integer;
	
begin
	readln(t);
	if (t<0) then
		begin
			writeln('PADAT');
		end
	else if (t=0) then
		begin
			writeln('ANTARA PADAT-CAIR');
		end
	else if (t<100) then
		begin
			writeln('CAIR');
		end
	else if (t=100) then
		begin
			writeln('ANTARA CAIR-GAS');
		end
	else if (t>100) then
		begin
			writeln('GAS');
		end;
end.
