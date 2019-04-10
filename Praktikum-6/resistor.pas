//Nama		: Morgen Sudyanto
//NIM		: 16518380
//Tanggal	: 10 April 2019

program resistor;

var
	r1,r2,r3,ans:real;
	s:char;
	y:boolean;
begin
	r1:=-1;
	r2:=-1;
	r3:=-1;
	s:='G';
	y:=false;
	while (y=false) do
	begin
		readln(r1);
		readln(r2);
		readln(r3);
		readln(s);
		if (r1<=0) or (r2<=0) or (r3<=0) or (not((s='S') or (s='s') or (s='P') or (s='p'))) then
		begin
			writeln('Masukan salah');
		end
		else
		begin
			y:=true;
		end;
	end;
	if (s='S') or (s='s') then
	begin
		ans:=r1+r2+r3;
		writeln(ans:0:2);
	end
	else
	begin
		ans:=(r1*r2*r3)/(r1*r2+r2*r3+r1*r3);
		writeln(ans:0:2);
	end;
end.
