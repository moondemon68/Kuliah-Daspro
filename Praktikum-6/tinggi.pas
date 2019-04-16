//Nama		: Morgen Sudyanto
//NIM		: 16518380
//Tanggal	: 10 April 2019

program tinggi;

var
	below,above,maha:integer;
	sum,x:real;
begin
	below:=0;
	above:=0;
	sum:=0;
	x:=123;
	while (x<>-999) do
	begin
		readln(x);
		if (x<=150) and (x>=100) then
		begin
			below:=below+1;
		end;
		if (x>=170) and (x<=300) then
		begin
			above:=above+1;
		end;
		if (x>=100) and (x<=300) then
		begin
			maha:=maha+1;
			sum:=sum+x;
		end;
	end;
	if (maha=0) then
	begin
		writeln('Data kosong');
	end
	else
	begin
		writeln(maha);
		writeln(below);
		writeln(above);
		writeln(round(sum/maha));
	end;
end.
